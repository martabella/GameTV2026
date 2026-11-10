import SwiftUI

struct MarksView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            Button("Close"){
                dismiss()
            }
            Text("Todo show marks")
        }
    }
    
}

#Preview {
    MarksView()
}
