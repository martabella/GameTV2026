struct Game{
    static let minValue = 1
    static let maxValue = 25
    private(set) var target = Int.random(in: Game.minValue...Game.maxValue)
    private(set) var points = 0
    private(set) var score = 0
    private(set) var rounds = 0
    
    mutating func calculatePoints(sliderValue: Double){
        self.points = 100-abs(target-Int(sliderValue))
        self.score += points
        self.rounds += 1
    }
    
    mutating func startNewRound(){
        self.target = Int.random(in: Game.minValue...Game.maxValue)
    }
    
    mutating func startNewGame(){
        self.score = 0
        self.rounds = 0
        self.startNewRound()
    }
    
    
}

