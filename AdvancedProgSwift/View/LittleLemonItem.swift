//
//  LittleLemonItem.swift
//  AdvancedProgSwift
//
//  Created by Eugene Demenko on 25.05.2023.
//

import SwiftUI

struct LittleLemonItem: View {
    var menuItem: MenuItem
    var body: some View {
        Image(menuItem.image)
            .resizable(resizingMode: .stretch)
            .aspectRatio(contentMode: .fit)
            .padding([.top, .leading, .trailing, .bottom], 30)
           
    }
}

//struct LittleLemonItem_Previews: PreviewProvider {
//    static var previews: some View {
//       
//        LittleLemonItem(menuItem: menuItem)
//    }
//}
