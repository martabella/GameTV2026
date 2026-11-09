import SwiftUI


struct NumberView: View {
    let text:String
    let value: Int
    
    var body: some View{
        VStack{
            Text(text)
            Text("\(value)")
                .frame(width: 100,height: 56)
                .overlay(RoundedRectangle(cornerRadius: 21).stroke())
        }
    }
}

#Preview {
    NumberView(text: "ROUND", value: 99999)
}
