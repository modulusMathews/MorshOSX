//
//  shape.actions.swift
//  MorshOSX
//
//  Created by jMath on 3/29/16.
//  Copyright © 2016 jMath. All rights reserved.
//

import Foundation
import ReSwift


struct ShapeAddLayer: Action {}
struct ShapeRemoveLayer: Action {}

let shapeAddLayer = { ShapeAddLayer() }
let shapeRemoveLayer = { ShapeRemoveLayer() }