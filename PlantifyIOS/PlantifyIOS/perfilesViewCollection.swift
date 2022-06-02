//
//  perfilesViewCollection.swift
//  PlantifyIOS
//
//  Created by Carlos García Geronis on 02/06/22.
//

import UIKit

class PerfilesViewCollection: UICollectionViewCell{
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var backgroundColorView: UIView!
    @IBOutlet weak var perfTitleLabel: UILabel!
    @IBOutlet weak var perfSubtitleLabel: UILabel!
    
    var perfil: Perfil! {
        didSet {
            self.updateUI()
        }
    }
    func updateUI() {
        if let perfil = perfil {
            featuredImageView.image = perfil.featuredImage
            perfTitleLabel.text = perfil.title
            perfSubtitleLabel.text = perfil.subtitle
        } else {
            featuredImageView.image = nil
            perfTitleLabel.text = nil
            perfSubtitleLabel.text = nil
        }
        featuredImageView.layer.cornerRadius = 10.0
        featuredImageView.layer.masksToBounds = true
    }
}
