//
//  ContentView.swift
//  h4x0r news
//
//  Created by Ana Thayna Franca on 04/06/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
        .navigationBarTitle("H4X0R NEWS")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct Post: Identifiable {
//    let id: String
//    let title: String
//}

let posts = [
    Post(id: "1", title: "Hellou?"),
    Post(id: "2", title: "Bonjour?"),
    Post(id: "3", title: "Hola?")
]
