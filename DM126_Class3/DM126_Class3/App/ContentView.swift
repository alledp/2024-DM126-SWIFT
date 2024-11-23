//
//  ContentView.swift
//  DM126_Class3
//
//  Created by Nova Labs on 11/9/24.
//

import SwiftUI

struct ContentView: View {
    
    private var service = APIService()
    @State private var APIgoals: [GoalType] = []
    @State private var flag_progress: Bool = false
    
    var body: some View {
        VStack{
            NavigationBar()
            ScrollView(){
                Features_Grid()
                CarrosselTabView().frame(height:350)
                if(!flag_progress){
                    ProgressView().scaleEffect(3).padding().frame(height:100);
                }else{
                    GoalContainer(goals: APIgoals).padding()
                }
            }
        }.padding().onAppear(){
            getGoalsAF()
        }
    }
    
    func getGoalsAF(){
        service.getGoals{goals, error in
            if let goals = goals{
                self.APIgoals = goals
                flag_progress = true
            }
        }
    }
}


#Preview {
    ContentView()
}
