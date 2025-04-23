//
//  TextModule.swift
//  SwiftUIBootcamp
//
//  Created by Авазбек Надырбек уулу on 23.04.25.
//

import SwiftUI

struct TextModule: View {
    var body: some View {
        Text("Hello, Bootcamp! This is the best Bootcamp that you will ever see")
            .font(.subheadline) // view modifier
            .foregroundColor(.blue)
            .fontWeight(.semibold)
            .multilineTextAlignment(.trailing)
            .italic()
            .underline()
        
    }
}

#Preview {
    TextModule()
}
