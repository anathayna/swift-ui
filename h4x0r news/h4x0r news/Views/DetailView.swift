//
//  DetailView.swift
//  h4x0r news
//
//  Created by Ana Thayna Franca on 05/06/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlstring: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "hattps://www.google.com")
    }
}
