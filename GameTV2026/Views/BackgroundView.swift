import SwiftUI

struct BackgroundView: View {
    
    @Binding var game: Game
    
    var body: some View {
        ZStack{
            Color("BackgroundColor").ignoresSafeArea()
            VStack{
                HStack{
                    Button(action: {
                        game.startNewGame()
                    }, label: {
                        SymbolView(symbolName: "arrow.clockwise")
                    }).foregroundStyle(.primary)
                    
                    Spacer()
                    SymbolView(symbolName: "list.dash")
                }
                Spacer()
                HStack{
                    NumberView(text: "SCORE", value: game.score)
                    Spacer()
                    NumberView(text: "ROUND", value: game.rounds)
                }
            }.padding()
        }
    }
}

#Preview {
    BackgroundView(game: .constant(Game()))
}
