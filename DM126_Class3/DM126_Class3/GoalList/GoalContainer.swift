//
//  GoalContainer.swift
//  DM126_Class3
//
//  Created by Nova Labs on 11/20/24.
//

import SwiftUI

struct GoalContainer: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 30){
            
            ForEach(goalMock){
                goal in GoalListView(goal: goal)
            }
        }
    }
}

#Preview {
    GoalContainer()
}
