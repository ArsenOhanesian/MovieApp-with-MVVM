//
//  MainViewController.swift
//  MovieApp
//
//  Created by csd_setup on 07.08.2024.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: - Properties
    // UI Elements
    let tableView = UITableView()
    let activityIndicator = UIActivityIndicatorView()
    
    // View Model
    var viewModel: MainViewModel = MainViewModel()
    
    // Other
    var cellDataSource: [MovieTableCellViewModel] = []
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        bindViewModel()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.getData()
    }
    
    // MARK: - Private Methods
    private func configureView(){
        self.title = "Main View"
        self.view.backgroundColor = .systemBackground
        
        setupTableView()
        prepareActivityIndicator()
    }
    
    private func bindViewModel(){
        viewModel.isLoading.bind { [weak self] isLoading in
            guard let self, let isLoading else { return }
            
            DispatchQueue.main.async {
                isLoading ? self.activityIndicator.startAnimating()
                : self.activityIndicator.stopAnimating()
            }
        }
        
        viewModel.cellDataSource.bind { [weak self] movies in
            guard let self, let movies else { return }
            self.cellDataSource = movies
            self.reloadData()
            
        }
    }
    
    
    private func reloadData(){
        DispatchQueue.main.async{
            self.tableView.reloadData()
        }
    }
    
    // MARK: - Public Methods
    func openDetail(with movieId: Int){
        guard let movie = viewModel.retriveMovie(with: movieId) else {
            return
        }
        
        let detailsViewModel = DetailsMovieViewModel(movie: movie)
        let detailController = DetailsMovieViewController(viewModel: detailsViewModel)
        DispatchQueue.main.async{
            self.navigationController?.pushViewController(detailController, animated: true)
        }
    }
}
