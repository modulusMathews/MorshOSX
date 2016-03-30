//
//  AppDelegate.swift
//  MorshOSX
//
//  Created by jMath on 3/28/16.
//  Copyright © 2016 jMath. All rights reserved.
//

import Cocoa
import ReSwift


let resolution = 12
let shapeState = ShapeState(resolution: resolution)
let shapeReducer = ShapeReducer(defaultState: shapeState)
let shapeStore = Store(reducer: shapeReducer, state: shapeState)


@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
}

