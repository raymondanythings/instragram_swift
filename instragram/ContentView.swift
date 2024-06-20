//
//  ContentView.swift
//  instragram
//
//  Created by eltov on 6/21/24.
//

import SwiftUI

struct ContentView: View {
    @State var isToggled  = false
    var body: some View {
        VStack {
            HStack{
                Image("chevron-left")
                    .resizable()
                    .frame(width: 30,height: 30)
                HStack(spacing: 10){
                    AsyncImage(url:URL(string: "https://fastly.picsum.photos/id/295/200/200.jpg?hmac=nsWHMt5f11TALPFeS_0t6tIlO2CkViBNAbAbSlhu8P4"))
                        .frame(width:40,height: 40)
                        .scaledToFit()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .scaleEffect(isToggled ? 0.6 :1)
                    VStack(alignment:.leading){
                        Text("엽용현").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.system(size: 20))
                        Text("ABCDDFDFDSF")
                    }
                }
                Spacer()
                HStack(spacing: 16) {
                    Image(systemName: "phone")
                    Image(systemName: "video")
                    Image(systemName: "bookmark")
                }
            }.padding(.horizontal,10)
            Spacer()
            Color(.blue)
                .ignoresSafeArea()
                .onTapGesture {
                    withAnimation(.bouncy(duration: 0.2)) {
                        isToggled.toggle()
                    }
                }

        }.padding(.top,12)
        
    }
}

#Preview {
    ContentView()
}
