import SwiftUI

struct BackgroundView: View {

    @Environment(GameStore.self) var gameStore
    
    @State private var showSheet = false
    
    var body: some View {
        ZStack{
            Color("BackgroundColor").ignoresSafeArea()
            VStack{
                HStack{
                    Button(action: {
                        gameStore.intentResetGame()
                    }, label: {
                        SymbolView(symbolName: "arrow.clockwise")
                    }).foregroundStyle(.primary)
                    
                    Spacer()
                    Button(action: {
                        showSheet = true
                    }, label: {
                        SymbolView(symbolName: "list.dash")
                    }).foregroundStyle(.primary)
                    
                }
                Spacer()
                HStack{
                    NumberView(text: "SCORE", value: gameStore.game.score)
                    Spacer()
                    NumberView(text: "ROUND", value: gameStore.game.rounds)
                }
            }.padding()
        }
        .sheet(isPresented: $showSheet){
            MarksView()
        }
    }
}

#Preview {
    BackgroundView().environment(GameStore())
}
