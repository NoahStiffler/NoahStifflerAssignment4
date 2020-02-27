//
//  ViewTwo.swift
//  NoahStifflerAssignment4
//
//  Created by Noah Stiffler on 2/26/20.
//  Copyright © 2020 Noah Stiffler. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewTwo: UIViewController {
    
    @IBOutlet weak var animationView: UIImageView!
    

    override func viewDidAppear(_ animated: Bool) {
        
        var soundID: SystemSoundID = 0
        let soundFile:String=Bundle.main.path(forResource:"cats2",ofType: "wav")!
        let soundURL:NSURL = NSURL(fileURLWithPath: soundFile)
        AudioServicesCreateSystemSoundID(soundURL, &soundID)
        AudioServicesPlaySystemSound(soundID)
        
        
        let alert = UIAlertController(title: "OH NO", message: "MY MAC HAS RUN OUT OF RAM AND THE ONLY WAY TO TERMINATE THE SIMULATOR IS TO MAKE PEACE WITH THE CATS!", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: NSLocalizedString("SELECT OFFERING", comment: "Default action"), style: .`default`, handler: { _ in }))
        
        self.present(alert,animated: true)
    }
    
    
    
    
    @IBAction func selectRAM(_ sender: Any) {
        
        var soundID: SystemSoundID = 0
        let soundFile:String=Bundle.main.path(forResource:"angry3",ofType: "wav")!
        let soundURL:NSURL = NSURL(fileURLWithPath: soundFile)
        AudioServicesCreateSystemSoundID(soundURL, &soundID)
        AudioServicesPlaySystemSound(soundID)
        
        
        let ramAlert = UIAlertController(title: "WRONG!", message: "YOU HAVE NO RAM LEFT TO GIVE! YOUR 8GBs ARE SOLDERED TO THE MOTHERBOARD! #RightToRepair", preferredStyle: .alert)
        ramAlert.addAction(UIAlertAction(title: NSLocalizedString("TRY AGAIN", comment: "Default action"), style: .`default`, handler: { _ in }))
        self.present(ramAlert,animated: true)
    }
    
    
    @IBAction func selectCash(_ sender: Any) {
        var soundID: SystemSoundID = 0
        let soundFile:String=Bundle.main.path(forResource:"Gameboy-notification_sound-1867536",ofType: "mp3")!
        let soundURL:NSURL = NSURL(fileURLWithPath: soundFile)
        AudioServicesCreateSystemSoundID(soundURL, &soundID)
        AudioServicesPlaySystemSound(soundID)
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let animation: [UIImage] = [
            UIImage(named: "cat0")!,
            UIImage(named: "cat1")!,
            UIImage(named: "cat2")!,
            UIImage(named: "cat3")!,
            UIImage(named: "cat4")!,
            UIImage(named: "cat5")!,
            UIImage(named: "cat6")!,
            UIImage(named: "cat7")!,
            UIImage(named: "cat8")!,
        ]
        
        animationView.animationImages = animation
        animationView.animationDuration = 0.25
        animationView.startAnimating()
        
        
        
      
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
