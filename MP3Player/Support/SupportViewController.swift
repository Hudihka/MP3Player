//
//  SupportViewController.swift
//  MP3Player
//
//  Created by Username on 20.01.2020.
//  Copyright © 2020 itMegastar. All rights reserved.
//

import UIKit

class SupportViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self,
                                               selector: #selector(finishTrack),
                                               name: NotificationName.finishTrack.nameNotific,
                                               object: nil)
    }


    @objc func finishTrack(notfication: Notification) {}


}
