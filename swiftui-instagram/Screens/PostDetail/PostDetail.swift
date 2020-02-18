//
//  PostDetail.swift
//  swiftui-instagram
//
//  Created by Maxence Mottard on 28/01/2020.
//  Copyright © 2020 MaxenceMottard. All rights reserved.
//

import SwiftUI

struct PostDetail: View {
    let post: Post
    
    var body: some View {
        Text(post.imageUrl)
    }
}

struct PostDetail_Previews: PreviewProvider {
    static var previews: some View {
        //PostDetail()
        EmptyView()
    }
}
