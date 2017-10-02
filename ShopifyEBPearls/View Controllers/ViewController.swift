//
//  ViewController.swift
//  New
//
//  Created by Prashant Sah on 9/14/17.
//  Copyright © 2017 Prashant Sah. All rights reserved.
//

import UIKit
import MobileBuySDK

class ViewController: UIViewController {
    
    var hasNextPage : Bool = true
    var lastProductCursor : String? = nil
    var collectionsCount : Int = 0
    
    @IBOutlet weak var myTableView: UITableView!
    
    var productsArray : [[Storefront.Product]] = [[Storefront.Product]]()
    var collectionsArray : [Storefront.Collection] = [Storefront.Collection]()
    
    //var arrayOfProductsArray : [productsArray] = [productsArray]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.getCollections()
        
        self.myTableView?.dataSource = self
        self.myTableView?.delegate = self
        self.myTableView?.register(UINib(nibName: "CollectionCell", bundle: nil ), forCellReuseIdentifier: "Cell")
        
        //self.myTableView?.estimatedRowHeight = UIScreen.main.bounds.size.width * 0.75 + 150
        //self.myTableView?.rowHeight = UITableViewAutomaticDimension
        
    }
 
}

extension ViewController {
    
    func getCollections() {
        
        let shopNameQuery = Storefront.buildQuery { $0
            .shop { $0
                .name()
                .refundPolicy { $0
                    .title()
                    .url()
                }
            }
        }
        
        Client.shared.giveShopName(withquery: shopNameQuery) { (name) in
            print (name)
        }
        
        
        
        Client.shared.getCollectionsAndProducts(withQuery: ClientQuery.queryForCollections(limit: 10, after: nil, productLimit: 10, productCursor: lastProductCursor)) { (collections) in
            
            if let obtainedCollections = collections {
                self.collectionsCount = obtainedCollections.count
                for collection in obtainedCollections{
                    
                    self.collectionsArray.append(collection)
                    self.lastProductCursor = collection.products.edges.last?.cursor
                    self.hasNextPage = collection.products.pageInfo.hasNextPage
                    print (collection.title)
                    let products = collection.products.edges.map {$0.node}
                    self.productsArray.append(products)
                    for product in products {
                        print ("\t\(product.title)")
                    }
                }
                self.myTableView.reloadData()
            }
        }
        
        /*
         let customerData = CustomerInfo(email: "prashantsah@gmail.com", password: "12345")
         Client.shared.createCustomer(withCustomerData: customerData) { (customer) in
         print(customer.email!)
         print(customer.firstName ?? nil)
         }
         
         Client.shared.customerLogin(withInput: customerData) { (token) in
         print("Login Successfull")
         UserDefaults.standard.set(token, forKey: "UserAccessToken")
         }
         */
        
    }
}




//MARK- UITableViewDataSource functions
extension ViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return collectionsCount
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //print ("CollectionsCount \(collectionsCount)")
        //return collectionsCount
        return 1
    }
    
    // ----------------------------------
    //  MARK: - Titles -
    //
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //return self.collections.items[section].title
        return self.collectionsArray[section].title
    }
    
    
    
    
    /*
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let width  = tableView.bounds.width
        let height = width * 0.75 // 3:4 ratio
        return height + 150.0 // 150 is the height of the product collection
    }
 */
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = myTableView?.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? CollectionCell{
            cell.delegate = self
            cell.configureCell(withCollection: collectionsArray[indexPath.section])
            return cell
        }else{
            return CollectionCell()
        }
    }
 
}

extension ViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let productsVC = self.storyboard?.instantiateViewController(withIdentifier: "ProductsViewController") as? ProductsViewController
        print ("Selected a tableview Cell")
        productsVC?.configureView(withCollection: collectionsArray[indexPath.row])
        self.navigationController?.pushViewController(productsVC!, animated: true)
        
    }
}
extension ViewController : CollectionCellSelectedProtocol {
    
    
    func didSelectCell(withProduct product: Storefront.Product) {
        
        let productDetailsVC = self.storyboard?.instantiateViewController(withIdentifier: "ProductDetailsViewController") as? ProductDetailsViewController
        print ("Selected a collection view cell inside table view cell")
        productDetailsVC?.product = product
        self.navigationController?.pushViewController(productDetailsVC!, animated: true)
        
    }
    
    
}

