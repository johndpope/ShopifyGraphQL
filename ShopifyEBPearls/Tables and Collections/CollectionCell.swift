//
//  CollectionCell.swift
//  ShopifyEBPearls
//
//  Created by Prashant Sah on 9/21/17.
//  Copyright © 2017 EBPearls. All rights reserved.
//

import UIKit
import MobileBuySDK

protocol CollectionCellSelectedProtocol : class {
    
    func didSelectCell( withProduct product : Storefront.Product )
}


class CollectionCell: UITableViewCell {
    
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var myCollectionView: UICollectionView!
    var delegate : CollectionCellSelectedProtocol?
    var products : [Storefront.Product]?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.myCollectionView.dataSource = self
        self.myCollectionView.delegate = self
        self.myCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        self.mainImageView.frame.size.height = UIScreen.main.bounds.size.width * 0.75
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func configureCell (withCollection collection : Storefront.Collection ){
        
        products = collection.products.edges.map { $0.node }
        if ((collection.image?.src) != nil){
            let collectionImageData = NSData(contentsOf: (collection.image?.src)!)
            self.mainImageView.image = UIImage(data: collectionImageData! as Data)
        }else{
            self.mainImageView.image = #imageLiteral(resourceName: "No_Image_Available")
        }
        self.mainImageView.contentMode = .scaleAspectFit
        
        print ("No. of products: \(String(describing: products?.count))")
    }
    
}


// -----------------------------------------------
//  MARK: - UICollectionViewDelegateFlowLayout -
//
extension CollectionCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        let length = collectionView.bounds.height - layout.sectionInset.top - layout.sectionInset.bottom
        return CGSize(
            width:  length,
            height: length
        )
    }
}


extension CollectionCell : UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (self.products!.count)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        let productImageView : UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: cell.frame.size.width, height: myCollectionView.frame.size.height))
        let productImages = products![indexPath.row].images.edges.map { $0.node }
        let productImageData = NSData(contentsOf: (productImages.first?.src)!)
        productImageView.image = UIImage(data: productImageData! as Data )
        cell.contentView.addSubview(productImageView)
        productImageView.contentMode = .scaleAspectFit
        
        return cell
        
    }
    
}

extension CollectionCell : UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print ("selected collectionview cell inside tableviewcell")
        self.delegate?.didSelectCell(withProduct: products![indexPath.row])
    }
}

