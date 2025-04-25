//
//  StacksModule.swift
//  SwiftUIBootcamp
//
//  Created by Авазбек Надырбек уулу on 24.04.25.
//

import SwiftUI

struct StacksModule: View {
    var body: some View {
        
        VStack(alignment: .center, spacing: 32) {
            ZStack {
                Rectangle()
                    .fill(.pink)
                    .frame(width: 360, height: 100)
                    .cornerRadius(20)
                Text("Hello World")
                    .foregroundStyle(.white)
                    .font(.headline)
            }
            Rectangle()
                .fill(.blue)
                .frame(width: 200, height: 100)
                .cornerRadius(20)
        }
//        HStack(alignment: .bottom, spacing: 32) {
//            VStack {
//                Rectangle()
//                    .fill(.pink)
//                    .frame(width: 100, height: 100)
//                    .cornerRadius(20)
//                Text("Revenue")
//            }
//            VStack {
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: 100, height: 200)
//                    .cornerRadius(20)
//                Text("SchonKlinik")
//            }
//            VStack {
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 100, height: 300)
//                    .cornerRadius(20)
//                Text("SchonKlinik")
//            }
//        }
        
//        ZStack(alignment: .bottomLeading) {
//            Rectangle()
//                .fill(.pink)
//                .frame(width: 200, height: 200)
//                .cornerRadius(20)
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 150, height: 150)
//                .cornerRadius(20)
//            Rectangle()
//                .fill(.green)
//                .frame(width: 100, height: 100)
//                .cornerRadius(20)
//        }

    }
}

#Preview {
    StacksModule()
}
