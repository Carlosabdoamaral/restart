//
//  AudioPlayer.swift
//  Restart
//
//  Created by Carlos Amaral on 15/11/21.
//

import Foundation
import AVFoundation //Framework para usar audio

var audioPlayer : AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not play the sound file.")
        }
    }
}
