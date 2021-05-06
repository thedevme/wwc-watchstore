import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        ZStack {
            HStack(spacing: 12) {
                profileIcon
                searchBar
            }.padding(.horizontal, 24)
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .frame(height: 128)
        .background(
            Rectangle()
                .foregroundColor(.baseCharcoal)
                .cornerRadius(26, corners: [.bottomLeft, .bottomRight])
        )
    }
    
    var profileIcon: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .strokeBorder(Color.white, lineWidth: 2)
                .background(Color.baseYellow)
            Image("user-headshot")
        }
        .frame(width: 48, height: 48)
        .mask(RoundedRectangle(cornerRadius: 15))
    }
    
    var searchBar: some View {
        ZStack {
            Rectangle()
                .fill(Color.white)
                .cornerRadius(15)
                .frame(height: 48)
            
            HStack {
                Text("I'm looking for")
                    .font(.custom(.medium, 18))
                    .foregroundColor(.baseCharcoal20)
                    .padding(.leading)
                Spacer()
                
                ZStack {
                    Rectangle()
                        .fill(Color.basePink)
                        .cornerRadius(15)
                        .frame(height: 48)
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 24))
                }
                .frame(width: 48, height: 48)
            }
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}
