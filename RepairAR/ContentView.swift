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
    @State private var showAlert = true

    
   var body: some View {
    
    
    // test button press
    
//    var moveOnYaxis = Experience.Box.transformMatrix(self)
    
    Text("pressed")
        .gesture(TapGesture(count:1)
                    .onEnded { _ in print("pressed")})


        ZStack(alignment: .bottom) {
            ARViewContainer().edgesIgnoringSafeArea(.all)
            
            
            Button(action: {
                withAnimation(.easeInOut(duration:5)){
                    self.showDeviceMenu.toggle()
                }
            }) {
            Image(systemName: "plus.circle.fill")
                .resizable()
                .frame(width: 30, height: 30)
                       }
                    if showDeviceMenu {
                        DeviceSelectionMenu()
                        back_forward_buttons()
                    }
            

        // .overlay(ProceduralLabelView())
            
            
            }
        
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Scan surface"), message: Text("Move iPad around slowly to scan surface where you want to place object"), dismissButton: .default(Text("Got it!")))
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
    
        // transform on y-axis
//        boxAnchor.children[1].anchor!.transform.translation = SIMD3(0,1,0)
        
        
        // write all button code in here see if works. if it works then write all button presses and animation in this section
        
        
        // view the hiarchy of the anchors in the scene  
        print(arView.scene.anchors)
    
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {
        
    }
    
}


extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
}



// A style set for all buttons
//struct SimpleButtonStyle: ButtonStyle {
//    func makeBody(configuration: Self.Configuration) -> some View {
//        configuration.label
//    }
//}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
