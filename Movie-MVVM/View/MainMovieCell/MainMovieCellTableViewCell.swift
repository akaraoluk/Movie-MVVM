//
//  MainMovieCellTableViewCell.swift
//  Movie-MVVM
//
//  Created by Abdurrahman Karaoluk on 26.04.2024.
//

import UIKit
import SDWebImage

class MainMovieCellTableViewCell: UITableViewCell {
    
    public static var identifier: String {
        get {
            return "MainMovieCellTableViewCell"
        }
    }
    
    public static func register() -> UINib {
        UINib(nibName: "MainMovieCellTableViewCell", bundle: nil)
    }
    
    // IBOutlets:
    @IBOutlet var backView: UIView!
    @IBOutlet var movieImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var rateLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        backView.addBorder(color: .label, width: 1)
        backView.round()
        backView.backgroundColor = .lightGray
        
        movieImageView.round(5)
    }
    
    func setupCell(viewModel: MovieTableCellViewModel) {
        self.nameLabel.text = viewModel.title
        self.dateLabel.text = viewModel.date
        self.rateLabel.text = viewModel.rating
        self.movieImageView.sd_setImage(with: viewModel.imageUrl)
    }
}
