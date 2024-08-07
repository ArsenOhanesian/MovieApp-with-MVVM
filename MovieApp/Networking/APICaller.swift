//
//  APICaller.swift
//  MovieApp
//
//  Created by csd_setup on 07.08.2024.
//

import Foundation

// MARK: - Network Errors
enum NetworkError: Error{
    case urlError
    case canNotParseData
}

final class APICaller{
    // MARK: - Methods
    static func getTrandingMovies(completion: @escaping (_ result: Result<MovieModel, NetworkError>) -> Void ){
       
        let urlString = NetworkConstant.shared.serverAddress + 
        "trending/movie/day?api_key=" +
        NetworkConstant.shared.apiKey
        
        guard let url = URL(string: urlString) else {
            completion(.failure(.urlError))
            return
        }
        
        URLSession.shared.dataTask(with: url) { dataResponse, urlResponse, error in
            guard error == nil, let data = dataResponse,
            let resultData = try? JSONDecoder().decode(MovieModel.self, from: data)
            else {
                completion(.failure(.canNotParseData))
                return
            }
            
            completion(.success(resultData))
        }.resume()
    }
}
