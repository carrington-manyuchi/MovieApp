//
//  PreviewProvider.swift
//  Movie
//
//  Created by Ahmed Ali on 19/04/2023.
//

import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        DeveloperPreview.instance
    }
}

class DeveloperPreview {
    static let instance = DeveloperPreview()
    private init() {}
    
    let movie = Movie(
        adult: false,
        backdropPath: "/3P52oz9HPQWxcwHOwxtyrVV1LKi.jpg",
        genreIDS: [1],
        id: 102,
        originalLanguage: "",
        originalTitle: "",
        overview: "",
        popularity: 10.0,
        posterPath: "/to0spRl1CMDvyUbOnbb4fTk3VAd.jpg",
        releaseDate: "",
        title: "The Shawshank Redemption",
        video: false,
        voteAverage: 10.0,
        voteCount: 1
    )
//    
//    let genre = Genre(id: 28, name: "Action")
//    
//    let review = Review(author: "Test Author", authorDetails: nil, content: "Test content", createdAt: "2023", id: "Test", updatedAt: "Test", url: "Test")
//    
}
