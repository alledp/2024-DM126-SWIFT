//
//  ContentView.swift
//  DM126_Class3
//
//  Created by Nova Labs on 11/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            NavigationBar()
            ScrollView{
                Features_Grid()
                CarrosselTabView().frame(height:350)
                GoalContainer()
            }
        }.padding()
    }
}

#Preview {
    ContentView()
}


// TODO COLOCAR SCROLL para quando tiver varios na tela.
// SCROL NAO DEVE AFETAR O NAVIGATION BAR
// AO CLICAR NO MAIS ADICIONAR MAIS NOMES NESSE DROP DOWN
// QUANDO CLICAR NO NOME, APARECER UMA LISTA SUSPENSA (DROP DOWN) ou (DROP OUT) COM OUTROS NOMES


// PERMITIR A ROLAGEM DO Features Grid, CarrosselTabView e do GoalContainer.
// Ao Clicar no + Criar uma nova estrutura de dados para salvar nomes de usuários
// Quando clicar no NOME abre uma lista com esses nomes cadastrados.
