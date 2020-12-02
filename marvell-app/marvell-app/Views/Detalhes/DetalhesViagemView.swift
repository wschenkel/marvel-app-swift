//
//  DetalhesViagemView.swift
//  marvell-app
//
//  Created by Willian schenkel on 25/11/20.
//

import SwiftUI

struct DetalhesViagemView: View {
    
    // MARK: Attributes
    
    var pacoteDeViagem: PacoteDeViagem
    var corDaFonte = Color(red: 77.0/255.0, green: 77.0/255.0, blue: 77.0/255.0)
        
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        GeometryReader { View in
            
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
                
                VStack {
                    ZStack(alignment: .top) {
                        Image(self.pacoteDeViagem.imagens[0])
                            .resizable()
                            .frame(height: 400)
                        
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Image("icone-voltar")
                                .resizable()
                                .renderingMode(Image.TemplateRenderingMode.original)
                                .frame(width: 15, height: 25, alignment: .leading)
                                .padding(.leading, 15)
                                .padding(.top, 70)
                        }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    }
                }
                
                VStack {
                    VStack {
                        
                        Group {
                            Text(self.pacoteDeViagem.titulo.uppercased())
                                .font(.custom("Avenir Black", size: 26))
                                .foregroundColor(self.corDaFonte)
                                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: View.size.width, alignment: .center)
                            
                            Text(self.pacoteDeViagem.informacoes)
                                .font(.custom("Avenir", size: 16))
                                .foregroundColor(self.corDaFonte)
                                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: View.size.width, alignment: .leading)
                            
                            Text(self.pacoteDeViagem.descricao)
                                .font(.custom("Avenir", size: 16))
                                .foregroundColor(self.corDaFonte)
                                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: View.size.width, alignment: .leading)
                                .padding(.top, 10)
                            
                            Spacer().frame(height: 15)
                        }
                        
                        Text(self.pacoteDeViagem.detalhes)
                            .font(.custom("Avenir Black", size: 16))
                            .foregroundColor(self.corDaFonte)
                            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: View.size.width, alignment: .leading)
                        
                        Spacer().frame(height: 15)
                        
                        HStack {
                            VStack {
                                Text("R$ \(self.pacoteDeViagem.valor)")
                                    .font(.custom("Avenir Black", size: 25))
                                    .foregroundColor(.orange)
                                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: View.size.width, alignment: .leading)
                                
                                Text("sem taxas até em 12x")
                                    .font(.custom("Avenir", size: 14))
                                    .foregroundColor(self.corDaFonte)
                                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: View.size.width, alignment: .leading)
                            }
                        }
                        
                        Divider()
                        
                        VStack {
                            Text("O que está incluso")
                                .font(.custom("Avenir", size: 20))
                                .foregroundColor(self.corDaFonte)
                                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: View.size.width, alignment: .center)
                        }
                        
                        HStack {
                            VStack {
                                Image("icone-apartamento")
                                Text("Apartamento")
                                    .font(.custom("Avenir", size: 14))
                                    .foregroundColor(self.corDaFonte)
                                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: View.size.width, alignment: .center)
                            }
                            Spacer().frame(height: 20)
                            VStack {
                                Image("icone-aviao")
                                Text("Passagem aérea")
                                    .font(.custom("Avenir", size: 14))
                                    .foregroundColor(self.corDaFonte)
                                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: View.size.width, alignment: .center)
                            }
                        }// HStack
                        .padding(.leading, 40)
                        .padding(.trailing, 40)
                        
                        Divider()
                        
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Text("Gostei, quero este!")
                                .font(.custom("Avenir Black", size: 16))
                                .foregroundColor(.white)
                                
                        }.frame(width: View.size.width - 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.init(red: 221.0/255.0, green: 58.0/255.0, blue: 126.0/255.0))
                        
                        HStack {
                            Text("Válido para o período de: \(self.pacoteDeViagem.dataValidade)")
                                .font(.custom("Avenir", size: 11))
                                .foregroundColor(self.corDaFonte)
                                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: View.size.width, alignment: .leading)
                        }.padding(.top, 10)

                    }
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                }
            }
                
        }.edgesIgnoringSafeArea(.top) // ScrollView
                    
    }
}

struct DetalhesViagemView_Previews: PreviewProvider {
    static var previews: some View {
        DetalhesViagemView(pacoteDeViagem: pacoteViagens[0])
    }
}
