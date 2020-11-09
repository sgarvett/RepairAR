//
//  back-forward-buttons.swift
//  RepairAR
//
//  Created by Samuel Garvett on 8/31/20.
//  Copyright © 2020 Sam Garvett. All rights reserved.
//

import SwiftUI

struct back_forward_buttons: View {
    
    var repairStepCounter = 0
    
    
    var body: some View {
        HStack() {
            
            Button(action: {
                print("Button tapped")
                if self.repairStepCounter == 1 {
                    print("move forward")
                }
                
            }) {
                Image(systemName: "arrow.left.circle")
                .resizable()
            }
            
        Spacer(minLength: 1075)
            
            Button(action: {print("button tapped")}) {
                Image(systemName: "arrow.right.circle")
                .resizable()
            }
            
        .frame(height: 40, alignment: .center)
        .padding()
        }
    }
}

struct back_forward_buttons_Previews: PreviewProvider {
    static var previews: some View {
        back_forward_buttons()
    }
}
