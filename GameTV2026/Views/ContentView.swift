import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    @State private var sliderValue = Double(Game.minValue)
    
    //@State private var game = Game()
    @Environment(GameStore.self) var gameStore
    
    var body: some View {
        ZStack{
            BackgroundView()
            VStack{
                Text("GUESS THE NUMBER")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("\(gameStore.game.target)")
                    .font(.largeTitle)
                    .kerning(-1)
                    .fontWeight(.bold)
                
                SliderView(value: $sliderValue, minValue: Double(Game.minValue), maxValue: Double(Game.maxValue))
                Text("\(sliderValue)")
                Button("TRY"){
                    gameStore.intentCalculatePoints(with: sliderValue)
                    alertIsVisible = true
                }
                .font(.title3)
                .foregroundStyle(Color.white)
                .padding()
                .background(Color.accent)
                .cornerRadius(21)
                
                
            }
            .padding()
        }
        .alert("Congratulations",
         isPresented: $alertIsVisible,
               actions: {
            Button("Got it"){
                gameStore.intentStartNewRound()
                self.sliderValue = Double(Game.minValue)
            }
        },
               message: {Text("The slider value is \(Int(sliderValue)) and your points are \(gameStore.game.points)")}
        )
    }
}

struct SliderView : View{
    @Binding var value: Double
    var minValue:Double
    var maxValue:Double
    
    var body: some View{
        HStack{
            Text("\(Int(minValue))")
                .fontWeight(.bold)
            Slider(value: $value, in: minValue...maxValue, step: 1)
            Text("\(Int(maxValue))")
                .fontWeight(.bold)
        }
    }
}

#Preview {
    ContentView().environment(GameStore())
}
