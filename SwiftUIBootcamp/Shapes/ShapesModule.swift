//
//  ShapesModule.swift
//  SwiftUIBootcamp
//
//  Created by Авазбек Надырбек уулу on 23.04.25.
//

import SwiftUI

struct ShapesModule: View {
    var body: some View {
        VStack {
            Circle()
            //  .stroke(lineWidth: 10)
            //  .fill(.purple)
                .foregroundStyle(.blue)
                .frame(width: 300, height: 300)
            Rectangle()
                .fill(.blue)
                .frame(width: 300, height: 100)
                .cornerRadius(20)
            Capsule()
                .fill(.cyan)
                .frame(width: 200, height: 64)
            
        }
    }
}

#Preview {
    ShapesModule()
}
