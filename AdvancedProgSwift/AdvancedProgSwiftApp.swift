//
//  AdvancedProgSwiftApp.swift
//  AdvancedProgSwift
//
//  Created by Eugene Demenko on 18.05.2023.
//

import SwiftUI

@main
struct AdvancedProgSwiftApp: App {
    var body: some Scene {
        WindowGroup {
            let viewModel = MenuViewViewModel() // Create an instance of MenuViewViewModel
            MenuItemsView(menuItems: viewModel) .environmentObject(viewModel) // Pass the viewModel to MenuItemsView
        }
    }
}
