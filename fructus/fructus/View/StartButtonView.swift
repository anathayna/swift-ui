//
//  StartButtonView.swift
//  fructus
//
//  Created by Ana Thayna Franca on 23/07/20.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        Button(action: {
            print("exit the onboarding")
        }) {
            HStack(spacing: 8) {
                Text("start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }
        .accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
