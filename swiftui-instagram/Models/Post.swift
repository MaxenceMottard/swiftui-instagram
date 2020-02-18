//
//  Post.swift
//  swiftui-instagram
//
//  Created by Maxence Mottard on 27/01/2020.
//  Copyright © 2020 MaxenceMottard. All rights reserved.
//

import Foundation

struct Post: Identifiable {
    let id: Int
    let imageUrl: String
    let user: User
    let likes: [ User ]
    let commentsNumber: Int
}
