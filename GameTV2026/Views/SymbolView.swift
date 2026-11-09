import SwiftUI

struct SymbolView: View{
    let symbolName:String
    var body: some View{
        Image(systemName: symbolName)
            .font(.title)
            .frame(width: 56, height: 56)
            .overlay(Circle().stroke())
    }
}

#Preview {
    SymbolView(symbolName: "list.dash")
}
