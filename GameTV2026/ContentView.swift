import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("GUESS THE NUMBER")
                .font(.largeTitle)
                .fontWeight(.bold)
                
            Text("89")
                .font(.largeTitle)
                .kerning(-1)
                .fontWeight(.bold)
        
            HStack{
                Text("1")
                    .fontWeight(.bold)
                Slider(value: .constant(20), in: 1...100, step: 1)
                Text("100")
                    .fontWeight(.bold)
            }
            Button("TRY"){
                print("button tapped")
            }
            .font(.title3)
            .foregroundStyle(Color.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(21)
            
            
        }.padding()
    }
}

#Preview {
    ContentView()
}
