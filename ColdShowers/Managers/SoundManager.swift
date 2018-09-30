//
//  SoundManager.swift
//  ColdShowers
//
//  Created by Nathan Wainwright on 2018-09-30.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

import Foundation

import AVFoundation

var player: AVAudioPlayer?

class SoundManager {
  
  
  
  func doneActivity() {
    do {
      if let fileURL = Bundle.main.path(forResource: "doneActivity", ofType: "wav") {
        player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fileURL))

        print("Continue processing")
      } else {
        print("Error: No file with specified name exists")
      }
    } catch let error {
      print("Can't play the audio file failed with an error \(error.localizedDescription)")
    }
    
    player?.play()
    
    
    
    
    
    
    //    guard let url = Bundle.main.url(forResource: "doneActivity", withExtension: "wav") else { return }
    //
    //    do {
    //      try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
    //      try AVAudioSession.sharedInstance().setActive(true)
    //
    //      /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
    //      player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
    //
    //      /* iOS 10 and earlier require the following line:
    //       player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
    //
    //      guard let player = player else { return }
    //
    //      player.play()
    //
    //    } catch let error {
    //      print(error.localizedDescription)
    //    }
  }
  
  
}
