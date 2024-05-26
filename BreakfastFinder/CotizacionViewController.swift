//
//  CotizacionViewController.swift
//  LEAFT
//
//  Created by Luis Roberto Contreras Parra on 26/05/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import UIKit

class CotizacionViewController: UIViewController {
    @IBOutlet weak var cardView3: UIView!
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var cardView5: UIView!
    @IBOutlet weak var cardView4: UIView!
    @IBOutlet weak var cardView2: UIView!

    
    
    
    private let shadowContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.shadowColor = UIColor.gray.cgColor
        view.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        view.layer.shadowOpacity = 1.0
        view.layer.shadowRadius = 10
        view.layer.masksToBounds = false
        return view
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Creamos un CAGradientLayer
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor(red: 0.09, green: 0.60, blue: 0.00, alpha: 1.00).cgColor, // Color(hex: "169A00")
            UIColor(red: 0.09, green: 0.60, blue: 0.00, alpha: 1.00).cgColor, // Color(hex: "169A00")
            UIColor(red: 0.42, green: 0.71, blue: 0.12, alpha: 1.00).cgColor, // Color(hex: "6BB51E")
            UIColor(red: 0.60, green: 0.77, blue: 0.18, alpha: 1.00).cgColor, // Color(hex: "99C32F")
            UIColor(red: 0.80, green: 0.83, blue: 0.26, alpha: 1.00).cgColor, // Color(hex: "CCD441")
            UIColor(red: 1.00, green: 0.89, blue: 0.33, alpha: 1.00).cgColor  // Color(hex: "FFE353")
        ]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        // Creamos una UIView para contener el gradiente
        let gradientView = UIView(frame: view.bounds)
        gradientView.layer.addSublayer(gradientLayer)
        // Agregamos la UIView al fondo de la vista principal
        view.insertSubview(gradientView, at: 0)
        
        cardView.layer.cornerRadius = 20
        cardView.layer.masksToBounds = false
        cardView2.layer.cornerRadius = 20
        cardView2.layer.masksToBounds = false
        cardView3.layer.cornerRadius = 20
        cardView3.layer.masksToBounds = false
        cardView4.layer.cornerRadius = 20
        cardView4.layer.masksToBounds = false
        cardView5.layer.cornerRadius = 20
        cardView5.layer.masksToBounds = false
        
        
        // Agregar shadowContainerView al cardView
        view.addSubview(shadowContainerView)
        shadowContainerView.addSubview(cardView)
        shadowContainerView.addSubview(cardView2)
        shadowContainerView.addSubview(cardView3)
        shadowContainerView.addSubview(cardView4)
        shadowContainerView.addSubview(cardView5)
        
        // Configuración de constraints para shadowContainerView y cardView
        NSLayoutConstraint.activate([
            shadowContainerView.leadingAnchor.constraint(equalTo: cardView.leadingAnchor),
            shadowContainerView.trailingAnchor.constraint(equalTo: cardView.trailingAnchor),
            shadowContainerView.topAnchor.constraint(equalTo: cardView.topAnchor),
            shadowContainerView.bottomAnchor.constraint(equalTo: cardView.bottomAnchor),
            
            shadowContainerView.leadingAnchor.constraint(equalTo: cardView2.leadingAnchor),
            shadowContainerView.trailingAnchor.constraint(equalTo: cardView2.trailingAnchor),
            shadowContainerView.topAnchor.constraint(equalTo: cardView2.topAnchor),
            shadowContainerView.bottomAnchor.constraint(equalTo: cardView2.bottomAnchor),
            
            
            shadowContainerView.leadingAnchor.constraint(equalTo: cardView3.leadingAnchor),
            shadowContainerView.trailingAnchor.constraint(equalTo: cardView3.trailingAnchor),
            shadowContainerView.topAnchor.constraint(equalTo: cardView3.topAnchor),
            shadowContainerView.bottomAnchor.constraint(equalTo: cardView3.bottomAnchor),
            
            shadowContainerView.leadingAnchor.constraint(equalTo: cardView4.leadingAnchor),
            shadowContainerView.trailingAnchor.constraint(equalTo: cardView4.trailingAnchor),
            shadowContainerView.topAnchor.constraint(equalTo: cardView4.topAnchor),
            shadowContainerView.bottomAnchor.constraint(equalTo: cardView4.bottomAnchor),
            
            
            shadowContainerView.leadingAnchor.constraint(equalTo: cardView5.leadingAnchor),
            shadowContainerView.trailingAnchor.constraint(equalTo: cardView5.trailingAnchor),
            shadowContainerView.topAnchor.constraint(equalTo: cardView5.topAnchor),
            shadowContainerView.bottomAnchor.constraint(equalTo: cardView5.bottomAnchor)
            
          
        ])
        
    }

}
