//
//  TableViewCell.swift
//  BreakfastFinder
//
//  Created by Luis Roberto Contreras Parra on 25/05/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import UIKit

import UIKit

class TableViewCell: UIView {
    
    private let gradientLayer = CAGradientLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupGradientBackground()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupGradientBackground()
    }
    
    private func setupGradientBackground() {
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.blue.cgColor] // Colores del degradado
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5) // Punto de inicio del degradado
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5) // Punto de fin del degradado
        gradientLayer.cornerRadius = layer.cornerRadius // Radio de las esquinas
        layer.insertSublayer(gradientLayer, at: 0)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
}

