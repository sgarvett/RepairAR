//
//  SwiftUIView.swift
//  RepairAR
//
//  Created by Samuel Garvett on 8/8/20.
//  Copyright © 2020 Sam Garvett. All rights reserved.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        
        ZStack {
            
            Color.offWhite
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.offWhite)
                .frame(width: 300, height: 300)
            iPhoneIcon()
            
        }
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
