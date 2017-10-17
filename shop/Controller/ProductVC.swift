//
//  ProductVC.swift
//  shop
//
//  Created by Velkei Miklós on 2017. 10. 16..
//  Copyright © 2017. NeonatCore. All rights reserved.
//

import UIKit

class ProductVC: UIViewController,  UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self

    }
    
    func initProduct(category: Category){
        products = DataServices.instance.getProducts(category: category.categoryName)
        navigationItem.title = category.categoryName
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as? ProductCell{
            let product = products[indexPath.row]
            cell.configureCell(product: product)
            return cell
        }else{
            return ProductCell()
        }
    }
    

    



}
