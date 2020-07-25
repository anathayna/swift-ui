//
//  FruitModel.swift
//  fructus
//
//  Created by Ana Thayna Franca on 25/07/20.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColor: [Color]
    var description: String
    var nutrition: [String]
}
