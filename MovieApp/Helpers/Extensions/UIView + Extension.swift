//
//  UIView + Extension.swift
//  MovieApp
//
//  Created by csd_setup on 07.08.2024.
//

import UIKit

extension UIView{
    func setSubview(_ view: UIView){
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func round(_ radius: CGFloat = 10){
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }
    
    func addBorder(color: UIColor, width: CGFloat){
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
}
