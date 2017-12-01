//
//  Category.swift
//  shop
//
//  Created by Velkei Miklós on 2017. 10. 16..
//  Copyright © 2017. NeonatCore. All rights reserved.
//

import Foundation
struct Category{
    private(set) var categoryName: String!
    private(set) var categoryImage: String!
    
    init(categoryName: String, categoryImage: String){
        self.categoryName = categoryName
        self.categoryImage = categoryImage
    }
    

}
