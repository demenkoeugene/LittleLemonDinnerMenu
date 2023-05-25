//
//  MenuItemsOptionView.swift
//  AdvancedProgSwift
//
//  Created by Eugene Demenko on 23.05.2023.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @Environment(\.presentationMode) var presentationMode//for qs
    @EnvironmentObject var viewModel: MenuViewViewModel
    
    var body: some View {
        NavigationView{
            Form {
                List{
                    Section("Selected categories") {
                        Toggle(MenuCategory.food.rawValue, isOn: $viewModel.isShowFood)
                        Toggle(MenuCategory.drink.rawValue, isOn: $viewModel.isShowDrinks)
                        Toggle(MenuCategory.dessert.rawValue, isOn: $viewModel.isShowDesserts)
                    }
                    
                    Picker("Sort by", selection: $viewModel.sortBy) {
                        ForEach(SortOption.allCases, id: \.self) { category in
                            Text(category.rawValue).tag(category)
                        }
                    }
                }
            }.navigationTitle("Filter")
                .pickerStyle(.inline)
                .listStyle(.grouped)
                .toolbar {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                        viewModel.updateMenuItems()
                    }, label: {
                        Text("Done")
                    })
                    .padding(10)
                }
                .pickerStyle(.inline)
                .listStyle(.grouped)
        }
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView().environmentObject(MenuViewViewModel())
    }
}
