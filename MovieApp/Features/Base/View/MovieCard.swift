//
//  MovieCard.swift
//  MovieApp
//
//  Created by Manyuchi, Carrington C on 2025/08/06.
//

import SwiftUI

struct MovieCard: View {
    let movie: Movie
    var type: MovieCardType = .poster
    
    var body: some View {
        CustomImageView(movie: movie, itemWidth: itemWidth, itemHeight: itemHeight)
    }
}

extension MovieCard {
    var itemWidth: CGFloat {
        screenWidth * type.widthPercentage
    }
    
    var itemHeight: CGFloat {
        screenWidth * type.heightPercentage
    }
}

#Preview {
    MovieCard(movie: DeveloperPreview.instance.movie)
}
