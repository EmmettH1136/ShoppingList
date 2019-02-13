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
        let item1 = Item("Milk")
        let item2 = Item("Eggs")
        items = [item1, item2]
    }

    @IBAction func addNewItemButtonPressed(_ sender: Any) {
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = "Hello"
        return cell
    }
}

