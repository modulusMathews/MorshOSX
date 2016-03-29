import Foundation
import ReSwift

struct EuclidReducer: Reducer {
    let baseState: EuclidState
  
    func handleAction(action: Action, state: EuclidState?) -> EuclidState {
        var newState = state ?? baseState
        
        if let euclidAction = action as? EuclidAction {
            switch euclidAction {
            case .ChangeDensity(let val):
                updateDensity(&newState, value: val)
                
            case .ChangePhase(let val):
                updatePhase(&newState, value: val)
            }
        }
        
        return newState
    }
}

extension EuclidReducer {
    init(defaultState: EuclidState) {
        self.baseState = defaultState
    }
}

private
func updateDensity(inout state: EuclidState, value: Int) {
    state.density += value
    
    state.density %= state.resolution + 1
    
    if state.density < 0 {
        state.density += state.resolution + 1
    }
}

private
func updatePhase(inout state: EuclidState, value: Int) {
    state.phase += value
    
    state.phase %= state.resolution
    
    if state.phase < 0 {
        state.phase += state.resolution
    }
}
