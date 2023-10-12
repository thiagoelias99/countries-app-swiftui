//
//  CountryCard.swift
//  CountriesApp SwiftUI
//
//  Created by user241339 on 10/12/23.
//

import SwiftUI

struct CountryCard: View {
    var country: CountryList
    
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: country.flagPng)) { image in
                image
                    .resizable()
            } placeholder: {
                Color.gray
            }
            .frame(width: 72)
            Text(country.namePt)
                .bold()
            Spacer()
        }
        .padding(8)
        .frame(height: 64)
        .background(Color("AppMainLightColor"))
        .clipShape(RoundedRectangle(cornerRadius: 4)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 4)
                .stroke(Color("AppMainColor"), lineWidth: 1)
        )
    }
}

struct CountryCard_Previews: PreviewProvider {
    static var previews: some View {
        CountryCard(country: CountryList(cca2: "BR", namePt: "Brasil", nameUs: "Brazil", nameES: "Brasil", flagPng: "https://flagcdn.com/w320/br.png", flagSvg: "https://flagcdn.com/br.svg"))
    }
}