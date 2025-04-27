//
//  LoopsModule.swift
//  SwiftUIBootcamp
//
//  Created by Авазбек Надырбек уулу on 25.04.25.
//

import SwiftUI

struct LoopsModule: View {
    
    let driver: [String] = [
        "Avazbek Nadyrbek Uulu",
        "Dilshod Nadyrbek Uulu",
        "Nodirbek Nadyrbek Uulu"
    ]
    
    var body: some View {
        VStack {
            ForEach(driver, id: \.self) { index in
                HStack() {
                    // Profile image
                    Image("WhatsApp1")
                        .resizable()
                        .frame(width: 56, height: 56)
                        .clipShape(Circle())
                    
                    // Profile name
                    VStack(alignment: .leading) {
                        Text("avazbeknadyrbek")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("\(index)")
                            .font(.subheadline)
                            .fontWeight(.light)
                    }
                    Spacer() // better way
                    Button(action: {
                                // Your action here
                            }) {
                                Text("Click Me")
                                    .font(.headline)
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 20)
                                    .padding(.vertical, 10)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(.white)
                                    )
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(.blue.opacity(0.7), lineWidth: 2)
                                    )
                            }

                }
            }
            Text("Loop ended")
        }
        .padding()
    }
}

#Preview {
    LoopsModule()
}
