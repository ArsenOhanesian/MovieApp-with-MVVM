//
//  DetailsMovieViewModel.swift
//  MovieApp
//
//  Created by csd_setup on 07.08.2024.
//

import Foundation

final class DetailsMovieViewModel{
    // MARK: - Properties
    var movie: Movie
    
    var movieId: Int
    var movieImage: URL?
    var movieTitle: String
    var movieDescription: String
    
    // MARK: - Initializer
    init(movie: Movie) {
        self.movie = movie
        
        self.movieId = movie.id
        self.movieTitle = movie.title
        self.movieDescription = movie.overview
        self.movieImage = makeImageURL(from: movie.backdropPath)
        
    }
    
    // MARK: - Methods
    private func makeImageURL(from imagePath: String) -> URL? {
        URL(string: "\(NetworkConstant.shared.imageServerAddress)\(imagePath)")
    }
}
