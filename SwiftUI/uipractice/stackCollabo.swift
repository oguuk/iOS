//
//  stackCollabo.swift
//  uipractice
//
//  Created by 오국원 on 2022/02/04.
//

import SwiftUI

struct stackCollabo: View {
    var body: some View {
        VStack{
            Text("stack연습").font(.largeTitle).fontWeight(.heavy)
            ZStack{
                Rectangle().frame(height:10)
                
                HStack{
                    Circle().fill(Color.yellow)
                    Ellipse().fill(Color.green)
                    Capsule().fill(Color.orange)
                    RoundedRectangle(cornerRadius: 30).fill(Color.gray)
                }
            }

            ZStack{
                Rectangle().frame(height: 10)
                
                HStack{
                    Color.red
                    Rectangle().fill(Color.blue)
                    RoundedRectangle(cornerRadius: 5).fill(Color.purple)
                }
            }
        }.padding()
    }
}

struct stackCollabo_Previews: PreviewProvider {
    static var previews: some View {
        stackCollabo()
    }
}
