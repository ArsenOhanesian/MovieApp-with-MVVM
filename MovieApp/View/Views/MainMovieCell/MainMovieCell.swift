//
//  MainMovieCell.swift
//  MovieApp
//
//  Created by csd_setup on 07.08.2024.
//

import UIKit
import SDWebImage

final class MainMovieCell: UITableViewCell {
    // MARK: - Properties
    static var reuseID: String {
        get{
            return "MainMovieCell"
        }
    }
    
    var customContenView = CustomContentView()
    
    // MARK: - Initializer
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setSubViews()
        setConstraints()
        configureApperance()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public Methods
    func setupCell(viewModel: MovieTableCellViewModel){
        self.customContenView.titleLabel.text = viewModel.title
        self.customContenView.dateLabel.text = viewModel.date
        self.customContenView.ratingLabel.text = viewModel.rating
        self.customContenView.coverImage.sd_setImage(with: viewModel.imageUrl, placeholderImage: UIImage(systemName: "photo"))
    }
}

// MARK: - Setup UI
extension MainMovieCell {
    
    
    // MARK:  Subviews
    func setSubViews(){
        setSubview(customContenView)
    }
    // MARK: - Constraints
    func setConstraints(){
        NSLayoutConstraint.activate([
            customContenView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            customContenView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            customContenView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            customContenView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
            
        ])
    }
    // MARK: - Configuration
    func configureApperance(){
        backgroundColor = .clear
    }
}
