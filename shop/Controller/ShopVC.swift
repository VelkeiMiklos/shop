//
//  ViewController.swift
//  shop
//
//  Created by Velkei Miklós on 2017. 10. 16..
//  Copyright © 2017. NeonatCore. All rights reserved.
//

import UIKit

class ShopVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataServices.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as? ShopCell{
            let category = DataServices.instance.getCategories()[indexPath.row]
            cell.configureCell(category: category)
            return cell
        }else{
            return ShopCell()
        }
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataServices.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "toProduct", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toProduct"{
            let backItem = UIBarButtonItem()
            backItem.title = ""

            navigationItem.backBarButtonItem = backItem
            
            if let destinationVC = segue.destination as? ProductVC{
                destinationVC.initProduct(category: sender as! Category)
            }
        }
    }
}

