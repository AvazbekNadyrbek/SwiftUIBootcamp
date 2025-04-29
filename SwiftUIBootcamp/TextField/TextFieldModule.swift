//
//  TextFieldModule.swift
//  SwiftUIBootcamp
//
//  Created by Авазбек Надырбек уулу on 29.04.25.
//

import SwiftUI

struct TextFieldModule: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(spacing: 24){
            Image("messangerLogo2")
                .resizable()
                .frame(width: 180, height: 180)
                .scaledToFit()
            
            VStack {
                TextField("Enter your email", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(10)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                
                SecureField("Password", text: $password) // for password like a TextField
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(10)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
            }
            
            Button {
                print("Email is \(email)")
                print("Password is \(password)")
            } label: {
                Text("Log in")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 48)
                    .background(.blue)
                    .cornerRadius(10)
                
            }

        }
        .padding()
    }
}

#Preview {
    TextFieldModule()
}
