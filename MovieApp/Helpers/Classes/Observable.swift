//
//  Observable.swift
//  MovieApp
//
//  Created by csd_setup on 07.08.2024.
//

import Foundation

class Observable<T> {
    
    // MARK: - Properties
    var value: T?{
        didSet{
            DispatchQueue.main.async{
                self.listener?(self.value)
            }
        }
    }
    
    private var listener: ((T?) -> Void)?
    
    // MARK: - Initializer
    init(_ value: T?) {
        self.value = value
    }
    
    
    // MARK: - Bindings
    func bind(_ listener: @escaping ((T?) -> Void)){
        listener(value)
        self.listener = listener
    }
}
