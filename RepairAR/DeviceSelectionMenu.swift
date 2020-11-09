//
//  DeviceSelectionMenu.swift
//  RepairAR
//
//  Created by Samuel Garvett on 7/14/20.
//  Copyright © 2020 Sam Garvett. All rights reserved.
//

import SwiftUI

struct DeviceSelectionMenu: View {
    @State private var showDetails = false
    
    var body: some View {
        
        
      HStack(alignment: .center){
    
            Button(action: {
                print("iphone button pressed")
            }) {
                ZStack {
                    ButtonBackground()
                    iPhoneIcon()
                    }
            }
            
        Spacer()
            
            Button(action:
                    {print("mac button pressed")
                        })
            {
                ZStack{
                    ButtonBackground()
                    MacPortableIcon()
                }
            }
            
        }
      .frame(width: 200, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .offset(x: 0, y: -30)
            }
    
    
            
            
           
//            VStack {
//
//                MacPortableIcon()
//                Spacer(minLength: 2)
//                iMacIcon()
//                //.frame(maxWidth: .infinity, maxHeight: 50 )
//                //.background(Color.blue.opacity(0.3))
//                //.cornerRadius(6)
//                Spacer()
//                MacMiniIcon()
//                Spacer()
//                iPhoneIcon()
//            }

//            .frame(width: 200, height: 350)
            
        }
        

    

    

//        .padding()
        
        
//            .frame(width: 800, height: 400, alignment: .leading)
//            .background(Color.blue.opacity(0.1))
//            .cornerRadius(20)
//    .offset(x: 0, y: -30)
//        .animation(.spring())
        
    


struct DeviceSelectionMenu_Previews: PreviewProvider {
    static var previews: some View {
        DeviceSelectionMenu()
    }
}

