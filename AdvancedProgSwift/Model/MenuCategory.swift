//
//  MenuCategory.swift
//  AdvancedProgSwift
//
//  Created by Eugene Demenko on 18.05.2023.
//

import Foundation


enum MenuCategory: String, CaseIterable, Codable {
    case food = "Food"
    case drink = "Drink"
    case dessert = "Dessert"
}

enum SelectedCategory: String, CaseIterable {
    case food = "Food"
    case drink = "Drink"
    case dessert = "Dessert"
}
    
enum SortOption: String, CaseIterable {
    case mostPopular = "Most Popular"
    case price = "Price $-$$$"
    case alphabetical = "A-Z"
}
    

