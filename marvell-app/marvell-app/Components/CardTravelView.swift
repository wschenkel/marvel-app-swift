//
//  CardTravelView.swift
//  marvell-app
//
//  Created by Willian schenkel on 08/11/20.
//

import SwiftUI

struct CardTravelView: View {
    
    var viagem: Viagem
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(viagem.imagem).resizable()
                .frame(height: 215)
            
            Text(viagem.titulo)
                .padding(.bottom, 5)
                .font(.custom("Avenir Black", size: 20))
            
            Text(viagem.descricao)
                .padding(.bottom, 5)
                .font(.custom("Avenir", size: 16))
            
            HStack {
                Text("\(viagem.quantidadeDeDias) dia(s)")
                    .font(.custom("Avenir", size: 20))
                    .foregroundColor(.black)
                Spacer()
                Text("R$ \(viagem.valor)")
                    .font(.custom("Avenir", size: 20))
                    .foregroundColor(.orange)
            }
        }
    }
}

struct CardTravelView_Previews: PreviewProvider {
    static var previews: some View {
        CardTravelView(viagem: viagens[0])
    }
}
