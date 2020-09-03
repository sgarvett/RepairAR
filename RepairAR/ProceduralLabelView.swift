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
                Text("Battery")
                    .font(.title)
                  Text("Remove battery cowlings and disconnect battery.")
                Image(systemName: "arrow")
                   }
                    .foregroundColor(Color(red: 61/256, green: 61/256, blue: 62/256))
            Spacer()
            
        }
            
            
        .frame(width: 375, height: 125, alignment: .leading)
        .padding(8)
            
        .background(Color.offWhite.opacity(0.7))
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
        
        .cornerRadius(15.0)
        
        
        
        
        
    
    }
    


}

struct ProceduralLabelView_Previews: PreviewProvider {
    static var previews: some View {
        ProceduralLabelView()
    }
}
