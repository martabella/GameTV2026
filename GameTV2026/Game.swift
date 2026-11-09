struct Game{
    static let minValue = 1
    static let maxValue = 25
    private(set) var target = Int.random(in: Game.minValue...Game.maxValue)
    private(set) var points = 0
    
    mutating func calculatePoints(sliderValue: Double){
        self.points = 100-abs(target-Int(sliderValue))
    }
    
    mutating func startNewGame(){
        self.target = Int.random(in: Game.minValue...Game.maxValue)
    }
}

