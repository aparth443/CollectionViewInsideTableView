//
//  MyTableViewCell.swift
//  CollectionViewInsideTableView
//
//  Created by cumulations on 26/05/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}

extension MyTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return singerList[myCollectionView.tag].imageGallary.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "collectioncell", for: indexPath) as! MyCollectionViewCell
        cell.myImage.image = UIImage(named: singerList[myCollectionView.tag].imageGallary[indexPath.row])
        return cell
    }
    
    
}
