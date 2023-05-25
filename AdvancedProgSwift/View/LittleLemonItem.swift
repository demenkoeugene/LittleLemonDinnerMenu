//
//  LittleLemonItem.swift
//  AdvancedProgSwift
//
//  Created by Eugene Demenko on 25.05.2023.
//

import SwiftUI

struct LittleLemonItem: View {
    var body: some View {
        
        Image("Little Lemon logo")
            .resizable(resizingMode: .stretch)
            .aspectRatio(contentMode: .fit)
            .padding([.leading, .trailing], 50)
    }
}

struct LittleLemonItem_Previews: PreviewProvider {
    static var previews: some View {
        LittleLemonItem()
    }
}
