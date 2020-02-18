//
//  PostView.swift
//  swiftui-instagram
//
//  Created by Maxence Mottard on 28/01/2020.
//  Copyright © 2020 MaxenceMottard. All rights reserved.
//

import SwiftUI
import RemoteImage

struct PostView: View {
    let post: Post
    
    var body: some View {
        
            VStack {

                //  MARK: - Post Header
                HStack {
                    RemoteImage(type: .url(URL(string: post.user.profilPictureURI)!), errorView: {  error in
                        Text(error.localizedDescription)
                    }, imageView: { image in
                        image
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                    }, loadingView: {
                        Text("Loading ...")
                    })
                    
                    Text(post.user.userName)
                    
                    Spacer()
                    
                    /*Button(action: {
                        print("Click")
                    }) {
                        Image(systemName: "ellipsis")
                            .accentColor(Color("SecondaryContentColor"))
                    }*/
                }
                .padding(.top, 5)
                .padding(.bottom, 5)
                .padding(.leading, 20)
                .padding(.trailing, 20)
                
                //  MARK: - Post Image
                RemoteImage(type: .url(URL(string: self.post.imageUrl)!), errorView: {  error in
                    Text(error.localizedDescription)
                }, imageView: { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.width)
                        .clipped()
                }, loadingView: {
                    Text("Loading ...")
                })
                
                HStack {
                    
                    Button(action: {
                        print("Click")
                    }) {
                        Image(systemName: "heart")
                            .accentColor(Color("SecondaryContentColor"))
                    }
                    
                    Text("\(post.likes.count)")
                    
                    Divider()
                    
                    Button(action: {
                        print("Click")
                    }) {
                        Image(systemName: "bubble.left")
                            .accentColor(Color("SecondaryContentColor"))
                    }
                    
                    Text("\(post.commentsNumber)")
                    
                    Spacer()
                    
                }
                .padding(.bottom, 5)
                .padding(.top, 5)
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .frame(height: 30)
            }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: .init(
            id: 0,
            imageUrl: "https://images.unsplash.com/photo-1580122468928-0e9940385cb1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=882&q=80",
            user: .init(id: 0, userName: "User Test", profilPictureURI: "https://images.unsplash.com/profile-1580122316848-ab523daf1dd6image?dpr=2&auto=format&fit=crop&w=150&h=150&q=60&crop=faces&bg=fff"),
            likes: [],
            commentsNumber: 3
        ))
    }
}
