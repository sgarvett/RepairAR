//
//  iMacIcon.swift
//  RepairAR
//
//  Created by Sam Garvett on 7/17/20.
//  Copyright © 2020 Sam Garvett. All rights reserved.
//

import SwiftUI

struct iMacIcon: View {
    var body: some View {
        
        
        ZStack {
            RoundedRectangle(cornerRadius: 3, style: .continuous)
                .stroke(Color.blue, lineWidth: 2.5)
            RoundedRectangle(cornerRadius: 2).fill(Color.blue)
                .offset(x: 0, y: 20)
                .frame(width: 70, height: 8)
            
            Path { path in
                path.move(to: CGPoint(x: 30, y: 50))
                path.addLine(to: CGPoint(x: 40, y: 50))
                path.addLine(to: CGPoint(x: 48, y: 62))
                path.addLine(to: CGPoint(x: 23, y: 62 ))
                }
            .fill(Color.blue)
            
            RoundedRectangle(cornerRadius: 1)
                .offset(x: 0.5, y: 37)
                .fill(Color.blue)
                .frame(width: 30, height: 1.5, alignment: .bottom)
            
            
           }
        
        .frame(width: 70, height: 50)
    }
    
    
    
}

struct iMacIcon_Previews: PreviewProvider {
    static var previews: some View {
        iMacIcon()
    }
}
