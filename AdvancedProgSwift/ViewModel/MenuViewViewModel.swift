//
//  MenuViewViewModel.swift
//  AdvancedProgSwift
//
//  Created by Eugene Demenko on 18.05.2023.
//


import Foundation
import SwiftUI




class MenuViewViewModel: ObservableObject {
    var foodMenuItems: [MenuItem]
    var drinkMenuItems: [MenuItem]
    var dessertMenuItems: [MenuItem]
    

    init() {
        foodMenuItems = [
            MenuItem(price: 9.99, title: "Cheeseburger", menuCategory: .food, ordersCount: 100, ingredient: [.broccoli, .carrot], image: "Cheeseburger"),
            MenuItem(price: 12.99, title: "Pizza", menuCategory: .food, ordersCount: 14, ingredient: [.spinach, .tomatoSauce], image: "Pizza"),
            MenuItem(price: 6.99, title: "Chicken Sandwich", menuCategory: .food, ordersCount: 16, ingredient: [.pasta, .tomatoSauce], image: "Chicken Sandwich"),
            MenuItem(price: 8.99, title: "Spaghetti", menuCategory: .food, ordersCount: 200, ingredient: [.carrot, .pasta], image: "Spaghetti"),
            MenuItem(price: 10.99, title: "Caesar Salad", menuCategory: .food, ordersCount: 23, ingredient: [.spinach, .carrot], image: "Caesar Salad"),
            MenuItem(price: 7.99, title: "Fish and Chips", menuCategory: .food, ordersCount: 145, ingredient: [.spinach, .broccoli], image: "Fish and Chips"),
            MenuItem(price: 5.99, title: "Margarita Pizza", menuCategory: .food, ordersCount: 43, ingredient: [.pasta, .tomatoSauce], image: "Margarita Pizza"),
            MenuItem(price: 11.99, title: "Steak", menuCategory: .food, ordersCount: 65, ingredient: [.pasta, .spinach], image: "Steak"),
            MenuItem(price: 9.99, title: "Grilled Chicken", menuCategory: .food, ordersCount: 54, ingredient: [.tomatoSauce, .carrot], image: "Grilled Chicken"),
            MenuItem(price: 8.99, title: "Tacos", menuCategory: .food, ordersCount: 34, ingredient: [.carrot, .tomatoSauce], image: "Tacos"),
            MenuItem(price: 7.99, title: "Sushi", menuCategory: .food, ordersCount: 23, ingredient: [.pasta, .tomatoSauce], image: "Sushi"),
            MenuItem(price: 6.99, title: "Pasta Alfredo", menuCategory: .food, ordersCount: 456, ingredient: [.spinach,.carrot], image: "Pasta Alfredo")
        ]
        
        drinkMenuItems = [
            MenuItem(price: 2.99, title: "Coca-Cola", menuCategory: .drink, ordersCount: 34, ingredient: [.carrot], image: "Coca-Cola"),
            MenuItem(price: 1.99, title: "Lemonade", menuCategory: .drink, ordersCount: 100, ingredient: [.tomatoSauce], image: "Lemonade"),
            MenuItem(price: 3.99, title: "Iced Coffee", menuCategory: .drink, ordersCount: 34, ingredient: [.pasta], image: "Iced Coffee"),
            MenuItem(price: 2.49, title: "Orange Juice", menuCategory: .drink, ordersCount: 46, ingredient: [.pasta], image: "Orange Juice"),
            MenuItem(price: 2.99, title: "Mojito", menuCategory: .drink, ordersCount: 120, ingredient: [.spinach], image: "Mojito"),
            MenuItem(price: 1.99, title: "Water", menuCategory: .drink, ordersCount: 34, ingredient: [.tomatoSauce], image: "Water"),
            MenuItem(price: 3.49, title: "Smoothie", menuCategory: .drink, ordersCount: 23, ingredient: [.spinach], image: "Smoothie"),
            MenuItem(price: 2.99, title: "Iced Tea", menuCategory: .drink, ordersCount: 345, ingredient: [.broccoli], image: "Iced Tea")
        ]
        
        dessertMenuItems = [
            MenuItem(price: 4.99, title: "Chocolate Cake", menuCategory: .dessert, ordersCount: 343, ingredient: [.carrot, .spinach, .tomatoSauce], image: "Chocolate Cake"),
            MenuItem(price: 3.99, title: "Ice Cream Sundae", menuCategory: .dessert, ordersCount: 45, ingredient: [.carrot, .tomatoSauce], image: "Ice Cream Sundae"),
            MenuItem(price: 2.99, title: "Apple Pie", menuCategory: .dessert, ordersCount: 45, ingredient: [.pasta, .tomatoSauce], image: "Apple Pie"),
            MenuItem(price: 5.99, title: "Cheesecake", menuCategory: .dessert, ordersCount: 36, ingredient: [.carrot], image: "Cheesecake")
        ]
    }
    
    
    
    
    @Published var isShowFood = true
    @Published var isShowDrinks = true
    @Published var isShowDesserts = true
       
    @Published var sortBy = SortOption.alphabetical
    
    func updateMenuItems() {
            switch sortBy {
            case .mostPopular:
                foodMenuItems.sort() { $0.ordersCount > $1.ordersCount }
                drinkMenuItems.sort() { $0.ordersCount > $1.ordersCount }
                dessertMenuItems.sort() { $0.ordersCount > $1.ordersCount }
            case .price:
                foodMenuItems.sort() { $0.price < $1.price }
                drinkMenuItems.sort() { $0.price < $1.price }
                dessertMenuItems.sort() { $0.price < $1.price }
            case .alphabetical:
                foodMenuItems.sort() { sortByTitle(lhs: $0, rhs: $1) }
                drinkMenuItems.sort() { sortByTitle(lhs: $0, rhs: $1) }
                dessertMenuItems.sort() { sortByTitle(lhs: $0, rhs: $1) }
            }
    }
    
    func sortByTitle(lhs: MenuItem, rhs: MenuItem) -> Bool {
        let lhsTitle = lhs.title.split(separator: " ")
        let rhsTitle = rhs.title.split(separator: " ")
        let lhsNumber = Int(lhsTitle[lhsTitle.count - 1]) ?? 0
        let rhsNumber = Int(rhsTitle[rhsTitle.count - 1]) ?? 0
        if lhsNumber != rhsNumber {
            return lhsNumber < rhsNumber
        } else {
            return lhs.title < rhs.title
        }
        
    }
    
}









