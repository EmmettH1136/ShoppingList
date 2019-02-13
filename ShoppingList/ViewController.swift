//
//  ViewController.swift
//  ShoppingList
//
//  Created by Emmett Hasley on 2/8/19.
//  Copyright © 2019 John Heresy High School. All rights reserved.
// Bingo Bongo
import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var newItemTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    var items: [Item] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
        let item1 = Item("Milk", 2)
        let item2 = Item("Eggs", 3)
        items = [item1, item2]
    }

    @IBAction func addNewItemButtonPressed(_ sender: Any) {
        if let newItemName = newItemTextField.text, newItemName != "" {
            let newItem = Item(newItemName, 1)
            items.append(newItem)
            tableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") {
            let currentItemName = items[indexPath.row].name
            cell.textLabel?.text = currentItemName
            return cell
        } else {
            return UITableViewCell()
        }
    }
}

