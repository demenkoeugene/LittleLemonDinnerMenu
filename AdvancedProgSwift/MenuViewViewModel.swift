//
//  MenuViewViewModel.swift
//  AdvancedProgSwift
//
//  Created by Eugene Demenko on 18.05.2023.
//


import Foundation


protocol MenuItem {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var ordersCount: Int { get set }
    var ingredient: [Ingredient] { get set }
}



class MenuItemClass: MenuItem, Identifiable {
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

class MenuViewViewModel {
    var foodMenuItems: [MenuItem]
    var drinkMenuItems: [MenuItem]
    var dessertMenuItems: [MenuItem]

    init() {
        foodMenuItems = [
            MenuItemClass(price: 9.99, title: "Cheeseburger", menuCategory: .food, ordersCount: 0, ingredient: [.broccoli, .carrot]),
            MenuItemClass(price: 12.99, title: "Pizza", menuCategory: .food, ordersCount: 0, ingredient: [.spinach, .tomatoSauce]),
            MenuItemClass(price: 6.99, title: "Chicken Sandwich", menuCategory: .food, ordersCount: 0, ingredient: [.pasta, .tomatoSauce]),
            MenuItemClass(price: 8.99, title: "Spaghetti", menuCategory: .food, ordersCount: 0, ingredient: [.carrot, .pasta]),
            MenuItemClass(price: 10.99, title: "Caesar Salad", menuCategory: .food, ordersCount: 0, ingredient: [.spinach, .carrot]),
            MenuItemClass(price: 7.99, title: "Fish and Chips", menuCategory: .food, ordersCount: 0, ingredient: [.spinach, .broccoli]),
            MenuItemClass(price: 5.99, title: "Margarita Pizza", menuCategory: .food, ordersCount: 0, ingredient: [.pasta, .tomatoSauce]),
            MenuItemClass(price: 11.99, title: "Steak", menuCategory: .food, ordersCount: 0, ingredient: [.pasta, .spinach]),
            MenuItemClass(price: 9.99, title: "Grilled Chicken", menuCategory: .food, ordersCount: 0, ingredient: [.tomatoSauce, .carrot]),
            MenuItemClass(price: 8.99, title: "Tacos", menuCategory: .food, ordersCount: 0, ingredient: [.carrot, .tomatoSauce]),
            MenuItemClass(price: 7.99, title: "Sushi", menuCategory: .food, ordersCount: 0, ingredient: [.pasta, .tomatoSauce]),
            MenuItemClass(price: 6.99, title: "Pasta Alfredo", menuCategory: .food, ordersCount: 0, ingredient: [.spinach,.carrot])
        ]
        
        
        drinkMenuItems = [
            MenuItemClass(price: 2.99, title: "Coca-Cola", menuCategory: .drink, ordersCount: 0, ingredient: [.carrot]),
            MenuItemClass(price: 1.99, title: "Lemonade", menuCategory: .drink, ordersCount: 0, ingredient: [.tomatoSauce]),
            MenuItemClass(price: 3.99, title: "Iced Coffee", menuCategory: .drink, ordersCount: 0, ingredient: [.pasta]),
            MenuItemClass(price: 2.49, title: "Orange Juice", menuCategory: .drink, ordersCount: 0, ingredient: [.pasta]),
            MenuItemClass(price: 2.99, title: "Mojito", menuCategory: .drink, ordersCount: 0, ingredient: [.spinach]),
            MenuItemClass(price: 1.99, title: "Water", menuCategory: .drink, ordersCount: 0, ingredient: [.tomatoSauce]),
            MenuItemClass(price: 3.49, title: "Smoothie", menuCategory: .drink, ordersCount: 0, ingredient: [.spinach]),
            MenuItemClass(price: 2.99, title: "Iced Tea", menuCategory: .drink, ordersCount: 0, ingredient: [.broccoli])
        ]
        
        dessertMenuItems = [
            MenuItemClass(price: 4.99, title: "Chocolate Cake", menuCategory: .dessert, ordersCount: 0, ingredient: [.carrot, .spinach, .tomatoSauce]),
            MenuItemClass(price: 3.99, title: "Ice Cream Sundae", menuCategory: .dessert, ordersCount: 0, ingredient: [.carrot, .tomatoSauce]),
            MenuItemClass(price: 2.99, title: "Apple Pie", menuCategory: .dessert, ordersCount: 0, ingredient: [.pasta, .tomatoSauce]),
            MenuItemClass(price: 5.99, title: "Cheesecake", menuCategory: .dessert, ordersCount: 0, ingredient: [.carrot])
        ]
    }
}









