//
//  ProductCell.swift
//  shop
//
//  Created by Velkei Miklós on 2017. 10. 16..
//  Copyright © 2017. NeonatCore. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImg: UIImageView!

    @IBOutlet weak var productNameLbl: UILabel!
    @IBOutlet weak var productPriceLbl: UILabel!

    
    func configureCell(product: Product){
        
        productImg.image = UIImage(named: product.productImage)
        productNameLbl.text = product.productName
        productPriceLbl.text = product.productPrice
        
    }
    
}
