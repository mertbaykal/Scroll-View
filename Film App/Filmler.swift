//
//  Films.swift
//  Film App
//
//  Created by Mert Baykal on 05/06/2024.
//

import Foundation

struct Filmler: Identifiable {
    var id: Int { film_id } // Conform to Identifiable
    var film_id: Int
    var film_ad: String
    var film_yil: Int
    var film_resim: String
    var kategori: Kategoriler
    var yonetmen: Yonetmenler
}
