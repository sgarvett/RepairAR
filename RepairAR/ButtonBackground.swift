//
//  ButtonBackground.swift
//  RepairAR
//
//  Created by Samuel Garvett on 9/17/20.
//  Copyright © 2020 Sam Garvett. All rights reserved.
//

import SwiftUI

struct ButtonBackground: View {
    var body: some View {
        HStack {
        RoundedRectangle(cornerRadius: 15, style: .continuous)
            .fill(Color.offWhite.opacity(0.5))
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
            }
        .frame(width: 80, height: 80, alignment: .center)
    }
}

struct ButtonBackground_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBackground()
    }
}
