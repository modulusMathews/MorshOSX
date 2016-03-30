import Foundation
import ReSwift

struct EuclidState: Euclid, StateType {
    let resolution: Int
    var density: Int
    var phase: Int
}


extension EuclidState {
    init (resolution: Int) {
        self.resolution = resolution
        self.density = 0
        self.phase = 0
    }
}