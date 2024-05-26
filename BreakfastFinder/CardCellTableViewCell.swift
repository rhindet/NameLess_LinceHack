//
//  CardCellTableViewCell.swift
//  BreakfastFinder
//
//  Created by Luis Roberto Contreras Parra on 25/05/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import UIKit

class CardCellTableViewCell: UITableViewCell {

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var pictureView: UIImageView!
    @IBOutlet weak var cardView: UIView!
    
    @IBOutlet weak var dateLabel: UILabel!
     func configure(picture:UIImage,title:String,description:String,date:String){
        pictureView.image = picture
        titleLabel.text = title
        descriptionLabel.text = description
        dateLabel.text = date
        
        
        cardView.layer.shadowColor = UIColor.gray.cgColor
        cardView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        cardView.layer.shadowOpacity = 1.0
        cardView.layer.masksToBounds = false
        cardView.layer.cornerRadius = 10.0
        
                                                           // Establecer fondo transparente
                                                                  self.backgroundColor = .clear
                                                                  self.contentView.backgroundColor = .clear
    }
                                                      
                                                      

}
