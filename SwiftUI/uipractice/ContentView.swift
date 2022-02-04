//
//  ContentView.swift
//  uipractice
//
//  Created by 오국원 on 2022/02/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30) {//세로 방향으로 뷰를 배열하는 컨테이너 뷰
            Text("폰트와 굵기 설정")
                .font(.title)//폰트 설정
                .fontWeight(.black)//폰트 굵기
            
            Text("글자색은 foreground, 배경은 background")
                .foregroundColor(.white)//글자색
                .padding()//텍스트 주변 여백 설정
                .background(.blue)//텍스트의 배경 설정(Color 명시)
            
            Text("커스텀 폰트, 볼드체, 이탤릭체, 밑줄, 취소선")
                .font(.custom("Menlo",size:16))//커스텀 폰트 설정
                .bold()//볼드체
                .italic()//이탤릭체
                .underline()//밑줄
                .strikethrough()//취소선
            
            Text("라인 수 제한과 \n 텍스트 정렬 기능입니다. \n 이건 안보입니다.")
                .lineLimit(2)//텍스트를 최대 2줄까지만 표현
                .multilineTextAlignment(.trailing)//다중행 문자열의 정렬 방식 지정
                .fixedSize()//주어진 공간의 크기가 작아도 텍스트를 생략하지 않고 표현되도록 설정
            
            (Text("자간과 기준선").kerning(8)//자간
             + Text(" 조정도 쉽게 가능합니다.").baselineOffset(8))//기준선
                .font(.system(size:16))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
