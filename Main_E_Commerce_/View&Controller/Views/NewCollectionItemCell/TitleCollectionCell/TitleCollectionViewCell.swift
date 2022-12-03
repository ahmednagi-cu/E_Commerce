//
//  ItemCollectionViewCell.swift
//  Main_E_Commerce_
//
//  Created by ahmed nagi on 27/11/2022.
//

import UIKit

class TitleCollectionViewCell: UICollectionViewCell {

     static let identifier = "TitleCollectionViewCell"
    @IBOutlet weak var titleView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        titleView.layer.cornerRadius = 10
    }

}
