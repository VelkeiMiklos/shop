//
//  ShopCell.swift
//  shop
//
//  Created by Velkei Miklós on 2017. 10. 16..
//  Copyright © 2017. NeonatCore. All rights reserved.
//

import UIKit

class ShopCell: UITableViewCell {

    @IBOutlet weak var categoryName: UILabel!
    @IBOutlet weak var categoryImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(category: Category){
        categoryName.text = category.categoryName
        categoryImg.image = UIImage(named: category.categoryImage)
    }

}
