//
//  ProductsViewController.swift
//  ShopifyEBPearls
//
//  Created by Prashant Sah on 9/25/17.
//  Copyright © 2017 EBPearls. All rights reserved.
//

import UIKit
import MobileBuySDK

class ProductsViewController: UIViewController {

    @IBOutlet weak var productsCollectionView: UICollectionView!
    var products : [Storefront.Product] = [Storefront.Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.productsCollectionView.dataSource = self
        self.productsCollectionView.delegate = self
        self.productsCollectionView.register(UINib(nibName: "ProductCell", bundle: nil), forCellWithReuseIdentifier: "ProductCell")
        self.productsCollectionView.reloadData()
    }

}

extension ProductsViewController {
    
    func configureView(withCollection collection : Storefront.Collection) {
        
        print ("configuration tried")
        products = collection.products.edges.map { $0.node }
        //self.productsCollectionView.reloadData()
    }
}

extension ProductsViewController : UICollectionViewDataSource {
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = self.productsCollectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductsCell {
            
            cell.configureCell(withProduct: products[indexPath.row])
            
            return cell
        }else {
            return ProductsCell()
        }
    }
    
}


extension ProductsViewController : UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let productDetailsVC = self.storyboard?.instantiateViewController(withIdentifier: "ProductDetailsViewController") as? ProductDetailsViewController
        productDetailsVC?.product = products[indexPath.row]
        self.navigationController?.pushViewController(productDetailsVC!, animated: true)
    }

}

extension ProductsViewController : UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsetsMake(20, 20, 20, 20)
        return CGSize(width: (UIScreen.main.bounds.size.width)/2 - layout.sectionInset.left - layout.sectionInset.right , height: 300)
    }
}

extension ProductsViewController : UIScrollViewDelegate {
    
    func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) {
        
        let endScrolling = scrollView.contentOffset.y + scrollView.frame.size.height;
        
        if (endScrolling >= scrollView.contentSize.height){
            
            //Client.shared.getProducts(inCollection: <#T##Storefront.Collection#>, withQuery: ClientQuery.queryForProducts(in: <#T##Storefront.Collection#>, limit: 5, after: <#T##String?#>), completion: <#T##([Storefront.Product]?) -> ()#>)
        }
    }
}
