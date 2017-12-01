//
//  RoundedButton.swift
//  shop
//
//  Created by Velkei Miklós on 2017. 12. 01..
//  Copyright © 2017. NeonatCore. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {

    @IBInspectable var cornerRadious: CGFloat = 0.0{
        didSet{
            setupView()
        }
    }
    @IBInspectable var borderWidth: CGFloat = 0.0{
        didSet{
            setupView()
        }
    }
    
    @IBInspectable var borderColor: UIColor?{
        didSet{
            setupView()
        }
    }
    
    
    func setupView(){
        layer.cornerRadius = cornerRadious
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor?.cgColor
    }
    
    override func prepareForInterfaceBuilder() {
        setupView()
    }

}
