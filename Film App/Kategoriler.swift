//
//  Kategoriler.swift
//  Film App
//
//  Created by Mert Baykal on 05/06/2024.
//

import Foundation

struct Kategoriler: Identifiable, Hashable {
    var id: Int { kategori_id } // Conform to Identifiable
    var kategori_id: Int
    var kategori_ad: String

    static func == (lhs: Kategoriler, rhs: Kategoriler) -> Bool {
        return lhs.kategori_id == rhs.kategori_id && lhs.kategori_ad == rhs.kategori_ad
    }
}
