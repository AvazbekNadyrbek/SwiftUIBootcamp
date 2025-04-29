//
//  ControllFlowModule.swift
//  SwiftUIBootcamp
//
//  Created by Авазбек Надырбек уулу on 28.04.25.
//

import SwiftUI

/*
 In SwiftUI, control flow is used to manage the flow of execution in your app. It allows you to make decisions and execute different blocks of code based on certain conditions.
 In SwiftUI, you can use if-else statements, switch statements, and loops to control the flow of your app.
 
In Swift, ternary statement is a concise way to write a conditional expression that results in one of two values based on a condition.
 It's also known as the ternary conditional operator or inline if-else and has the following syntax:
 
 condtion ? valueIfTrue : valueIfFalse
 
 Here's how it works:
 
 condition is an expression that evaluates to a Boolean value (true or false).
 If condition is true, the entire expression evaluates to valueIfTrue.
 If condition is false, the entire expression evaluates to valueIfFalse.
 */

struct ControllFlowModule: View {
    
    @State var showImage: Bool = true
    @State var didLike: Bool = false
    @State var likes: Int = 50
    
    var body: some View {
//        if showImage {
//            // show an image
//            Image(systemName: "heart.fill")
//                .resizable()
//                .frame(width: 64, height: 64)
//                .foregroundStyle(.red)
//        } else {
//            Text("No image to show")
//        }
        
        VStack {
            Button {
                didLike.toggle()
                if didLike {
                    likes += 1
                } else {
                    likes -= 1
                }
            } label: {
                
                Image(systemName: didLike ? "heart.fill" : "heart")
                    .resizable()
                    .frame(width: 64, height: 64)
                    .foregroundStyle(didLike ? .red : .black )
//                if didLike {
//                    Image(systemName: "heart.fill")
//                        .resizable()
//                        .frame(width: 64, height: 64)
//                        .foregroundStyle(.red)
//                } else  {
//                    Image(systemName: "heart")
//                        .resizable()
//                        .frame(width: 64, height: 64)
//                        .foregroundStyle(.black)
//                }
            }
            Text("\(likes) Likes")
                .font(.subheadline)
                .fontWeight(.medium)
        }
    }
}

#Preview {
    ControllFlowModule()
}
 
