//
//  ProductCollectionViewCell.swift
//  Main_E_Commerce_
//
//  Created by ahmed nagi on 27/11/2022.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var productView: UIView!
    static let identifier = "ProductCollectionViewCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        productView.layer.cornerRadius = 10
    }

}
