import Foundation
import ReSwift

struct EuclidChangeDensity: Action {
    let value: Int
}

struct EuclidChangePhase: Action {
    let value: Int
}

let euclidChangeDensity = { val in EuclidChangeDensity(value: val) }
let euclidChangePhase = { val in EuclidChangePhase(value: val) }