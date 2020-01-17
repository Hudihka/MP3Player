//
//  MusicCell.swift
//  MP3Player
//
//  Created by Username on 17.01.2020.
//  Copyright © 2020 itMegastar. All rights reserved.
//

import UIKit

class MusicCell: UITableViewCell {

    @IBOutlet weak var placeholderView: UIImageView!

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelSubtitle: UILabel!

    @IBOutlet weak var labelLenght: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
}
