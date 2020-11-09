//
//  MacPortableIcon.swift
//  RepairAR
//
//  Created by Sam Garvett on 7/17/20.
//  Copyright © 2020 Sam Garvett. All rights reserved.
//

import SwiftUI

struct MacPortableIcon: View {
    var body: some View {

        VStack(alignment: .center, spacing: 0) {
            RoundedRectangle(cornerRadius:3)
                .stroke(Color.blue, lineWidth: 2)
            .frame(width: 35, height: 23)
            RoundedRectangle(cornerRadius: 3)
                .fill(Color.blue)
            .frame(width: 45, height: 2)
            
                
        }
        
        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
    
    }
    
}

struct MacPortableIcon_Previews: PreviewProvider {
    static var previews: some View {
        MacPortableIcon()
    }
}
