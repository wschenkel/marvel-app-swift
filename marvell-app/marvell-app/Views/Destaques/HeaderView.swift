//
//  HeaderView.swift
//  marvell-app
//
//  Created by Willian schenkel on 08/11/20.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        
        GeometryReader { View in
            VStack {
                VStack {
                    Image("Logo")
                    Text("Heróis na suas mãos")
                        .font(.custom("Avenir", size: 20))
                        .foregroundColor(.white)
                }
                .frame(width: View.size.width, height: 130, alignment: .center)
                .background(Color("Red"))
                
//                HStack {
//                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
//                        Text("Hoteis")
//                            .font(.custom("Avenir Medium", size: 17))
//                            .foregroundColor(Color.white)
//                    }).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50)
//                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 10))
//                    .background(Color.blue)
//                    .offset(x: 50)
//
//                    Spacer()
//
//                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
//                        Text("Pacotes")
//                            .font(.custom("Avenir Medium", size: 17))
//                            .foregroundColor(Color.white)
//                    }).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50)
//                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 10))
//                    .background(Color.orange)
//                    .offset(x: -50)
//
//                }.offset(y: -25)
            }
        }
    }
        
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
