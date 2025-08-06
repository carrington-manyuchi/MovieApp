//
//  Poppins.swift
//  MovieApp
//
//  Created by Manyuchi, Carrington C on 2025/08/06.
//

import Foundation

enum Poppins: String {
    case black, bold, medium, regular, light, semiBold
    
    var fontName: String {
        return "Poppins-\(self.rawValue.capitalized)"
    }
}
