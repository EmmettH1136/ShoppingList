//
//  SecondViewController.swift
//  ShoppingList
//
//  Created by mobileapps on 2/14/19.
//  Copyright © 2019 John Heresy High School. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var removeButton: UIButton!
    @IBOutlet weak var label: UILabel!
    var passedItem : Item!
    var passedNumber : Int!
    var didDelete = false
    var numberToDelete : Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = passedItem.name
        label.text = String(passedItem.quantity)

        // Do any additional setup after loading the view.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
