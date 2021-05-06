import SwiftUI

struct WatchRowItem: View {
    var data: WatchData
    var animation: Namespace.ID
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(Color.baseCharcoal10)
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 340)
                .cornerRadius(20)
            
            VStack(spacing: 0) {
                Image(data.image)
                    .resizable()
                    .frame(width: 229, height: 234)
                    .matchedGeometryEffect(id: data.id, in: animation)
                    .padding(.bottom, 55)
                
                VStack {
                    VStack {
                        Text("Apple Watch 6")
                            .font(.custom(.bold, 24))
                        Text("1.64” Vivid Display")
                            .font(.custom(.mediumItalic, 18))
                            .foregroundColor(.baseCharcoal40)
                    }
                    .padding(.bottom, 12)
                    
                    HStack {
                        Text("$999")
                            .font(.custom(.bold, 24))
                            .foregroundColor(.white)
                            .padding(10)
                    }
                    .background(Color.basePink)
                    .cornerRadius(10)
                }.offset(y: -20)
            }
        }
    }
}
