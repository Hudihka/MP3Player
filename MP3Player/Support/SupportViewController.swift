//
//  SupportViewController.swift
//  MP3Player
//
//  Created by Username on 20.01.2020.
//  Copyright © 2020 itMegastar. All rights reserved.
//

import UIKit

class SupportViewController: UIViewController {

    let manager = Music.shared

    override func viewDidLoad() {
        super.viewDidLoad()
        manager.delegate = self
    }


}

extension SupportViewController: ProtocolMusic{
    func nextTrack() {

        if let VC = self as? FirstVC {
            VC.tableView.reloadData()
        } else if let VC = self as? TwoViewController{
            VC.reloadData()
        }
    }

    func timeText(muchIsPlaying: String, muchIsLeft: String, progress: Double) {
//        if let VC = self as? TwoViewController{
//            VC.reloadData()
//        }
    }


}
