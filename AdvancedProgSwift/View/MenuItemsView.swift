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

    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    if menuItems.isShowFood {
                        ViewMenu(
                            menuItemsOut: menuItems.foodMenuItems,
                            menuCategory: MenuCategory.food)
                    }
                    if menuItems.isShowDrinks {
                        ViewMenu(
                            menuItemsOut: menuItems.drinkMenuItems,
                            menuCategory: MenuCategory.drink)
                    }
                    if menuItems.isShowDesserts {
                        ViewMenu(
                            menuItemsOut: menuItems.dessertMenuItems,
                            menuCategory: MenuCategory.dessert)
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
                }
                .sheet(isPresented: $showSheet){
                    MenuItemsOptionView()
                }
            }
        }
    }
}


struct ViewMenu: View{
    var menuItemsOut: [MenuItem]
    var menuCategory: MenuCategory

    let layout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    init(menuItemsOut: [MenuItem], menuCategory: MenuCategory) {
        self.menuItemsOut = menuItemsOut
        self.menuCategory = menuCategory
    }
    
    var body: some View {
        Section(header: HStack {
            Text(menuCategory.rawValue)
                .font(.title)
                .foregroundColor(.black)
                .padding(.leading, 10)
            Spacer()
        }){
            LazyVGrid(columns: layout, spacing: 10){
                ForEach(menuItemsOut){ menuItem in
                    NavigationLink(destination: MenuItemDetailsView(menuItem: menuItem)) {
                        VStack{
                            Rectangle().frame(width: 100, height: 100)
                            Text(menuItem.title)
                                .font(.footnote)
                        }
                        .foregroundColor(.black)
                        .frame(width:100, height: 100)
                        .padding(10)
                    }
                }
            }
        }
        .padding(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = MenuViewViewModel() // Create an instance of MenuViewViewModel
        return MenuItemsView(menuItems: viewModel) // Pass the viewModel to MenuItemsView
    }
}

