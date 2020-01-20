//
//  ExtensionMusicDelegate.swift
//  MP3Player
//
//  Created by Username on 20.01.2020.
//  Copyright © 2020 itMegastar. All rights reserved.
//

import Foundation
import AVFoundation

extension Music: AVAudioPlayerDelegate{

    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer,
                                     successfully flag: Bool){
        nextTrack()
        self.delegate?.nextTrack()
    }

    
}
