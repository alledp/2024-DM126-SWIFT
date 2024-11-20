//
//  GoalListView.swift
//  DM126_Class3
//
//  Created by Nova Labs on 11/18/24.
//

import SwiftUI

struct GoalListView: View {
    
    let goal : GoalType
    
    var body: some View {
        HStack{
            Image(systemName: goal.icone).font(.largeTitle)
            VStack(alignment:.leading){
                Text(goal.titulo).font(.headline)
                Text(goal.descricao).font(.subheadline);
            }
        }.foregroundStyle(.blue)
    }
}

#Preview {
    GoalListView(goal: GoalType(id: 1, icone: "moon.zzz.fill", titulo: "Tempo de Sono", descricao: "Dormir 22h por Noite"))
}
