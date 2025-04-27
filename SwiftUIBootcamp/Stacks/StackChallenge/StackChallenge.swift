//
//  StackChallenge.swift
//  SwiftUIBootcamp
//
//  Created by Авазбек Надырбек уулу on 25.04.25.
//

import SwiftUI

struct StackChallenge: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
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
                    Text("Avazbek Nadyrbek Uulu")
                        .font(.subheadline)
                        .fontWeight(.light)
                }
                Spacer()
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
//            .padding()
            Divider()
            HStack {
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
                    Text("Avazbek Nadyrbek Uulu")
                        .font(.subheadline)
                        .fontWeight(.light)
                }
                Spacer()
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
//            .padding()
            Divider()
            
        }
        .padding()
    }
}

#Preview {
    StackChallenge()
}
