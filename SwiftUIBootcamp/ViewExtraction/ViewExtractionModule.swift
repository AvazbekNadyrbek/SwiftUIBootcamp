//
//  ViewExtractionModule.swift
//  SwiftUIBootcamp
//
//  Created by Авазбек Надырбек уулу on 28.04.25.
//

import SwiftUI

struct ViewExtractionModule: View {
    var body: some View {
        ScrollView {
            DriverRowView(driverName: "Lewis Hamilton", imageName: "WhatsApp1", teamName: "Mercedes")
            DriverRowView(driverName: "Avazbek Nadyrbek", imageName: "WhatsApp2", teamName: "BMW")
            DriverRowView(driverName: "Osas Abies", imageName: "WhatsApp3", teamName: "Honda")
            DriverRowView(driverName: "Ahmd Alhaider", imageName: "WhatsApp4", teamName: "Kia")
        }
        .padding()
    }
}

struct DriverRowView: View {
    // that is a input parameter for the view
    let driverName: String
    let imageName: String
    let teamName: String
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(driverName)
                    .fontWeight(.semibold)
                Text(teamName)
                    .foregroundColor(.gray)
            }
            .font(.subheadline)
            
            Spacer()
        }
    }
}

#Preview {
    ViewExtractionModule()
}
