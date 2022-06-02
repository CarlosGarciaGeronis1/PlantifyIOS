//
//  Perfil.swift
//  PlantifyIOS
//
//  Created by Carlos García Geronis on 02/06/22.
//

import UIKit

class Perfil {
    var title = ""
    var subtitle = ""
    var featuredImage: UIImage
    
    init(title: String, susbtitle: String, featuredImage: UIImage) {
        self.title = title
        self.subtitle = susbtitle
        self.featuredImage = featuredImage
    }
    static func fetchPerfil() -> [Perfil] {
        return [Perfil(title: "Mis Plantas", susbtitle: "Recamara", featuredImage: UIImage(named: "bedroom")!),
                Perfil(title: "Mis Plantas", susbtitle: "Sala", featuredImage: UIImage(named: "livingroom")!),
                Perfil(title: "Mis Plantas", susbtitle: "Balcon", featuredImage: UIImage(named: "rooftop")!)]
    }
}
