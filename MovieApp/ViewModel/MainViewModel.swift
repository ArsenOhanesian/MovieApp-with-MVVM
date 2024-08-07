//
//  MainViewMidel.swift
//  MovieApp
//
//  Created by csd_setup on 07.08.2024.
//

import Foundation

class MainViewModel{
    
    // MARK: - Properties
    var isLoading: Observable<Bool> = Observable(false)
    var cellDataSource: Observable<[MovieTableCellViewModel]> = Observable(nil)
    var dataSource: MovieModel?
    
    // MARK: - Public Methods
    func numberOfSections() -> Int{
        1
    }
    
    func numberOfRows(in section: Int) -> Int{
        self.dataSource?.results.count ?? 0
    }
    
    func getData(){
        if isLoading.value ?? true{
            return
        }
        isLoading.value = true
        APICaller.getTrandingMovies { [weak self] result in
            guard let self else { return }
            self.isLoading.value = false
            
            switch result {
            case .success(let data):
                print("Top Trending Counts: \(data.results.count)")
                self.dataSource = data
                self.mapCellData()
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func getMovieTitle(from movie: Movie) -> String{
        return movie.title
    }
    
    func retriveMovie(with id: Int) -> Movie? {
        guard let movie = dataSource?.results.first(where: { $0.id == id }) else {
            return nil
        }
        return movie
    }
    
    // MARK: - Private Methods
    private func mapCellData(){
        self.cellDataSource.value = self.dataSource?.results.compactMap{
            MovieTableCellViewModel(movie: $0)
        }
    }
}
