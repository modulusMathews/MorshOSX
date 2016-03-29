import Foundation
import ReSwift

enum EuclidAction: Action {
    case ChangeDensity(Int)
    case ChangePhase(Int)
}

let changeDensity = EuclidAction.ChangeDensity
let changePhase = EuclidAction.ChangePhase