//
//  Category.swift
//  Swag
//
//  Created by Harish Chopra on 2017-11-16.
//  Copyright © 2017 Harish Chopra. All rights reserved.
//

import Foundation

struct Category {
    private(set) var title:String!
    private(set) var imageName: String!
   
    init(title:String, imageName:String) {
        self.title = title
        self.imageName = imageName
        
    }
}
