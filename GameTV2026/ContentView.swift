import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    
    var body: some View {
        ZStack{
            Color("BackgroundColor").ignoresSafeArea()
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
                    Slider(value: $sliderValue, in: 1...100, step: 1)
                    Text("100")
                        .fontWeight(.bold)
                }
                Text("\(sliderValue)")
                Button("TRY"){
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
         actions: { Button("Got it"){print("Got it tapped")}},
        message: {Text("The slider value is \(Int(sliderValue))")}
        )
    }
}

#Preview {
    ContentView()
}
