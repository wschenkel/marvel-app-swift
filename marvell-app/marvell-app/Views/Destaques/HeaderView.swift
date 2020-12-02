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
                    Image("Logo").padding(.top, 10)
                    Text("Descubra o mundo nas suas mãos")
                        .font(.custom("Avenir", size: 20))
                        .foregroundColor(.white)
                }
                .frame(width: View.size.width, height: 170, alignment: .center)
                .background(Color("Red"))
            }
        }
    }
        
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
