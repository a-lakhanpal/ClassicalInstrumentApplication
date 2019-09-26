//
//  ViolinViewController.swift
//  ClassicalInstrumentApplication
//
//  Created by Swati Sharma on 26/09/19.
//  Copyright © 2019 Ankur Lakhanpal. All rights reserved.
//

import UIKit
import AVFoundation

class ViolinViewController: UIViewController {
 
     var audioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func PlayViolinButton(_ sender: UIButton) {
      
        if sender.isSelected == false {
            
                sender.isSelected = true
            // Set the sound file name & extension
            let alertSound = URL(fileURLWithPath: Bundle.main.path(forResource: "Violin", ofType: "wav")!)
            
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
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


