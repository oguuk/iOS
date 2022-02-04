//
//  stacksWithSFSymbols.swift
//  uipractice
//
//  Created by 오국원 on 2022/02/04.
//

import SwiftUI

struct stacksWithSFSymbols: View {
    var body: some View {
        //Horizontal Stack(HStack) Vertical Stack(VStack) Depth Stack(ZStack)
        VStack{
            Image(systemName: "book.fill").imageScale(.small)
                .foregroundColor(.red)
            Image(systemName: "star.circle.fill").foregroundColor(.blue)
            Image(systemName: "speaker.1.fill").foregroundColor(.green)
        }
        HStack{
            Image(systemName: "book.fill").imageScale(.small)
                .foregroundColor(.red)
            Image(systemName: "star.circle.fill").foregroundColor(.blue)
            Image(systemName: "speaker.1.fill").foregroundColor(.green)
        }
        
        ZStack{
            Image(systemName: "book.fill").imageScale(.small)
                .foregroundColor(.red)
                .offset(x:5,y:5)
            Image(systemName: "star.circle.fill").foregroundColor(.blue)
            Image(systemName: "speaker.1.fill").foregroundColor(.green)
                .offset(x:-5,y:-5)
        }

    }
}

struct stacksWithSFSymbols_Previews: PreviewProvider {
    static var previews: some View {
        stacksWithSFSymbols()
    }
}
