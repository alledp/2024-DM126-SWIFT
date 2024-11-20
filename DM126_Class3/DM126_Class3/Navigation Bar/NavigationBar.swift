//
//  NavigationBar.swift
//  DM126_Class3
//
//  Created by Nova Labs on 11/9/24.
//

import SwiftUI

struct NavigationBar: View {
    @State var choiceMade = nameMock[0]
    @State private var showingAlert = false
    @State private var name_button = ""
    
    var body: some View {
        HStack{
            Menu{
                if(nameMock.count > 1){
                    ForEach(nameMock, id: \.self){
                        name in
                        Button(action: {
                            choiceMade = name
                        }, label: {Text(name)})
                    }
                }else{
                    Button(action: {
                        choiceMade = nameMock[0]
                    }, label: {Text(nameMock[0])})
                }
            }label: {
                Label(
                    title: { Text (choiceMade).font(.headline).fontWeight(.bold)},
                    icon: { Image(systemName: "arrow.2.circlepath.circle.fill").font(.title2) }
                )
            }
            
            Button(action: {
                showingAlert.toggle()
            }) {Image(systemName:"plus.square.fill")}.font(.title2).foregroundStyle(.gray)}
                .alert("Entre com um Nome", isPresented: $showingAlert) {
                    TextField("Entre com um Nome", text: $name_button)
                    Button("ENTER", action: submit)
                } message: {Text("Xcode will print whatever you type.")}
    }
    
    func submit() {
        nameMock.append(name_button)
        name_button = ""
    }
}

#Preview {
    NavigationBar()
}
