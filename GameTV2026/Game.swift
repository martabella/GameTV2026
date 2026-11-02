struct Game{
    private(set) var target = Int.random(in: 1...100)
    private(set) var points = 0
    
    mutating func calculatePoints(sliderValue: Double){
        self.points = 500
    }
}

