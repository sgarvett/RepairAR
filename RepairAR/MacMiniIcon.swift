//
//  MacMiniIcon.swift
//  RepairAR
//
//  Created by Samuel Garvett on 7/15/20.
//  Copyright © 2020 Sam Garvett. All rights reserved.
//

import SwiftUI

struct MacMiniIcon: View {
    var body: some View {
        
        ZStack (alignment: .trailing) {
            RoundedRectangle(cornerRadius: 3)
                .frame(width: 70, height: 20, alignment: .center)
                .foregroundColor(Color.blue)
             
        
            Circle()
                .frame(width: 5, height: 5, alignment: .trailing)
                .foregroundColor(Color.white)
                .padding(.trailing, 10)
            
        }
        
    }
}



struct MacMiniIcon_Previews: PreviewProvider {
    static var previews: some View {
        MacMiniIcon()
    }
}
