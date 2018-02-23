//
//  ViewController.swift
//  iSonidos
//
//  Created by CETYS on 04/10/17.
//  Copyright © 2017 CETYS. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var reproductor: AVAudioPlayer!

    @IBAction func sonidoPulsado(_ sender: UIButton) {
        print("boton pulsado!")
        reproductor.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rutaAlArchivo:NSURL = Bundle.main.url(forResource: "CorrePlatano",withExtension: "wav")! as NSURL
        do{
            try reproductor = AVAudioPlayer(contentsOf: rutaAlArchivo as URL)
        }catch{}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

