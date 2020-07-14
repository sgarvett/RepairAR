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
                VStack {
                  Text("Title")
                  Text("body")
            }
        }
    }
}

struct ProceduralLabelView_Previews: PreviewProvider {
    static var previews: some View {
        ProceduralLabelView()
    }
}
