//
//  Product.swift
//  shop
//
//  Created by Velkei Miklós on 2017. 10. 16..
//  Copyright © 2017. NeonatCore. All rights reserved.
//

import Foundation
class Product{
    private(set) var productName: String!
    private(set) var productPrice: String!
    private(set) var productImage: String!
    
    init(productName: String, productPrice: String, productImage: String){
        self.productName = productName
        self.productPrice = productPrice
        self.productImage = productImage
    }
    
    
}
