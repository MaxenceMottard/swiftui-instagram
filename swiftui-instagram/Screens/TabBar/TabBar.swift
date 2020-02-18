//
//  ContentView.swift
//  swiftui-instagram
//
//  Created by Maxence Mottard on 27/01/2020.
//  Copyright © 2020 MaxenceMottard. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    
    @Binding var index : Int
    
    var body: some View {
        
        VStack {
            EdgeBorder(width: 0.7, edge: .bottom).foregroundColor(Color("TabBarBorderColor"))
            
            HStack {
                
                
                TabBarItem(itemImage: "house.fill", itemIndex: 0, index: $index)
                
                Spacer()
                
                TabBarItem(itemImage: "person.fill", itemIndex: 1, index: $index)
                
            }
            .padding(.init(top: 11, leading: 35, bottom: 11, trailing: 35))
            .background(Color("BackgroundColor"))
        }
        .frame(width: UIScreen.main.bounds.width)
        
    }
    
}
