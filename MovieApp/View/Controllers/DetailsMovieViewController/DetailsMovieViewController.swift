//
//  DetailsMovieViewController.swift
//  MovieApp
//
//  Created by csd_setup on 07.08.2024.
//

import UIKit
import SDWebImage

final class DetailsMovieViewController: UIViewController {
    // MARK: - Properties
    
    // UI Components
    let posterView = UIImageView()
    let titleLabel = UILabel()
    let descriptionLabel = UILabel()
    
    // View Model
    var viewModel: DetailsMovieViewModel
    
    // MARK: - Initializer
    init(viewModel: DetailsMovieViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK: - Methods
    private func configureView(){
        self.title = "Movie Details"
        self.view.backgroundColor = .systemBackground
        prepareImageView()
        prepareTitleLabel()
        prepareDescriptionLabel()
    }
    
    private func setupView(){
        configureView()
        titleLabel.text = viewModel.movieTitle
        descriptionLabel.text = viewModel.movieDescription
        posterView.sd_setImage(with: viewModel.movieImage, placeholderImage: UIImage(systemName: "photo"))
    }

}
