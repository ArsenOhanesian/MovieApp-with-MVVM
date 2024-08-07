//
//  MainViewController + ActivityIndicator.swift
//  MovieApp
//
//  Created by csd_setup on 07.08.2024.
//

import UIKit

extension MainViewController{
    
    func prepareActivityIndicator(){
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.color = .gray
        
        view.addSubview(activityIndicator)
        
        NSLayoutConstraint.activate([
            activityIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            activityIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
