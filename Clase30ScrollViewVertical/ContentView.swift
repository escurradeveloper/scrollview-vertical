//
//  ContentView.swift
//  Clase30ScrollViewVertical
//
//  Created by Escurra Colquis on 3/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
           VStack {
               HStack {
                   VStack(alignment: .leading) {
                       Text("Restaurante")
                           .font(.caption)
                           .foregroundStyle(.secondary)
                       Text("Menú del día")
                           .font(.largeTitle)
                       .foregroundStyle(.primary)
                       .fontWeight(.bold)
                   }
                   Spacer()
               }
               .padding([.top, .horizontal])
               CardView(image: "ceviche", title: "Ceviche", country: "Perú", preparation: "1h")
               CardView(image: "arepa", title: "Arepa", country: "Venezuela", preparation: "1.5h")
               CardView(image: "pizza", title: "Pizza", country: "Italia", preparation: "30 minutos")
               CardView(image: "chifa", title: "Chifa", country: "Japón", preparation: "40 minutos")
               CardView(image: "arroz-con-pollo", title: "Arroz con Pollo", country: "Perú", preparation: "1.5h")
            }
        }
    }
}

#Preview {
    ContentView()
}
