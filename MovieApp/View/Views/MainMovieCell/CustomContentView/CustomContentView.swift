//
//  CustomContentView.swift
//  MovieApp
//
//  Created by csd_setup on 07.08.2024.
//

import UIKit

final class CustomContentView: UIView{
    // MARK: - Properties
    // UI Elements
    let coverImage = UIImageView()
    let titleLabel = UILabel()
    let dateLabel = UILabel()
    let ratingLabel = UILabel()
    
    // MARK: - Initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureApperance()
        setSubViews()
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: - Setup UI

extension CustomContentView {
    
    // MARK: - Subviews
    func setSubViews(){
        setSubview(coverImage)
        setSubview(titleLabel)
        setSubview(ratingLabel)
        setSubview(dateLabel)
    }
    // MARK: - Constraints
    func setConstraints(){
        NSLayoutConstraint.activate([
            coverImage.topAnchor.constraint(equalTo: topAnchor, constant: 4),
            coverImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            coverImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -4),
            coverImage.widthAnchor.constraint(equalTo: heightAnchor, multiplier: 0.65),
            
            titleLabel.topAnchor.constraint(equalTo: coverImage.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: coverImage.trailingAnchor, constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 8),
            
            ratingLabel.bottomAnchor.constraint(equalTo: coverImage.bottomAnchor),
            ratingLabel.leadingAnchor.constraint(equalTo: coverImage.trailingAnchor, constant: 8),
            ratingLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 8),
            
            dateLabel.leadingAnchor.constraint(equalTo: coverImage.trailingAnchor, constant: 8),
            dateLabel.bottomAnchor.constraint(equalTo: ratingLabel.topAnchor, constant: -8),
            dateLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 8)
        ])
    }
    // MARK: - Configuration
    func configureApperance(){
        backgroundColor = .lightGray
        addBorder(color: .label, width: 1)
        round()
        
        coverImage.round(5)
        coverImage.contentMode = .scaleToFill
        
        titleLabel.numberOfLines = 2
        titleLabel.font = .systemFont(ofSize: 24, weight: .medium)
        titleLabel.text = "Name"
        
        dateLabel.font = .systemFont(ofSize: 17, weight: .regular)
        dateLabel.text = "Date"
        
        ratingLabel.font = .systemFont(ofSize: 15, weight: .medium)
        ratingLabel.text = "Rating"
    }
}
