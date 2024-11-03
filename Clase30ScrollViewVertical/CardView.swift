//
//  CardView.swift
//  Clase30ScrollViewVertical
//
//  Created by Escurra Colquis on 3/11/24.
//
import SwiftUI

struct CardView: View {
    var image: String
    var title: String
    var country: String
    var preparation: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .fontWeight(.bold)
                        .font(.largeTitle)
                        .foregroundStyle(.secondary)
                    Text(country)
                        .font(.title2)
                        .foregroundStyle(.primary)
                        .lineLimit(3)
                    Text(preparation)
                        .font(.headline)
                        .foregroundStyle(.secondary)
                }
                Spacer()
            }
            .padding()
        }
        .clipShape(.rect(cornerRadius: 16))
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color(.sRGB, red: 140/255, green: 140/255, blue: 140/255, opacity: 0.6), lineWidth: 1)
        )
        .padding([.top, .horizontal])
    }
}

#Preview {
    CardView(image: "ceviche", title: "Ceviche", country: "Perú", preparation: "1h")
}
