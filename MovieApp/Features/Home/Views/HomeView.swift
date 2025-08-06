//
//  HomeView.swift
//  MovieApp
//
//  Created by Manyuchi, Carrington C on 2025/08/06.
//

import SwiftUI

struct HomeView: View {
    @State var searchText: String = ""
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 20) {
                    Text("What do you want to watch?")
                        .poppins(.bold, 20)
                    
                    SearchBar(searchText: $searchText)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(1...5, id: \.self) { _ in
                                MovieCard(movie: DeveloperPreview.instance.movie)
                            }
                        }
                    }
                    
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], alignment: .center, spacing: 20, pinnedViews: .sectionHeaders) {
                        ForEach(1...15, id: \.self) { _ in
                            MovieCard(movie: DeveloperPreview.instance.movie, type: .grid)
                        }
                    }
                }
            }
            .preferredColorScheme(.dark)
            .padding()
            .background(Color.AppBackgroundColor)

        }
    }
}

#Preview {
    HomeView()
}
