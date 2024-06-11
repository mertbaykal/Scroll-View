//
//  FilmItem.swift
//  Film App
//
//  Created by Mert Baykal on 05/06/2024.
//

import SwiftUI
/*
struct FilmItem: View {
    var filims = Filmler()
    var genislik = 0.0
    var body: some View {
        VStack(spacing: 20) {
            Image(filims.film_image!).resizable().frame(width: genislik)
            Text(filims.film_name!).foregroundColor(.gray)
            Text("Add")
                .padding(5)
                .foregroundColor(.white)
                .background(.indigo)
                .cornerRadius(5)
                .padding(.bottom,5)
                .onTapGesture {
                    print("\(Filmler().film_name!) added")
                }
        }.background(Rectangle().fill(.white).shadow(radius: 3))
    }
}

struct FilmItemYatay: View {
    var filims = Filmler()
    var genislik = 0.0
    var body: some View {
        HStack(spacing: 10) {
            Image(filims.film_image!).resizable().frame(width: genislik)
        }.background(Rectangle().fill(.white).shadow(radius: 3))
    }
}

#Preview {
    FilmItem()
}
*/
struct FilmItem: View {
    var filims: Filmler
    var genislik: CGFloat

    var body: some View {
        VStack {
            Image(filims.film_resim)
                .resizable()
                .frame(width: genislik, height: 150)
            Text(filims.film_ad)
        }
    }
}
