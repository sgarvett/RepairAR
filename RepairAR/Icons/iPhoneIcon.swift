//
//  iPhoneIcon.swift
//  RepairAR
//
//  Created by Sam Garvett on 7/17/20.
//  Copyright © 2020 Sam Garvett. All rights reserved.
//

import SwiftUI

struct iPhoneIcon: View {
    var body: some View {
        ZStack(alignment: .top) {
            
            RoundedRectangle(cornerRadius: 1, style: .circular)
            .foregroundColor(Color.blue)
            .frame(width: 7, height: 2)
            
            RoundedRectangle(cornerRadius: 3, style: .circular)
                .stroke(Color.blue)
                .frame(width: 15, height: 30)
            
            
            
        }
    }
}

struct iPhoneIcon_Previews: PreviewProvider {
    static var previews: some View {
        iPhoneIcon()
    }
}
