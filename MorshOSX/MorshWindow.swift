//
//  MorshWindow.swift
//  MorshOSX
//
//  Created by jMath on 3/28/16.
//  Copyright © 2016 jMath. All rights reserved.
//

import Foundation
import Cocoa

class MorshWindow: NSWindow {
    override
    func keyDown(event: NSEvent) {
        switch event.keyCode {
        default: break
        }
    }
    
    override
    func keyUp(event: NSEvent) {
        switch event.keyCode {
        case 34: // i --> incrementDensity
            euclidStore.dispatch(changeDensity(1))
        case 43: // , --> decrementDensity
            euclidStore.dispatch(changeDensity(-1))
            
        case 37: // l --> incrementPhase
            euclidStore.dispatch(changePhase(1))
        case 38: // j --> decrementPhase
            euclidStore.dispatch(changePhase(-1))
            
        default:
            Swift.print("\(event.keyCode)")
        }
    }
}
