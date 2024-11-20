//
//  Features_Grid.swift
//  DM126_Class3
//
//  Created by Nova Labs on 11/9/24.
//

import SwiftUI

struct Features_Grid: View {
    var body: some View {
        
        var gridLayout: [GridItem]{
            return Array(repeating: GridItem(.flexible()),count: 2)
        }
        
        LazyHGrid (rows: gridLayout){
            ForEach(servicesMock){
                service in FeatureType(service: service)
            }
        }.frame(height: 200).padding(.horizontal, 15).padding(.top,15)
    }
}

#Preview {
    Features_Grid()
}
