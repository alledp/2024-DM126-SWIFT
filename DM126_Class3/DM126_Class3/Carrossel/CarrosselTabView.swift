//
//  CarrosselTabView.swift
//  DM126_Class3
//
//  Created by Nova Labs on 11/18/24.
//

import SwiftUI

struct CarrosselTabView: View {
    var body: some View {
        TabView{
            ForEach(bannerList){
                banner in
                CarrosselItemView(banner: banner)
            }
        }.frame(width: 350).tabViewStyle(.page(indexDisplayMode: .always))
        
    }
    
    let bannerList: [ServiceType] =
        [ServiceType(id: 1, name: "", image: "Frase_1"),
         ServiceType(id: 2, name: "", image: "Frase_2"),
         ServiceType(id: 3, name: "", image: "Frase_3")]
    
}

#Preview {
    CarrosselTabView()
}
