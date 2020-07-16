//
//  DeviceSelectionMenu.swift
//  RepairAR
//
//  Created by Samuel Garvett on 7/14/20.
//  Copyright © 2020 Sam Garvett. All rights reserved.
//

import SwiftUI

struct DeviceSelectionMenu: View {
    var body: some View {
        
        HStack{
            VStack {
               
                Text("Mac Portables")
                Spacer()
                Text("iMac")
                Spacer()
                Text("Mac Pro")
                    .frame(maxWidth: .infinity )
                    .background(Color.blue.opacity(0.5))
                    .cornerRadius(6)
                
                Spacer()
                Text("Mac Mini")
                Spacer()
                Text("iPhone")
    
            }
            .frame(width: 200)
        }
            .padding()
            .frame(width: 800, height: 400, alignment: .leading)
            .background(Color.blue.opacity(0.3))
            .cornerRadius(20)
            
    }
}

struct DeviceSelectionMenu_Previews: PreviewProvider {
    static var previews: some View {
        DeviceSelectionMenu()
    }
}
