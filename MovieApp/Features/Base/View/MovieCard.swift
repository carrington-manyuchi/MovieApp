//
//  MovieCard.swift
//  MovieApp
//
//  Created by Manyuchi, Carrington C on 2025/08/06.
//

import SwiftUI

struct MovieCard: View {
    let movie: Movie
    
    var body: some View {
        CustomImageView(movie: movie, itemWidth: 150, itemHeight: 150)
    }
}

#Preview {
    MovieCard(movie: DeveloperPreview.instance.movie)
}
