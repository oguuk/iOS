//
//  overlayAndBackground.swift
//  uipractice
//
//  Created by 오국원 on 2022/02/04.
//

import SwiftUI

struct overlayAndBackground: View {
    var body: some View {
        Circle()
            .fill(Color.yellow.opacity(0.8))
            .frame(width: 250, height: 250)
            .overlay(Text("Joystick").font(.largeTitle))
            .overlay(Image(systemName: "arrow.up").font(.title).padding(),alignment: .top)
            .overlay(Image(systemName: "arrow.left").font(.title).padding(),alignment: .leading)
            .overlay(Image(systemName: "arrow.up.right.circle.fill").font(.title).padding(),alignment: .topTrailing)
            .background(Image(systemName: "arrow.right").font(.title).padding(),alignment: .trailing)
            .background(Image(systemName: "arrow.down").font(.title).padding(),alignment: .bottom)
    }
}

struct overlayAndBackground_Previews: PreviewProvider {
    static var previews: some View {
        overlayAndBackground()
    }
}
