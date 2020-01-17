//
//  TwoViewController.swift
//  MP3Player
//
//  Created by Username on 17.01.2020.
//  Copyright © 2020 itMegastar. All rights reserved.
//

import UIKit

class TwoViewController: UIViewController {

    @IBOutlet weak var labelNameTrack: UILabel!

    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var progressView: UISlider!
    @IBOutlet weak var labelTimeOne: UILabel!
    @IBOutlet weak var labelTimeTwo: UILabel!


    @IBOutlet weak var playOrPauseLabel: UIButton!


    @IBOutlet weak var switchInfinitiReplay: UISwitch!
    @IBOutlet weak var switchRandomNextTrack: UISwitch!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
