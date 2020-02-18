//
//  TabBarItem.swift
//  swiftui-instagram
//
//  Created by Maxence Mottard on 27/01/2020.
//  Copyright © 2020 MaxenceMottard. All rights reserved.
//

import SwiftUI

struct TabBarItem: View {
    
    var itemImage: String
    var itemIndex: Int
    @Binding var index: Int
    
    var body: some View {
        VStack {
            Image(systemName: itemImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 22, height: 22)
            
                Image(systemName: "circle.fill")
                    .resizable()
                    .frame(width: 6, height: 6)
                    .foregroundColor(
                        index == itemIndex
                            ? Color("TabBarSelectColor")
                            : Color.clear
                    )
        }
        .onTapGesture {
            self.index = self.itemIndex
        }
    }
    
}
