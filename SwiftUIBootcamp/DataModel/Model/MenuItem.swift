//
//  MenuItem.swift
//  SwiftUIBootcamp
//
//  Created by Авазбек Надырбек уулу on 28.04.25.
//

import Foundation

// this is a programatic representation what MenuItem look like, its a like a blueprint for the MenuItem

struct MenuItem: Identifiable {
    var id = UUID()
    var imageName: String
    var type: String
    var restaurantName: String
}
