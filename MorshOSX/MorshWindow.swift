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
            shapeStore.dispatch(euclidChangeDensity(1))
        case 43: // , --> decrementDensity
            shapeStore.dispatch(euclidChangeDensity(-1))
            
        case 37: // l --> incrementPhase
            shapeStore.dispatch(euclidChangePhase(1))
        case 38: // j --> decrementPhase
            shapeStore.dispatch(euclidChangePhase(-1))
            
        case 44: // / --> addLayer
            shapeStore.dispatch(shapeAddLayer())
        case 47: // . --> removeLayer
            shapeStore.dispatch(shapeRemoveLayer())
            
        default:
            Swift.print("\(event.keyCode)")
        }
    }
}
