//
//  MovieTableCellViewModel.swift
//  MovieApp
//
//  Created by csd_setup on 07.08.2024.
//

import Foundation

class MovieTableCellViewModel{
    // MARK: - Properties
    var id: Int
    var title: String
    var date: String
    var rating: String
    var imageUrl: URL?
    
    // MARK: - Initializer
    init(movie: Movie) {
        self.id = movie.id
        self.title = movie.title
        self.date = movie.releaseDate
        self.rating = "\(movie.voteAverage)/10"
        self.imageUrl = makeImageURL(movie.posterPath)
    }
    
    // MARK: - Private Methods
    private func makeImageURL(_ imagePath: String) -> URL? {
        URL(string: "\(NetworkConstant.shared.imageServerAddress)\(imagePath)")
    }
}
