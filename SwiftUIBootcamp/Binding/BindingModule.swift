//
//  BindingModule.swift
//  SwiftUIBootcamp
//
//  Created by Авазбек Надырбек уулу on 29.04.25.
//

import SwiftUI

struct BindingModule: View {
    
    @State var isOn = false
    @State var showBattery = false
    var body: some View {
        VStack {
            Text("Notifications: \(isOn ? "Enabled" : "Desiabled")")
            
            if showBattery {
                Text("Battery: 100%")
            }
            SettingsRowView(isOn: $isOn, imageName: "bell.circle.fill", title: "Notifications")
            Text("Baterylife: \(showBattery ? "100%" : "50%")")
            SettingsRowView(isOn: $showBattery, imageName: "battery.100.circle.fill", title: "Battery Life")
        }
    }
}

#Preview {
    BindingModule()
}

struct SettingsRowView: View {
    
    @Binding var isOn: Bool
    let imageName: String
    let title: String
    
    var body: some View {
        Toggle(isOn: $isOn) {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 29, height: 29)
                    .foregroundStyle(.blue)
                Text(title)
                    .font(.subheadline)
                
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
        .padding(.horizontal)
    }
}
