//
//  SecaoPacotesView.swift
//  marvell-app
//
//  Created by Willian schenkel on 18/11/20.
//

import SwiftUI

struct SecaoPacotesView: View {
    
    // MARK: Attributos
    
    var nomeDaSecao: String
    var pacotes: [PacoteDeViagem]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.nomeDaSecao)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(self.pacotes) { pacote in
                        NavigationLink(destination: DetalhesViagemView(pacoteDeViagem: pacote).navigationBarTitle("").navigationBarHidden(true)
                        ) {
                            PacotesViagemView(pacoteDeViagem: pacote)
                        } // NavigationLink
                        .buttonStyle(PlainButtonStyle())
                    } // Foreach
                } //HStack
            } // ScrollView
        }
        .frame(height: 300)
        .background(Color(red: 247.0/255.0, green: 247.0/255.0, blue: 247.0/255.0)) // VStack
    }
}

struct SecaoPacotesView_Previews: PreviewProvider {
    static var previews: some View {
        SecaoPacotesView(nomeDaSecao: pacoteViagens[0].categoria.rawValue, pacotes: pacoteViagens).previewLayout(.fixed(width: 600, height: 300))
    }
}
