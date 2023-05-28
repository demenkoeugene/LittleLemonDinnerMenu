//
//  MenuItemDetailsView.swift
//  AdvancedProgSwift
//
//  Created by Eugene Demenko on 25.05.2023.
//

import SwiftUI

struct MenuItemDetailsView: View {
    var menuItem: MenuItem
      
      var body: some View {
          List{
              LittleLemonItem(menuItem: menuItem)
                  if menuItem.price > 0 {
                      HStack {
                          Text("Price:")
                              .fontWeight(.bold)
                          Spacer()
                          Text(String(format: "%.2f $", menuItem.price))
                      }
                      .padding(5)
                  }
                  if menuItem.ordersCount > 0 {
                      HStack {
                          Text("Ordered:")
                              .fontWeight(.bold)
                          Spacer()
                          Text("\(menuItem.ordersCount)")
                      }
                      .padding(5)
                  }
                  if menuItem.ingredient.count > 0 {
                      HStack {
                          Text("Ingredients:")
                              .fontWeight(.bold)
                          Spacer()
                          ForEach(menuItem.ingredient, id: \.self) {
                              Text($0.rawValue)
                          }
                      }
                      .padding(5)
                  }
              }
          .navigationTitle(menuItem.title)
          }
          
      }


struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let menuItem = MenuItem(price: 10, title: "Food 1", menuCategory: .food, ordersCount: 15, ingredient: [.tomatoSauce], image: "Smoothi")
        MenuItemDetailsView(menuItem: menuItem)
    }
}
