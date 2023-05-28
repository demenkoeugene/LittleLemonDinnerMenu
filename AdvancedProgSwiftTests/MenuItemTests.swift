//
//  AdvancedProgSwiftTests.swift
//  AdvancedProgSwiftTests
//
//  Created by Eugene Demenko on 18.05.2023.
//

import XCTest
@testable import AdvancedProgSwift // Import the module where MenuItem is defined

class MenuItemTests: XCTestCase {
    
    func testMenuItemTitle() {
        let title = "Burger"
        let menuItem = MenuItem(price: 0.0, title: title, menuCategory: .food, ordersCount: 0, ingredient: [], image: "Brocolli")
        XCTAssertEqual(menuItem.title, title)
    }

    func testMenuItemIngredients() {
        let ingredients: [Ingredient] = [.pasta, .spinach, .tomatoSauce]
        let menuItem = MenuItem(price: 0.0, title: "Burger", menuCategory: .food, ordersCount: 0, ingredient: ingredients, image: "Brocolli")
        XCTAssertEqual(menuItem.ingredient, ingredients)
    }

}

