//
//  MenuItemsView.swift
//  AdvancedProgSwift
//
//  Created by Eugene Demenko on 18.05.2023.
//

import SwiftUI

struct MenuItemsView: View {
    @StateObject var menuItems: MenuViewViewModel
    @State private var showSheet: Bool = false
    
    let layout = [GridItem(.adaptive(minimum: 80))]
    var body: some View {
        
        NavigationView{
            List{
                if menuItems.isShowFood {
                    Section(header: Text("Food").font(.headline)){
                        LazyVGrid(columns: layout, spacing: 20){
                            ForEach(menuItems.foodMenuItems){ menuItem in
                                VStack{
                                    Rectangle().frame(width: 80, height: 80)
                                    Text(menuItem.title)
                                        .font(.footnote)
                                }
                                .frame(width:100, height: 100)
                                .padding(10)
                            }
                        }
                    }
                }
                if menuItems.isShowDrinks {
                    Section(header: Text("Drink").font(.headline)){
                        LazyVGrid(columns: layout, spacing: 20){
                            ForEach(menuItems.drinkMenuItems){ menuItem in
                                VStack{
                                    Rectangle().frame(width: 80, height: 80)
                                    Text(menuItem.title)
                                        .font(.footnote)
                                }
                                .frame(width:120, height: 120)
                                .padding(10)
                            }
                        }
                        
                    }
                }
                if menuItems.isShowDesserts {
                    Section(header: Text("Dessert").font(.headline)){
                        LazyVGrid(columns: layout, spacing: 20){
                            ForEach(menuItems.dessertMenuItems){ menuItem in
                                VStack{
                                    Rectangle().frame(width: 80, height: 80)
                                    Text(menuItem.title)
                                        .font(.footnote)
                                }
                                .frame(width:100, height: 100)
                                .padding(10)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Menu")
            .onAppear() {
                menuItems.updateMenuItems()
            }
            .toolbar {
                Button(action: {
                    showSheet = true
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                })
                .padding(10)
            }
            .scrollContentBackground(.hidden)
            .sheet(isPresented: $showSheet){
                MenuItemsOptionView()
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = MenuViewViewModel() // Create an instance of MenuViewViewModel
        return MenuItemsView(menuItems: viewModel) // Pass the viewModel to MenuItemsView
    }
}

