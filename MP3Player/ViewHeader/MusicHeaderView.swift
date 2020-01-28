//
//  MusicHeaderView.swift
//  MP3Player
//
//  Created by Username on 28.01.2020.
//  Copyright © 2020 itMegastar. All rights reserved.
//

import Foundation
import UIKit

class MusicHeaderView: UIView {
    @IBOutlet var counteinerView: UIView!


    override init (frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
        settingsView()
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        xibSetup()
        settingsView()
    }

    private func xibSetup() {
        counteinerView = loadViewFromNib("MusicHeaderView")
        counteinerView.frame = bounds
        counteinerView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(counteinerView )
    }

    private func settingsView() {



    }




}

