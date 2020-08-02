//
//  CardView.swift
//  dev
//
//  Created by Ana Thayna Franca on 02/08/20.
//

import SwiftUI

struct CardView: View {
    var gradient: [Color] = [Color("Color01"),Color("Color02")]
    
    var body: some View {
        ZStack {
            Image("developer-no1")
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView().previewLayout(.sizeThatFits)
    }
}
