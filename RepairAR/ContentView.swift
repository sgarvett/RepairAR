//
//  ContentView.swift
//  RepairAR
//
//  Created by Sam Garvett on 7/13/20.
//  Copyright © 2020 Sam Garvett. All rights reserved.
//

import SwiftUI
import RealityKit
import Combine

struct ContentView : View {
    @State private var showDeviceMenu = false
    
   var body: some View {
        
       
        ZStack(alignment: .bottom) {
            ARViewContainer().edgesIgnoringSafeArea(.all)
            
            
            Button(action: { self.showDeviceMenu.toggle() }) {
            Image(systemName: "plus.circle.fill")
                .resizable()
                .frame(width: 27, height: 27)
                       }
                    if showDeviceMenu {
                        DeviceSelectionMenu()
                    }       
        // .overlay(ProceduralLabelView())
        // 2nd button, just for testing purposes
           
    }
}
    
}



struct ARViewContainer: UIViewRepresentable {
   
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
           
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}


extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
}



// A style set for all buttons
struct SimpleButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
