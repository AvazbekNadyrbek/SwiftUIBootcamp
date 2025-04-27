//
//  GridsModule.swift
//  SwiftUIBootcamp
//
//  Created by Авазбек Надырбек уулу on 27.04.25.
//

import SwiftUI

struct GridsModule: View {
    
    let columns: [GridItem] = [
        .init(.flexible(), spacing: 2),
        .init(.flexible(), spacing: 2),
        .init(.flexible()),

    ]
    
    let dimension = (UIScreen.main.bounds.width / 3) - 2  // give a width of a screen
    
    let driverImage = [
        "WhatsApp1",
        "WhatsApp2",
        "WhatsApp3",
        "WhatsApp4",
        "WhatsApp5",
        "WhatsApp6",
     ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 3) {
                ForEach(driverImage, id: \.self) { driverImg in
                    Image(driverImg)
                        .resizable()
                        .scaledToFill()
                        .frame(width: dimension, height: dimension)
                        .clipShape(Rectangle())
                }
            }
        }
    }
}

#Preview {
    GridsModule()
}
