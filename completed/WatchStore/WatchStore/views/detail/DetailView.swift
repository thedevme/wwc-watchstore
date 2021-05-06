//
//  DetailView.swift
//  WatchStore
//
//  Created by Craig Clayton on 5/3/21.
//

import SwiftUI

struct DetailView: View {
    @Binding var data: WatchData!
    var animation: Namespace.ID
    @Binding var show: Bool
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.white.edgesIgnoringSafeArea(.all)
            
            Rectangle()
                .fill(Color.baseCharcoal)
                .frame(height: 100)
                .edgesIgnoringSafeArea(.top)
                .zIndex(2)
            
            ZStack {
                HStack(spacing: 12) {
                    Button(action: {
                        withAnimation(.easeOut) {
                            self.show.toggle()
                        }
                    }) {
                        backButton
                    }
                    .buttonStyle(PlainButtonStyle())
                    .foregroundColor(.white)
                    
                    Spacer()
                }.padding(.horizontal, 24)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .frame(height: 128)
            .background(
                Rectangle()
                    .foregroundColor(.baseCharcoal)
                    .cornerRadius(26, corners: [.bottomLeft, .bottomRight])
            ).zIndex(2)
            
            ScrollView {
                HStack(alignment: .top, spacing: 0) {
                    VStack {
                        ForEach(0..<3) { _ in
                            icon
                        }
                    }
                    .padding(.top, 150)
                    
                    VStack {
                        Image(data.image)
                            .resizable()
                            .frame(width: 290, height: 296)
                            .matchedGeometryEffect(id: data.id, in: animation, isSource: show)
                        
                        VStack(spacing: 20) {
                            HStack {
                                Text("Huawei GT 2 Pro")
                                    .font(.custom(.medium, 24))
                                Text("|")
                                Text("$279")
                                    .font(.custom(.bold, 24))
                                    .foregroundColor(.basePink)
                            }
                            
                            Text("GPS, GPS Cellular")
                                .foregroundColor(.baseCharcoal40)
                                .font(.custom(.medium, 20))
                            
                            HStack {
                                Button(action: {}) {
                                    Text("Live Preview")
                                        .font(.custom(.bold, 18))
                                }
                                .buttonStyle(PlainButtonStyle())
                                .padding(14)
                                .background(Color.basePink)
                                .cornerRadius(14)
                                
                                Image(systemName: "suit.heart.fill")
                                    .padding(14)
                                    .background(Color.baseYellow)
                                    .cornerRadius(14)
                            }
                            .foregroundColor(.white)
                            
                            HStack(spacing: 20) {
                                Text("Features")
                                    .font(.custom(.medium, 32))
                                    .foregroundColor(.baseCharcoal)
                                
                                Text("Specifications")
                                    .font(.custom(.medium, 32))
                                    .foregroundColor(.baseCharcoal40)
                            }
                            
                            Text("The wear-resistant sapphire watch dial pairs seamlessly with the titanium frame for a lightweight and solid design.")
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.custom(.regular, 17))
                                .foregroundColor(.baseCharcoal60)
                            
                            HStack(spacing: 40) {
                                Button(action: {}) {
                                    Text("Add to Cart")
                                        .font(.custom(.bold, 20))
                                        .foregroundColor(.baseCharcoal)
                                }
                                .padding(20)
                                .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.baseCharcoal40, lineWidth: 1)
                                    )
                                
                                Button(action: {}) {
                                    Text("Buy Now")
                                        .font(.custom(.bold, 20))
                                        .foregroundColor(.white)
                                }
                                .padding(20)
                                .background(Color.baseCharcoal)
                                .cornerRadius(14)
                            }
                        }
                    }
                    .padding(.top, 150)
                    
                    VStack(spacing: 20) {
                        Circle()
                            .fill(Color.red)
                            .frame(width: 24, height: 24)
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 17, height: 17)
                        Circle()
                            .frame(width: 17, height: 17)
                    }
                    .padding(.top, 150)
                    
                }
            }
            .zIndex(1)
        }
    }
    
    var icon: some View {
        ZStack {
            Rectangle()
                .fill(Color.baseCharcoal10)
                .cornerRadius(15)
                .frame(height: 48)
        }
        .frame(width: 48, height: 48)
    }
    
    var backButton: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .strokeBorder(Color.white, lineWidth: 2)
                .background(Color.baseCharcoal)
            Image(systemName: "chevron.left")
        }
        .frame(width: 48, height: 48)
        .mask(RoundedRectangle(cornerRadius: 15))
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView(data: WatchData(image: "apple-watch1"))
//    }
//}
