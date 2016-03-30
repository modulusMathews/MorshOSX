//
//  shape.state.swift
//  MorshOSX
//
//  Created by jMath on 3/29/16.
//  Copyright © 2016 jMath. All rights reserved.
//

import Foundation
import ReSwift


struct ShapeState: Shape, StateType {
    var layers: [EuclidState]
}

extension ShapeState {
    var count: Int { return layers.count }
}

extension ShapeState {
    init(resolution: Int) {
        self.layers = [EuclidState(resolution: resolution)]
    }
}

