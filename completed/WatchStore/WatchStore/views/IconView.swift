//
//  IconView.swift
//  WatchStore
//
//  Created by Craig Clayton on 5/5/21.
//

import SwiftUI

struct IconView: View {
    let image: String
    var isCustomImage: Bool = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.baseCharcoal10)
                .cornerRadius(15)
                .frame(height: 48)
            
            if isCustomImage {
                Image(image)
            } else {
                Image(systemName: image)
                    .font(.system(size: 24))
            }
        }
        .frame(width: 48, height: 48)
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        IconView(image: "icon-att")
    }
}
