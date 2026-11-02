import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("GUESS THE NUMBER")
            Text("89")
            HStack{
                Text("1")
                Slider(value: .constant(20), in: 1...100, step: 1)
                Text("100")
            }
            Button("TRY"){
                print("button tapped")
            }
        }
    }
}

#Preview {
    ContentView()
}
