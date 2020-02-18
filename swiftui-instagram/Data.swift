//
//  Data.swift
//  swiftui-instagram
//
//  Created by Maxence Mottard on 27/01/2020.
//  Copyright © 2020 MaxenceMottard. All rights reserved.
//

import Foundation

let antoineMousset = User(id: 1, userName: "Antoine Mousset", profilPictureURI: "https://scontent-cdg2-1.xx.fbcdn.net/v/t1.0-9/74348430_2922255074454775_5568439590483656704_n.jpg?_nc_cat=111&_nc_ohc=jGux1n4omC4AX9nf2V_&_nc_ht=scontent-cdg2-1.xx&oh=87b73c1c59e806d3434462425670d2db&oe=5EC5915F")

let maxenceMottard = User(id: 2, userName: "Maxence Mottard", profilPictureURI: "https://scontent-cdg2-1.xx.fbcdn.net/v/t31.0-8/15625713_1260183380694623_3452596341911914700_o.jpg?_nc_cat=111&_nc_ohc=-oZ2dC4Y4ZAAX_Yir3w&_nc_ht=scontent-cdg2-1.xx&oh=3fa4d8b130dcc5a57c5c68602b06edc0&oe=5E99E4A8")

let seixas = User(id: 3, userName: "Julien Gros Seix", profilPictureURI: "https://scontent-cdt1-1.xx.fbcdn.net/v/t1.0-9/21616554_386031441815958_3852721861291098557_n.jpg?_nc_cat=106&_nc_ohc=FdWLBAk81KEAX9MsO8X&_nc_ht=scontent-cdt1-1.xx&oh=e8e983a015957562178aa17aca334ab3&oe=5E9B8168")

let posts = [
    Post(id: 0, imageUrl: "https://images.unsplash.com/photo-1579979949256-5a49d3fcc912?ixlib=rb-1.2.1&auto=format&fit=crop&w=958&q=80", user: antoineMousset, likes: [seixas, maxenceMottard], commentsNumber: 30),
    Post(id: 1, imageUrl: "https://images.unsplash.com/photo-1578785729438-963d049c79a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80", user: antoineMousset, likes: [seixas, maxenceMottard], commentsNumber: 30),
    Post(id: 2, imageUrl: "https://images.unsplash.com/photo-1506424482693-1f123321fa53?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1892&q=80", user: antoineMousset, likes: [seixas, maxenceMottard], commentsNumber: 30),
]
