import Foundation
import ReSwift

struct EuclidReducer: Reducer {
    let baseState: EuclidState
  
    func handleAction(action: Action, state: EuclidState?) -> EuclidState {
        var newState = state ?? baseState
        
        switch action {
        case let euclidAction as EuclidChangeDensity:
            updateDensity(&newState, value: euclidAction.value)
            
        case let euclidAction as EuclidChangePhase:
            updatePhase(&newState, value: euclidAction.value)
        
        default: break
        }
        
        return newState
    }
}

extension EuclidReducer {
    init(defaultState: EuclidState) {
        self.baseState = defaultState
    }
}

func updateDensity(inout state: EuclidState, value: Int) {
    state.density += value
    
    state.density %= state.resolution + 1
    
    if state.density < 0 {
        state.density += state.resolution + 1
    }
}

func updatePhase(inout state: EuclidState, value: Int) {
    state.phase += value
    
    state.phase %= state.resolution
    
    if state.phase < 0 {
        state.phase += state.resolution
    }
}
