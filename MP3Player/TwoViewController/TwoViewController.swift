//
//  TwoViewController.swift
//  MP3Player
//
//  Created by Username on 17.01.2020.
//  Copyright © 2020 itMegastar. All rights reserved.
//

import UIKit

class TwoViewController: SupportViewController {

    var model: MusicStruct?

    @IBOutlet weak var labelNameTrack: UILabel!
    @IBOutlet weak var labelArtist: UILabel!


    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var progressView: UISlider!
    @IBOutlet weak var labelTimeOne: UILabel!
    @IBOutlet weak var labelTimeTwo: UILabel!


    @IBOutlet weak var playOrPauseLabel: UIButton!


    @IBOutlet weak var switchInfinitiReplay: UISwitch!
    @IBOutlet weak var switchRandomNextTrack: UISwitch!


    override func viewDidLoad() {
        super.viewDidLoad()

        infoTrack()
    }
    

    static func route(model: MusicStruct) -> TwoViewController{

        let storuboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storuboard.instantiateViewController(withIdentifier: "TwoViewController") as! TwoViewController

        vc.model = model

        return vc

    }

    private func infoTrack(){

        guard let tupl = model?.content else {return}

        imageView.image = tupl.image
        labelNameTrack.text = tupl.title
        labelArtist.text = tupl.artist

    }

    func reloadData(){
        model = manager.getActiveStruct
        infoTrack()
    }


    @IBAction func buttonDismiss(_ sender: Any) {

        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func nextTrack(_ sender: Any) {
        manager.nextTrack()
        reloadData()
    }

    @IBAction func prevTrack(_ sender: Any) {
        manager.prevTrack()
        model = manager.getActiveStruct
        infoTrack()
    }

    @IBAction func playPause(_ sender: UIButton) {

        if manager.activePlayer {
            manager.audioPlayer?.pause()
            sender.setTitle("плей", for: .normal)
        } else {
            manager.audioPlayer?.play()
            sender.setTitle("пауза", for: .normal)
        }


    }

}
