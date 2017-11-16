//
//  CategoryCell.swift
//  Swag
//
//  Created by Harish Chopra on 2017-11-15.
//  Copyright © 2017 Harish Chopra. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
