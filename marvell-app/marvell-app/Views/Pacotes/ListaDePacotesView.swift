//
//  ListaDePacotesView.swift
//  marvell-app
//
//  Created by Willian schenkel on 23/11/20.
//

import SwiftUI
import UIKit

struct ListaDePacotesView: View {
    
    // MARK: Attributes
    
    var categorias: [String: [PacoteDeViagem]] {
        Dictionary(grouping: pacoteViagens, by: { $0.categoria.rawValue })
    }
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(categorias.keys.sorted(), id: \.self) { chave in
                    SecaoPacotesView(nomeDaSecao: chave, pacotes: self.categorias[chave]!)
                }
            }
            .navigationBarTitle("Pacotes")
            .padding(.leading, -10)
            .padding(.trailing, -10)
        }
    }
}

struct ListaDePacotesView_Previews: PreviewProvider {
    static var previews: some View {
        ListaDePacotesView()
    }
}
