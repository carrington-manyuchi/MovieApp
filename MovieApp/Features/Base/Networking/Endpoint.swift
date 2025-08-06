//
//  Endpoint.swift
//  MovieApp
//
//  Created by Manyuchi, Carrington C on 2025/08/06.
//

import Foundation

enum EndPoint {
    case trending, topRated, genre, movieReviews(_ movieId: Int)
    
    var path: String {
        switch self {
        case .trending:
            return "/trending/movie/day"
        case .topRated:
            return "/movie/top_rated"
        case .genre:
            return "/genre/movie/list"
        case .movieReviews(let movieId):
            return "/movie/\(movieId)/reviews"
        }
    }
}
