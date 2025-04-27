//
//  PaddingModule.swift
//  SwiftUIBootcamp
//
//  Created by Авазбек Надырбек уулу on 25.04.25.
//

import SwiftUI

struct PaddingModule: View {
    var body: some View {
            VStack {
                Text("Hello, World! How are you doing today?")
                    .background(.blue)
                    .padding()
                    .background(.yellow)
                Text("Horizontal padding")
                    .padding(.horizontal, 32)
                    .background(.pink)
                Text("Vertical paadding")
                    .padding(.vertical, 32)
                    .background(.green)
                
                Text("Leading padding")
                    .padding(.leading, 32)
                    .background(.purple)
                
                Text("Trailing padding")
                    .padding(.trailing, 32)
                    .background(.yellow)
                
                Text("Top padding")
                    .padding(.top, 32)
                    .background(.gray)
                
                Text("Bottom padding")
                    .padding(.bottom, 32)
                    .background(.yellow)
            }
    }
}

#Preview {
    PaddingModule()
}
