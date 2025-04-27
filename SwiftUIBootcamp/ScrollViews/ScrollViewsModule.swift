//
//  ScrollViewsModuke.swift
//  SwiftUIBootcamp
//
//  Created by Авазбек Надырбек уулу on 26.04.25.
//

import SwiftUI

struct ScrollViewsModuke: View {
    let driverImage = [
        "WhatsApp1",
        "WhatsApp2",
        "WhatsApp3",
        "WhatsApp4",
        "WhatsApp5",
        "WhatsApp6",
     ]
    
    var body: some View {
//        ScrollView(.horizontal) {
//            HStack {
//                ForEach(driverImage, id:\.self) { driverImg in
//                    Image(driverImg)
//                        .resizable()
//                        .frame(width: 64, height: 64)
//                        .clipShape(Circle())
//                }
//            }
//        }
        
        VStack(alignment: .leading) {
            Text("Feautures on Uber Eats")
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
            ScrollView {
                VStack(spacing: 24) {
                    ForEach(driverImage, id: \.self) { driverImg in
                        
                        VStack(alignment: .leading, spacing: 20) {
                            Image(driverImg)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 360, height: 150)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Shodo")
                                    .fontWeight(.semibold)
                                Text("$100.99 / month ")
                                    .foregroundStyle(.secondary)
                            }
                            .font(.subheadline)
                        }
                    }
                }
                
            }
        }
    }
}

#Preview {
    ScrollViewsModuke()
}
