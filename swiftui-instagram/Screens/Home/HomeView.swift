//
//  HomeView.swift
//  swiftui-instagram
//
//  Created by Maxence Mottard on 27/01/2020.
//  Copyright © 2020 MaxenceMottard. All rights reserved.
//

import SwiftUI
import RemoteImage

struct HomeView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "camera")
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 30)
                
                Spacer()
                
                Image("InstagramLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 40)
                
                Spacer()
                
                
                Image(systemName: "paperplane")
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 30)
            }
            .padding(.init(top: 0, leading: 30, bottom: 0, trailing: 30))
            
            List(posts) {
                PostView(post: $0)
            }
            .padding(.trailing, -20)
            .padding(.leading, -20)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
