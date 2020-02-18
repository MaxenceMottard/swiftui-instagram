//
//  Root.swift
//  swiftui-instagram
//
//  Created by Maxence Mottard on 27/01/2020.
//  Copyright © 2020 MaxenceMottard. All rights reserved.
//

import SwiftUI

struct Root: View {
    
    @State var index = 0
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
            .edgesIgnoringSafeArea(.all)
            
            VStack {

                HomeView()
                
                Spacer()
            }
            
        }        
        
    }
}

struct Root_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Root()
            Root().environment(\.colorScheme, .dark)
        }
    }
}
