//
//  ContentView.swift
//  marvell-app
//
//  Created by Willian schenkel on 08/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            DestaquesView()
                .tabItem {
                    Text("Destaques")
                    Image("icone-destaques")
                }
            
            ListaDePacotesView()
                .tabItem {
                    Text("Pacotes")
                    Image("icone-mala")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
