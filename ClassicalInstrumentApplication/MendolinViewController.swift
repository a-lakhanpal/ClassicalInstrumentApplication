//
//  MendolinViewController.swift
//  ClassicalInstrumentApplication
//
//  Created by Swati Sharma on 27/09/19.
//  Copyright © 2019 Ankur Lakhanpal. All rights reserved.
//

import UIKit
import AVFoundation

class MendolinViewController: UIViewController {
    var audioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func PlayMendolinButton(_ sender: UIButton) {
        if sender.isSelected == false {
              
                  sender.isSelected = true
              // Set the sound file name & extension
              let alertSound = URL(fileURLWithPath: Bundle.main.path(forResource: "Mandolian", ofType: "wav")!)
              
              do {
                  // Preperation
                  try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
              } catch _ {
              }
              do {
                  try AVAudioSession.sharedInstance().setActive(true)
              } catch _ {
              }
              
              // Play the sound
              do {
                  audioPlayer = try AVAudioPlayer(contentsOf: alertSound)
              } catch _{
              }
              
              audioPlayer.prepareToPlay()
              audioPlayer.play()
          }
          else {
          
                  sender.isSelected = false
          
          audioPlayer.stop()
              
              }
          }
      }
    
    
    
    
    
    
    
    
    
    
    
  
