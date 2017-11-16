//
//  ProductCell.swift
//  Swag
//
//  Created by Harish Chopra on 2017-11-16.
//  Copyright © 2017 Harish Chopra. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage:UIImageView!
    @IBOutlet weak var productTitle:UILabel!
    @IBOutlet weak var productPrice:UILabel!
    
    func updateViews(product:Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
}
