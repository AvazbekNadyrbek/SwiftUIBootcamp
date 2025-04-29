//
//  UberEatsMeal.swift
//  SwiftUIBootcamp
//
//  Created by Авазбек Надырбек уулу on 28.04.25.
//

import SwiftUI

struct UberEatsMeal: View {
    
    
    let menuItems: [MenuItem] = [
        .init(imageName: "WhatsApp1", type: "Pizza", restaurantName: "Pizza Hut"),
        .init(imageName: "WhatsApp2", type: "Burger", restaurantName: "Burger King"),
        .init(imageName: "WhatsApp3", type: "Sushi", restaurantName: "Sushi Place"),
        .init(imageName: "WhatsApp4", type: "Pasta", restaurantName: "Pasta Palace"),
        .init(imageName: "WhatsApp5", type: "Chicken", restaurantName: "KFC"),
        .init(imageName: "WhatsApp6", type: "Taco", restaurantName: "Taco Bell"),
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Feautures on Uber Eats")
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
            ScrollView {
                VStack(spacing: 24) {
                    ForEach(menuItems) { item in
                        MenuItemView(menuItem: item)
                    }
                }
                
            }
        }
    }
}

#Preview {
    UberEatsMeal()
}


