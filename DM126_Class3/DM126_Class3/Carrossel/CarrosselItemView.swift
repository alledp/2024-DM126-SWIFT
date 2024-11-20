//
//  CarrosselItemView.swift
//  DM126_Class3
//
//  Created by Nova Labs on 11/18/24.
//

import SwiftUI

struct CarrosselItemView: View {
    var banner : ServiceType
    var body: some View {
        Image(banner.image).resizable().scaledToFit().cornerRadius(30)
    }
}

#Preview {
    CarrosselItemView(banner: ServiceType(id: 1, name: "", image: "Frase_1"))
}
