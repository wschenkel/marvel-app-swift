//
//  PacotesViagemView.swift
//  marvell-app
//
//  Created by Willian schenkel on 09/11/20.
//

import SwiftUI

struct PacotesViagemView: View {
    
    var pacoteDeViagem: PacoteDeViagem
    
    var body: some View {
        GeometryReader { View in
            VStack {
                Image(self.pacoteDeViagem.imagens.first ?? "")
                    .resizable()
                    .frame(height: 135)
                    .clipped()
                
                VStack {
                    Text(self.pacoteDeViagem.titulo)
                        .font(.custom("Avenir Black", size: 12))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: View.size.width, alignment: .leading)
                    
                    Text(self.pacoteDeViagem.descricao)
                        .font(.custom("Avenir", size: 10))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: View.size.width, alignment: .leading)

                    Text(self.pacoteDeViagem.dataValidade)
                        .font(.custom("Avenir", size: 10))
                        .frame(minWidth: 0, maxWidth: View.size.width, alignment: .leading)
                    
                    Text("a partir de:")
                        .font(.custom("Avenir", size: 9))
                        .frame(minWidth: 0, maxWidth: View.size.width, alignment: .trailing)
                    
                    Text("R$ \(self.pacoteDeViagem.valor)")
                        .font(.custom("Avenir Black", size: 16))
                        .foregroundColor(.orange)
                        .frame(minWidth: 0, maxWidth: View.size.width, alignment: .trailing)
                    
                    Text("em até 12x")
                        .font(.custom("Avenir Black", size: 9))
                        .frame(minWidth: 0, maxWidth: View.size.width, alignment: .trailing)
                    
                    Text("cancelamento grátis")
                        .font(.custom("Avenir Black", size: 9))
                        .foregroundColor(.green)
                        .frame(minWidth: 0, maxWidth: View.size.width, alignment: .trailing)
                }.padding(.leading, 5)
                .padding(.trailing, 5)
                .padding(.bottom, 5)
                .padding(.top, -5)// VStack
            } // VStack

        }.frame(width: 180, height: 250)
        .shadow(radius: 5, x: 1, y: 1)// GeometryReader
        .border(Color(red: 221.0/255.0, green: 221.0/255.0, blue: 221.0/255.0))
    }
}

struct PacotesViagemView_Previews: PreviewProvider {
    static var previews: some View {
        PacotesViagemView(pacoteDeViagem: pacoteViagens[0]).previewLayout(.fixed(width: 180, height: 250))
    }
}
