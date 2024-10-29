//
//  Perguntas.swift
//  FirstProject
//
//  Created by Nova Labs on 10/26/24.
//

import Foundation


struct Pergunta{
    var titulo: String
    var respostas: [String]
}
let perguntas: [Pergunta] = [Pergunta(titulo: "Quantas vezes por semana você consome alimentos ultraprocessados ?",
                                      respostas: ["Mais de 4x","De 2x a 3x","1x ou menos"]),
                             Pergunta(titulo: "Quantos copos de Agua voce bebe por dia ?",
                                      respostas: ["3 ou menos", "De 3 a 5", "Mais de 5"]),
                             Pergunta(titulo: "Quantas vezes você pratica esportes por semana?",
                                      respostas: ["1x oumenos", "2 a 3x", "Mais de 3x"])
                            ]
