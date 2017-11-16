//
//  DateService.swift
//  Swag
//
//  Created by Harish Chopra on 2017-11-16.
//  Copyright © 2017 Harish Chopra. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title:"SHIRTS", imageName:"shirts.png"),
        Category(title:"HOODIES", imageName:"hoodies.png"),
        Category(title:"HATS", imageName:"hats.png"),
        Category(title:"DIGITAL", imageName:"digital.png"),
    ]
    
    func getCategories()->[Category] {
        return categories
    }
}




















