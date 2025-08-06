//
//  SearchBar.swift
//  MovieApp
//
//  Created by Manyuchi, Carrington C on 2025/08/06.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    
    var body: some View {
        TextField("Search", text: $searchText)
            .overlay(
                ZStack {
                    Image.CancelIcon
                        .foregroundStyle(.white)
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                        .onTapGesture {
                            searchText = ""
                            UIApplication.shared.endEditing()
                        }
                    
                    Image.SearchIcon
                        .opacity(searchText.isEmpty ? 1.0 : 0.0)
                }, alignment: .trailing
            )
            .foregroundStyle(.white)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(.appGrayColor1))
            )
    }
}

#Preview {
    SearchBar(searchText: .constant(""))
}
