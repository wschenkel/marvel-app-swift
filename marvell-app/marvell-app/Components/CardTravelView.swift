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
            Text(viagem.titulo)
            Image(viagem.imagem).resizable()
                .frame(height: 125)
            
            HStack {
                Text(viagem.quantidadeDeDias)
                Spacer()
                Text(viagem.valor)
            }
        }
    }
}

struct CardTravelView_Previews: PreviewProvider {
    static var previews: some View {
        CardTravelView(viagem: viagens[0])
    }
}
