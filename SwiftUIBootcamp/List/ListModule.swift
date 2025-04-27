//
//  ListModule.swift
//  SwiftUIBootcamp
//
//  Created by Авазбек Надырбек уулу on 27.04.25.
//

import SwiftUI

struct ListModule: View {
    
    @State var driverName = [
        "Avazbek",
        "Nadyrbek",
        "Nuriza",
        "Mircale",
        "Kamila",
        "Jamilya",
        "Alina",
    ]
    
    let teams = [
        "Mercedes",
        "BMW",
        "Red Bull",
        "McLaren",
        "Ferrari",
        "Alpine"
    ]
    var body: some View {
        List {
            Section("Drivers") {
                ForEach(driverName, id: \.self) { driver in
                    Text(driver)
                }
                .onDelete { indices in
                    driverName.remove(atOffsets: indices)
                }
            }
            
            Section("Teams") {
                ForEach(teams, id: \.self) { team in
                    Text(team)
                }
            }
        }
        .listStyle(.sidebar)
    }
}

#Preview {
    ListModule()
}
 
