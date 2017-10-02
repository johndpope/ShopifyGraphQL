//
//  ProductsCell.swift
//  ShopifyEBPearls
//
//  Created by Prashant Sah on 9/25/17.
//  Copyright © 2017 EBPearls. All rights reserved.
//

import UIKit
import MobileBuySDK

class ProductsCell: UICollectionViewCell {
    
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    
    override func draw(_ rect: CGRect) {
        
    }
    
    func configureCell(withProduct product : Storefront.Product ) {

        let productImages = product.images.edges.map { $0.node }
        if let imgURL = productImages.first?.src {

            let imgData = NSData( contentsOf: imgURL)
            self.productImageView.image = UIImage(data: imgData! as Data)
            self.productImageView.contentMode = .scaleAspectFit
        }

        self.productNameLabel.text = product.title
        let productVariants = product.variants.edges.map { $0.node }
        //self.productPriceLabel.text = "\(String(describing: productVariants.first?.price))"
        
    }
}
