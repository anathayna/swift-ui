//
//  WebView.swift
//  h4x0r news
//
//  Created by Ana Thayna Franca on 05/06/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct WebView : UIViewRepresentable {
    
    let urlstring: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlstring {
            if let url = URL(string: safeString) {
                let requeste = URLRequest(url: url)
                uiView.load(requeste)
            }
        }
    }
}
