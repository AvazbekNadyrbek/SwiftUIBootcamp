//
//  ImagesModule.swift
//  SwiftUIBootcamp
//
//  Created by Авазбек Надырбек уулу on 23.04.25.
//

import SwiftUI

struct ImagesModule: View {
    var body: some View {
        VStack {
            Image(systemName: "heart.circle.fill")
                .resizable()
                .foregroundStyle(.red)
            //            .font(.title)
            //            .imageScale(.large)
                .frame(width: 100, height: 100)
            
            Image("WhatsApp2")
                .resizable() // strech to fitt a aviable space
                .scaledToFill()
                .frame(width: 100, height: 100)
//                .clipped() // fitt the size of frame
                .clipShape(.circle)
            
        }
    }
}

#Preview {
    ImagesModule()
}
