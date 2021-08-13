import Foundation

protocol GameDelegate: AnyObject {
    func stateChanged(from oldState: Game.State, to newState: Game.State)
}

class Game {
    private var state: State = .notStarted {
        didSet {
            delegate?.stateChanged(from: oldValue, to: state)
        }
    }
    
    weak var delegate: GameDelegate?
    
    private(set) var value: Int = 0
    
    func start() {
        state = .started
    }
    
    func generateNextValue() {
        value = Int.random(in: 0..<1000)
      //  state = generateS
    }
}

extension Game {
    enum State {
        case notStarted
        case started
        case right
        case win
        case lost
    }
}
