//
//  Item.swift
//  ShoppingList
//
//  Created by Emmett Hasley on 2/13/19.
//  Copyright © 2019 John Heresy High School. All rights reserved.
//

import Foundation
class Item {
    var name : String
    var quantity : Int
    init(_ name : String, _ quantity:  Int) {
        self.name = name
        self.quantity = quantity
    }
}
