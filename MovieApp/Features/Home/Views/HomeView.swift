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
                LazyVStack(alignment: .leading) {
                    Text("What do you want to watch?")
                        .poppins(.bold, 20)
                    
                    SearchBar(searchText: $searchText)
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
