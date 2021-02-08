//
//  testFile.swift
//  testingApp
//
//  Created by Samuel Garvett on 5/17/19.
//  Copyright © 2019 Samuel Garvett. All rights reserved.
//

import Foundation
import UIKit


class TestClass {
    var colorIndex = 0
    let colorSetName = ["red", "green","blue"]
    private let color = [UIColor.red, UIColor.green, UIColor.blue]
    
    func name(_ index: Int) -> String {
        return colorSetName[index]
    }
    
}


var newVar = TestClass()


