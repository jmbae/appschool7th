import Foundation

//runOptional()
//runFunction()
//runClass()
//runStruct()
//runEnum()
//runClosure()
//runProtocol()
//runTypealias()

enum PoolBallType {
    case solid
    case stripe
    case black
}

func poolBallType(forNumber number: Int) -> PoolBallType {
    if number < 8 {
        return .solid
    } else if number > 8 {
        return .stripe
    } else {
        return .black
    }
}

let two = poolBallType(forNumber: 2)
let eight = poolBallType(forNumber: 8)
let twelve = poolBallType(forNumber: 12)
