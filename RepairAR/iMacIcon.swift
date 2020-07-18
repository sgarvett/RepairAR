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
                path.move(to: CGPoint(x: 100, y: 10))
                path.addLine(to: CGPoint(x: 120, y: 30))
                
            }
            .stroke(Color.blue, lineWidth: 1)
            
            }
        .frame(width: 70, height: 50)
    }
}

struct iMacIcon_Previews: PreviewProvider {
    static var previews: some View {
        iMacIcon()
    }
}
