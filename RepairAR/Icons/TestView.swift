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
            
            Button(action: { print("button is pressed") } )
            {Image(systemName: "heart.fill")
                .foregroundColor(.gray)
            }
        .buttonStyle(SimpleButtonStyle())
        }
        
    }
}


struct SimpleButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .padding(30)
        .background(
            Group {
                if configuration.isPressed {
            Circle()
                .fill(Color.offWhite)
                } else {
                    Circle()
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                        }
                    }
                )
            }
        }
      






struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
