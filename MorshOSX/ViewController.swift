//
//  ViewController.swift
//  MorshOSX
//
//  Created by jMath on 3/28/16.
//  Copyright © 2016 jMath. All rights reserved.
//

import Cocoa
import ReSwift

class ViewController: NSViewController, StoreSubscriber {
    @IBOutlet weak var textField: NSTextField!
    

    override
    func viewDidLoad() {
        super.viewDidLoad()
        shapeStore.subscribe(self)
    }
    
    func newState(state: ShapeState) {
        var output = ""
        
        for layer in state.layers {
//            output += "\(layer)" + "\n"
            output += "\(layer.string)" + "\n"
            output += "\n"
        }
        
        textField.stringValue = output
    }
}

