//
//  AppModel.swift
//  AdvancedProgSwift
//
//  Created by Eugene Demenko on 25.05.2023.
//

import Foundation

protocol MenuItemProtocol {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var ordersCount: Int { get set }
    var ingredient: [Ingredient] { get set }
}



struct MenuItem: MenuItemProtocol, Identifiable {
    var id = UUID()
    var price: Double
    var title: String
    var menuCategory: MenuCategory
    var ordersCount: Int
    var ingredient: [Ingredient]
    
    init(price: Double, title: String, menuCategory: MenuCategory, ordersCount: Int, ingredient: [Ingredient]) {
        self.price = price
        self.title = title
        self.menuCategory = menuCategory
        self.ordersCount = ordersCount
        self.ingredient = ingredient
    }
}
