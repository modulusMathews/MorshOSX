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
let euclidState = EuclidState(resolution: resolution)
let euclidReducer = EuclidReducer(defaultState: euclidState)
let euclidStore = Store(reducer: euclidReducer, state: euclidState)


@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

