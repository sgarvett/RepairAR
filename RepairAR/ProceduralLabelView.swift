//
//  ProceduralLabelView.swift
//  RepairAR
//
//  Created by Sam Garvett on 7/14/20.
//  Copyright © 2020 Sam Garvett. All rights reserved.
//

import SwiftUI

struct ProceduralLabelView: View {
    var body: some View {
        
        HStack {
            
            Image(systemName: "i.square.fill")
                Spacer()
            VStack(alignment: .leading, spacing: 10) {
                Text("Repair Title")
                    .font(.title)
                  Text("Placeholder for repair steps. Information of current step will be placed here")
            }
            
        }
        .frame(width: 375, height: 125, alignment: .leading)
        .padding(8)
        .background(Color.yellow.opacity(0.7))
        .cornerRadius(15.0)
    
    }
    
}

struct ProceduralLabelView_Previews: PreviewProvider {
    static var previews: some View {
        ProceduralLabelView()
    }
}
