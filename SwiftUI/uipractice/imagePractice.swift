//
//  imagePractice.swift
//  uipractice
//
//  Created by 오국원 on 2022/02/04.
//

import SwiftUI

struct imagePractice: View {
    var body: some View {
        HStack(spacing: 30){
            Image("swift").resizable()//메서드 순서가 바뀌면 다른 결과 혹은 오류가 발생
                .clipShape(Circle())
                .frame(width: 100, height: 150)
            
            Image("swift").resizable()
                .scaledToFit()//원본 비율을 유지한 상태에서 최소 길이에 맞추어 scaledToFill()도 있음
                .frame(width:100, height:150)
        
            Image("swift").resizable()
                .aspectRatio(CGSize(width:1.6,height:1),contentMode: .fit)
                .frame(width:100, height:150)
                .clipped()
            
           /* Image("swift").renderingMode(.template).foregroundColor(.red)*/
            
        }
    }
}

struct imagePractice_Previews: PreviewProvider {
    static var previews: some View {
        imagePractice()
    }
}
