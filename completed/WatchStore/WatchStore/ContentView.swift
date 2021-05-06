//
//  ContentView.swift
//  WatchStore
//
//  Created by Craig Clayton on 5/2/21.
//

import SwiftUI

let watches: [WatchData] = [
    WatchData(id: "1", image: "apple-watch1"),
    WatchData(id: "2", image: "apple-watch2"),
    WatchData(id: "3", image: "apple-watch3"),
    WatchData(id: "4", image: "apple-watch4")
]

let icons: [String] = [
    "icon-settings",
    "icon-att",
    "icon-shape"
]

struct ContentView: View {
    @Namespace var animation
    @State var show = false
    @State var selectedWatch: WatchData!
    
    var body: some View {
        
        ZStack(alignment: .top) {
            Rectangle()
                .fill(Color.baseCharcoal)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 100)
            
            NavigationBarView()
            
            if !show {
                HStack(alignment: .top, spacing: 0) {
                    VStack {
                        ForEach(icons, id: \.self) { icon in
                            IconView(image: icon, isCustomImage: true)
                        }
                        
                        Spacer()
                        
                        VStack {
                            IconView(image: "suit.heart.fill")
                            IconView(image: "cart")
                            IconView(image: "icon-grid", isCustomImage: true)
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 183)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .trailing, spacing: 30) {
                            ForEach(watches) { watch in
                                Button(action: {
                                    withAnimation(.easeIn) {
                                        selectedWatch = watch
                                        show.toggle()
                                    }
                                }) {
                                    WatchRowItem(data: watch, animation: animation)
                                }.buttonStyle(PlainButtonStyle())
                            }
                        }
                    }
                    .padding(.top, 150)
                    .padding(.trailing, 20)
                }
            } else if selectedWatch != nil {
                DetailView(data: $selectedWatch, animation: animation, show: $show)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(selectedWatch: WatchData(id: "1", image: "apple-watch1"))
    }
}
