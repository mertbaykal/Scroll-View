//
//  ContentView.swift
//  Film App
//
//  Created by Mert Baykal on 05/06/2024.
//

import SwiftUI


struct FilmSayfa: View {
    @State private var filmlerListesi = [Filmler]()
    
    let gridItemLayout = [GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .center) {
                VStack {
                    // Header stuff
                    HStack {
                        Text("Films")
                            .font(.largeTitle)
                            .bold()
                            .padding()
                        Spacer()
                    }
                    
                    ScrollView(showsIndicators: false) {
                        // Vertical list
                        LazyVGrid(columns: gridItemLayout, spacing: 17) {
                            ForEach(Array(Set(filmlerListesi.map { $0.kategori })), id: \.self) { kategori in
                                VStack(alignment: .leading) {
                                    Text(kategori.kategori_ad)
                                        .font(.headline)
                                        .padding(.leading, 10)
                                    
                                    ZStack {
                                        ScrollViewReader { scrollView in
                                            ScrollView(.horizontal, showsIndicators: false) {
                                                // Horizontal lists
                                                LazyHGrid(rows: [GridItem(.fixed(150))], spacing: 20) {
                                                    ForEach(filmlerListesi.filter { $0.kategori == kategori }) { film in
                                                        FilmItemYatay(filims: film, genislik: 150)
                                                    }
                                                }
                                                .fixedSize(horizontal: true, vertical: false)
                                                .padding(.leading, 10)
                                            }
                                        }
                                    }
                                }
                                .padding(.vertical, 10)
                                .background(Color(.systemGray6))
                                .cornerRadius(10)
                                .shadow(radius: 2)
                            }
                            .fixedSize(horizontal: false, vertical: true)
                        }
                        .padding(.horizontal, 10)
                    }
                }
                .onAppear {
                    var liste = [Filmler]()
                    let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Aksiyon")
                    let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Drama")
                    let k3 = Kategoriler(kategori_id: 3, kategori_ad: "Bilim Kurgu")
                    let y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Quentin Tarantino")
                    let y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Christopher Nolan")
                    let y3 = Yonetmenler(yonetmen_id: 3, yonetmen_ad: "Nuri Bilge Ceylan")
                    let y4 = Yonetmenler(yonetmen_id: 4, yonetmen_ad: "Roman Polanski")
                    let f1 = Filmler(film_id: 1, film_ad: "Django", film_yil: 2014, film_resim: "django", kategori: k1, yonetmen: y1)
                    let f2 = Filmler(film_id: 2, film_ad: "Interstellar", film_yil: 2015, film_resim: "interstellar", kategori: k3, yonetmen: y2)
                    let f3 = Filmler(film_id: 3, film_ad: "Inception", film_yil: 2010, film_resim: "inception", kategori: k3, yonetmen: y2)
                    let f4 = Filmler(film_id: 4, film_ad: "Anadoluda", film_yil: 2011, film_resim: "birzamanlaranadoluda", kategori: k2, yonetmen: y3)
                    let f5 = Filmler(film_id: 5, film_ad: "The Pianist", film_yil: 2008, film_resim: "thepianist", kategori: k2, yonetmen: y4)
                    let f6 = Filmler(film_id: 6, film_ad: "The Hateful Eight", film_yil: 2017, film_resim: "thehatefuleight", kategori: k1, yonetmen: y1)
                    
                    liste.append(f1)
                    liste.append(f2)
                    liste.append(f3)
                    liste.append(f4)
                    liste.append(f5)
                    liste.append(f6)
                    
                    filmlerListesi = liste
                }
            }
        }
    }
}

// Define FilmItemYatay and FilmItem views as needed.
struct FilmItemYatay: View {
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



#Preview {
    FilmSayfa()
}
