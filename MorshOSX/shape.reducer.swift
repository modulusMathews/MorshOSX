//
//  shape.reducer.swift
//  MorshOSX
//
//  Created by jMath on 3/29/16.
//  Copyright © 2016 jMath. All rights reserved.
//

import Foundation
import ReSwift


struct ShapeReducer: Reducer {
    let baseState: ShapeState
    
    func handleAction(action: Action, state: ShapeState?) -> ShapeState {
        var newState = state ?? baseState
        
        switch action {
        case let euclidAction as EuclidChangeDensity:
            let lastIndex = newState.count - 1
            var layer = newState.layers[lastIndex]
            updateDensity(&layer, value: euclidAction.value)
            newState.layers[lastIndex] = layer
            
        case let euclidAction as EuclidChangePhase:
            let lastIndex = newState.count - 1
            var layer = newState.layers[lastIndex]
            updatePhase(&layer, value: euclidAction.value)
            newState.layers[lastIndex] = layer
            
        case _ as ShapeAddLayer:
            let newResolution = newState.layers.last!.density
            let newLayer = EuclidState(resolution: newResolution, density: newResolution, phase: 0)
            newState.layers.append(newLayer)
            
        case _ as ShapeRemoveLayer:
            newState.layers.removeLast()
            
        default: break
        }
        
        return newState
    }
}

extension ShapeReducer {
    init(defaultState: ShapeState) {
        self.baseState = defaultState
    }
}