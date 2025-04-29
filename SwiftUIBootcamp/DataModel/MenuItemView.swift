//
//  MenuItemView.swift
//  SwiftUIBootcamp
//
//  Created by Авазбек Надырбек уулу on 28.04.25.
//

import SwiftUI

struct MenuItemView: View {
    // dependecies injections
    let menuItem: MenuItem
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Image(menuItem.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 360, height: 150)
                .cornerRadius(10)
            
            VStack(alignment: .leading) {
                Text(menuItem.restaurantName)
                    .fontWeight(.semibold)
                
                Text(menuItem.type)
                    .foregroundStyle(.secondary)
                
                Text("Price: $100.99 / month ")
                    .foregroundStyle(.secondary)
            }
            .font(.subheadline)
        }
    }
}

#Preview {
    MenuItemView(menuItem: MenuItem(imageName: "WhatsApp1", type: "Pizza", restaurantName: "Pizza Hut"))
}
 
