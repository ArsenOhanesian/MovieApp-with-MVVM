//
//  NetworkConstant.swift
//  MovieApp
//
//  Created by csd_setup on 07.08.2024.
//

import Foundation

final class NetworkConstant{
    // MARK: - Constants
    static let shared = NetworkConstant()
    
    var apiKey: String {
        get {
            return "21d2e0e52c0b09880b34a6745fea8aa8"
        }
    }
    
    var serverAddress: String{
        get{
            return "https://api.themoviedb.org/3/"
        }
    }
    
    var imageServerAddress: String{
        get{
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
    
    // MARK: - Initializer
    private init(){}
    
    
}
