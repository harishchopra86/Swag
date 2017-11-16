//
//  ViewController.swift
//  Swag
//
//  Created by Harish Chopra on 2017-11-15.
//  Copyright © 2017 Harish Chopra. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var categoryTable:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        print(DataService.instance.getCategories())
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 175
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let cellCategory = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: cellCategory)
            return cell
        }
        return CategoryCell()
    }

}

