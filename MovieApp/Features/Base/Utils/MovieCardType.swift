//
//  MovieCardType.swift
//  MovieApp
//
//  Created by Manyuchi, Carrington C on 2025/08/06.
//

import Foundation

enum MovieCardType {
    case poster, grid
}

extension MovieCardType {
    var widthPercentage: Double {
        switch self {
        case .poster:
            return 0.45
        case .grid:
            return 0.30
        }
    }
    
    var heightPercentage: Double {
        switch self {
        case .poster:
            return 0.60
        case .grid:
            return 0.30
        }
    }
}
