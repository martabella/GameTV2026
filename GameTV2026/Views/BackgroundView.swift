import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor")
            VStack{
                HStack{
                    SymbolView(symbolName: "arrow.clockwise")
                    Spacer()
                    SymbolView(symbolName: "list.dash")
                }
                Spacer()
                HStack{
                    NumberView(text: "SCORE", value: 0)
                    Spacer()
                    NumberView(text: "ROUND", value: 0)
                }
            }.padding()
        }
    }
}

#Preview {
    BackgroundView()
}
