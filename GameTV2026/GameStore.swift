import Observation

@Observable
class GameStore{
    private(set) var game = Game()
    
    func intentResetGame(){
        game.startNewGame()
    }
    
    func intentCalculatePoints(with value:Double){
        game.calculatePoints(sliderValue: value)
    }
    
    func intentStartNewRound(){
        game.startNewRound()
    }
}

