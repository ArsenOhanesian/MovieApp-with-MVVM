//
//  DetailsMovieViewController + Label.swift
//  MovieApp
//
//  Created by csd_setup on 07.08.2024.
//

import UIKit

extension DetailsMovieViewController{
    
    func prepareTitleLabel(){
        titleLabel.textAlignment = .center
        titleLabel.font = .systemFont(ofSize: 24, weight: .medium)
        titleLabel.text = "Title"
        titleLabel.numberOfLines = 0
        view.setSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: posterView.bottomAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8)
        ])
    }
    
    func prepareDescriptionLabel(){
        descriptionLabel.textAlignment = .center
        descriptionLabel.font = .systemFont(ofSize: 22, weight: .regular)
        descriptionLabel.text = "Description"
        descriptionLabel.numberOfLines = 0
        view.setSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
        ])
    }
}
