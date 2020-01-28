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


//    https://stackoverflow.com/questions/2325167/avaudioplayer-playback-progress

}

