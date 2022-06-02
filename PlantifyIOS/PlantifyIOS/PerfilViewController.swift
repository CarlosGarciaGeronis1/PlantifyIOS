//
//  PerfilViewController.swift
//  PlantifyIOS
//
//  Created by Carlos García Geronis on 02/06/22.
//

import UIKit

class PerfilViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    var perf = Perfil.fetchPerfil()
    let cellScale: CGFloat = 0.6
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenSize = UIScreen.main.bounds.size
        let cellWidth = floor(screenSize.width * cellScale)
        let cellHeight = floor(screenSize.height * cellScale)
        let insetX = (view.bounds.width - cellWidth) / 0.2
        let insetY = (view.bounds.height - cellHeight) / 2.0
        let layout = collectionView!.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        collectionView.contentInset = UIEdgeInsets(top: insetY, left: insetX, bottom: insetY, right: insetX)
        
        collectionView.dataSource = self
    }
}

extension PerfilViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return perf.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "perfilesViewCollection", for: indexPath) as! PerfilesViewCollection
        let perfil = perf[indexPath.item]
        cell.perfil = perfil
        return cell
    }
}
