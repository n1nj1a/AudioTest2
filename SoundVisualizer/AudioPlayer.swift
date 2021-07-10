//
//  AudioPlayer.swift
//  SoundVisualizer
//
//  Created by Shuichi on 2021/07/10.
//  Copyright © 2021 Brandon Baars. All rights reserved.
//

import Foundation
import AVFoundation

class AudioPlayer: ObservableObject {
    private var audioPlayer: AVAudioPlayer?
    
//    let audioFilePath = "sample"
    
    init(name: String) {
        self.playAudio(name: name)
    }
    
    func playAudio(name: String) {
        guard let url = Bundle.main.url(forResource: name, withExtension: "mp3") else { return }
        audioPlayer = try! AVAudioPlayer(contentsOf: url)
        //            audioPlayer?.delegate = self
        audioPlayer?.play()
    }
    
    func stopAudio() {
        audioPlayer?.stop()
    }
    
}
