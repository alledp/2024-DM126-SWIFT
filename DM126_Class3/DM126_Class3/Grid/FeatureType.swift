//
//  FeatureType.swift
//  DM126_Class3
//
//  Created by Nova Labs on 11/9/24.
//

import SwiftUI

struct FeatureType: View {
    let service : ServiceType
    
    var body: some View {
        VStack{
            Image(service.image).resizable().scaledToFit().cornerRadius(10).fixedSize(horizontal: false, vertical: true)
            Text(service.name)
        }.frame(width: 100, height: 100)
    }
}

#Preview {
    FeatureType(service: ServiceType(id: 1, name: "Voar", image: "Voo_Livre"))
}
