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
    
    
    private let hats = [
        Product(title: "Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Hat Black, price", price: "$22", imageName: "hat02.png"),
        Product(title: "Hat White", price: "$26", imageName: "hat03.png"),
        Product(title: "Logo Snap Black", price: "$21", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Hoodie gray", price: "$25", imageName: "hoodie01.png"),
        Product(title: "Hoodie red", price: "$28", imageName: "hoodie02.png"),
        Product(title: "Hoodie black", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Hoodie white", price: "$36", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Shirt black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Badge Shirt lighy gray", price: "$28", imageName: "shirt02.png"),
        Product(title: "Shirt Red", price: "$32", imageName: "shirt03.png"),
        Product(title: "Gray shirt", price: "$36", imageName: "shirt04.png"),
        Product(title: "Digital Gray shirt", price: "$40", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getProducts(forCategoryTitle title:String) ->[Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }


    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    
    func getCategories()->[Category] {
        return categories
    }
}




















