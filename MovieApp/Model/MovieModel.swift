//
//  MoviesModel.swift
//  MovieApp
//
//  Created by csd_setup on 07.08.2024.
//

import Foundation

// MARK: - MovieModel
struct MovieModel: Decodable {
    let page: Int
    let results: [Movie]
}

// MARK: - Movie
struct Movie: Decodable {
    let backdropPath: String
    let id: Int
    let title, overview, posterPath: String
    let releaseDate: String
    let voteAverage: Double

    enum CodingKeys: String, CodingKey {
        case backdropPath = "backdrop_path"
        case id, title
        case overview
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case voteAverage = "vote_average"
    }
}
