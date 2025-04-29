//
//  ButtonsModule.swift
//  SwiftUIBootcamp
//
//  Created by Авазбек Надырбек уулу on 27.04.25.
//

import SwiftUI

struct ButtonsModule: View {
    
    /*
     In SwiftUI @State is a property wrapper used to create and manage mutable state whithin a view.
     Its a fundamental concept that allows us to cstore and track changes to a value so that our view can automatically update a value when it changes.
     @State is used primary for managing small amoung of mmutable data that is local to a single view.
     */
    
    @State var rectangleColor: Color = .blue
    @State var title =  "Hello"
    
    
    var body: some View {

        VStack {
            Rectangle()
                .frame(width: 200, height: 100)
                .cornerRadius(20)
                .foregroundStyle(rectangleColor)
            Text(title)
                .font(.largeTitle)
            
            Button("Click me") {
                rectangleColor = .pink
                title = "Basic button clicked"
            }
            .padding()
            
            Button {
                rectangleColor = .purple
                title = "Second button is clicked"
            } label: {
                Text("Custom button")
                    .font(.headline)
                    .frame(width: 360, height: 48)
                    .foregroundColor(.white)
                    .background(.purple)
                    .cornerRadius(10)
            }
            
            Button {
                rectangleColor = .green
                title = "Image button"
            } label: {
                Image(systemName: "heart.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
            }


        }
    }
}

#Preview {
    ButtonsModule()
}
