//
//  NoticiasDetallesViewController.swift
//  LEAFT
//
//  Created by Luis Roberto Contreras Parra on 26/05/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import UIKit

class NoticiasDetallesViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var descripcionLabel: UILabel!
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var dataTitle: UILabel!
    
    var datosLista : String?
    var datosDesc : String?
    var datosImg : UIImage?
    
    var datosDate : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        tituloLabel.text = datosLista
        dataTitle.text = datosLista
        descripcionLabel.text = datosDesc
        image.image = datosImg
        dateLabel.text = datosDate
        
        // Do any additional setup after loading the view.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


class TopAlignedLabel: UILabel {
    override func drawText(in rect: CGRect) {
        guard let labelText = self.text else {
            super.drawText(in: rect)
            return
        }
        
        let attributedText = NSAttributedString(string: labelText, attributes: [NSAttributedString.Key.font: self.font!])
        let textRect = attributedText.boundingRect(with: CGSize(width: rect.width, height: CGFloat.infinity),
                                                   options: .usesLineFragmentOrigin, context: nil)
        
        var newRect = rect
        newRect.size.height = ceil(textRect.height)
        
        super.drawText(in: newRect)
    }
}

