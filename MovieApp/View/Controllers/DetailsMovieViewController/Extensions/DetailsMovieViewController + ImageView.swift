//
//  DetailsMovieViewController + ImageView.swift
//  MovieApp
//
//  Created by csd_setup on 07.08.2024.
//

import UIKit

extension DetailsMovieViewController{
    
    func prepareImageView(){
        posterView.contentMode = .scaleAspectFill
        view.setSubview(posterView)
        
        NSLayoutConstraint.activate([
            posterView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            posterView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            posterView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            posterView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25)
        ])
    }
}
