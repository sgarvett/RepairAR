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
            
            Image("battery")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 120)
                
                .cornerRadius(12)
                .overlay(RoundedRectangle(cornerRadius: 11).stroke(Color.blue, lineWidth: 1))
                .shadow(radius: 5)
                
                
                Spacer()
            VStack(alignment: .leading, spacing: 4) {
                Text("Repair Title")
                    .font(.title)
                  Text("Placeholder for repair steps. Information of current step will be placed here. it should be between three to four lines long.")
                   }
                    .foregroundColor(Color.white)
            
        }
        .frame(width: 375, height: 125, alignment: .leading)
        .padding(8)
        .background(Color.blue.opacity(0.7))
        .cornerRadius(15.0)
    }

}

struct ProceduralLabelView_Previews: PreviewProvider {
    static var previews: some View {
        ProceduralLabelView()
    }
}
