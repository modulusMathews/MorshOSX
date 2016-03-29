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

    override func viewDidLoad() {
        super.viewDidLoad()
        euclidStore.subscribe(self)
    }
    
    func newState(state: EuclidState) {
        print(state)
        print(state.vector)
        print()
        textField.stringValue = "\(state)\n\(state.vector)"
    }
}

