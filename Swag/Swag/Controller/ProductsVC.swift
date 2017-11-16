//
//  ProductsVC.swift
//  Swag
//
//  Created by Harish Chopra on 2017-11-16.
//  Copyright © 2017 Harish Chopra. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
   
    @IBOutlet weak var productCollection:UICollectionView!
  
    private(set) public var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    func initialiseProducts(category:Category)  {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        self.title = category.title

    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        return ProductCell()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
