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
            .frame(width: 48, height: 30)
            RoundedRectangle(cornerRadius: 3)
                .fill(Color.blue)
            .frame(width: 60, height: 3)
            
            
        }
        
    
    }
}

struct MacPortableIcon_Previews: PreviewProvider {
    static var previews: some View {
        MacPortableIcon()
    }
}
