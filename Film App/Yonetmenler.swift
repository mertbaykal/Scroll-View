//
//  Yonetmenler.swift
//  Film App
//
//  Created by Mert Baykal on 05/06/2024.
//

import Foundation

struct Yonetmenler: Identifiable {
    var id: Int { yonetmen_id } // Conform to Identifiable
    var yonetmen_id: Int
    var yonetmen_ad: String
}
