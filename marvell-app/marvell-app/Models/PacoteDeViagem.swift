//
//  PacoteDeViagem.swift
//  alura-viagens
//
//  Created by Ândriu Felipe Coelho on 24/05/20.
//  Copyright © 2020 Ândriu Felipe Coelho. All rights reserved.
//

import Foundation

struct PacoteDeViagem: Codable, Identifiable {

    enum CodingKeys: String, CodingKey {
       case id, titulo, categoria, descricao, informacoes, detalhes, dataValidade = "data", imagens, itensInclusos, valor
    }

    var id: Int
    var titulo: String
    var valor: String
    var informacoes: String
    var categoria: Categoria
    var descricao: String
    var detalhes: String
    var dataValidade: String
    var imagens: [String]
    var itensInclusos: [Item]

    enum Categoria: String, CaseIterable, Codable, Hashable {
        case europa = "Europa"
        case americaDoSul = "America do sul"
        case americaDoNorte = "America do norte"
    }
}

struct Item: Codable {

    enum CodingKeys: String, CodingKey {
       case id, titulo, imagem
    }

    var id: Int
    var titulo: String
    var imagem: String
}
