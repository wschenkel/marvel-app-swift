//
//  DestaquesView.swift
//  marvell-app
//
//  Created by Willian schenkel on 25/11/20.
//

import SwiftUI

struct DestaquesView: View {
    var body: some View {
        NavigationView {
            GeometryReader { View in
                VStack { // VStack pai
                    HeaderView()
                        .frame(width: View.size.width, height: 210, alignment: .top)

                    List(viagens) { viagem in
                        NavigationLink(destination: MapaView(coordenada: viagem.localizacao).navigationBarTitle("Localização")) {
                            CardTravelView(viagem: viagem)
                        }
                    }.navigationBarTitle("")
                }
                
            }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct DestaquesView_Previews: PreviewProvider {
    static var previews: some View {
        DestaquesView()
    }
}
