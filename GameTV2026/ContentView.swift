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
                
                SliderView(value: $sliderValue, minValue: 1, maxValue: 100)
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
    ContentView()
}
