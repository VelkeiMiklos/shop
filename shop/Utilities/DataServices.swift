//
//  DataServices.swift
//  shop
//
//  Created by Velkei Miklós on 2017. 10. 16..
//  Copyright © 2017. NeonatCore. All rights reserved.
//

import Foundation
class DataServices{
    static let instance = DataServices()

    private let category = [
    
        Category(categoryName: "SHIRTS", categoryImage: "shirts.png"),
        Category(categoryName: "HOODIES", categoryImage: "hoodies.png"),
        Category(categoryName: "HATS", categoryImage: "hats.png"),
        Category(categoryName: "DIGITAL", categoryImage: "digital.png")
        
    ]
    
    private let hats = [
    
        Product(productName: "Hat 1", productPrice: "$10", productImage: "hat01.png"),
        Product(productName: "Hat 2", productPrice: "$15", productImage: "hat02.png"),
        Product(productName: "Hat 3", productPrice: "$20", productImage: "hat03.png"),
        Product(productName: "Hat 4", productPrice: "$25", productImage: "hat04.png")
    ]
    
    private let hoodies = [
        
        Product(productName: "Hoodie 1", productPrice: "$10", productImage: "hoodie01.png"),
        Product(productName: "Hoodie 2", productPrice: "$15", productImage: "hoodie02.png"),
        Product(productName: "Hoodie 3", productPrice: "$20", productImage: "hoodie03.png"),
        Product(productName: "Hoodie 4", productPrice: "$25", productImage: "hoodie04.png")
    ]
    
    private let shirt = [
        
        Product(productName: "Shirt 1", productPrice: "$10", productImage: "shirt01.png"),
        Product(productName: "Shirt 2", productPrice: "$15", productImage: "shirt02.png"),
        Product(productName: "Shirt 3", productPrice: "$20", productImage: "shirt03.png"),
        Product(productName: "Shirt 4", productPrice: "$25", productImage: "shirt04.png")
    ]
    private let digitals = [
        Product(productName: "Shirt 1", productPrice: "$10", productImage: "shirt01.png"),
        Product(productName: "Shirt 2", productPrice: "$15", productImage: "shirt02.png"),
    ]
    
    func getCategories()->[Category]{
        return category
    }
    
    func getHats()->[Product]{
        return hats
    }
    
    func getHoodies()->[Product]{
        return hoodies
    }
    func getShirts()->[Product]{
        return shirt
    }
    func getDigitals()->[Product]{
        return digitals
    }
    
    func getProducts(category: String)->[Product]{
        
        switch category {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITALS":
            return getShirts()
        default:
            return getShirts()
        }
        
    }
    
}
