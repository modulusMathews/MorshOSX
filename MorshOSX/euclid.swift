import Foundation

// Base State
protocol Euclid {
    var resolution: Int { get }
    var density: Int { get }
    var phase: Int { get }
}

// Compute Vector
extension Euclid {
    var vector: [Bool] {
        return vecGen(lhs: density, rhs: resolution - density, phase: phase)
    }
}

// Compute Vector as String
extension Euclid {
    var string: String {
        return vector.reduce("") { $0 + ($1 ? "1" : "0") }
    }
}

//// Computation Utitlities
private
func vecGen(lhs lhs: Int, rhs: Int, phase: Int) -> [Bool] {
    if lhs == 0 && rhs == 0 { return [] }
    
    let coreVec = lhs > 0 ? recCoreVecGen(lhs, [true], rhs, [false]) : [false]
        
    return coreToFull(coreVec, resolution: lhs + rhs, phase: phase)
}

private
func recCoreVecGen(lhs: Int, _ lhsVec: [Bool], _ rhs: Int, _ rhsVec: [Bool]) -> [Bool] {
    if rhs == 0 { return lhsVec }
    
    return lhs > rhs ?
        recCoreVecGen(lhs - rhs, lhsVec, rhs, lhsVec + rhsVec):
        recCoreVecGen(lhs, lhsVec + rhsVec, rhs - lhs, rhsVec)
}

private
func coreToFull(coreVec: [Bool], resolution: Int, phase: Int) -> [Bool] {
    if (resolution == 0) { return [] }
    
    var result: [Bool] = []
    let coreLength = coreVec.count
    
    for i in 0..<resolution {
        let index = (resolution - phase + i) % resolution
        result.append(coreVec[index % coreLength])
    }
    
    return result
}