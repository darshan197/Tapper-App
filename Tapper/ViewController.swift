//
//  ViewController.swift
//  Tapper
//
//  Created by Darshan Hosakote  on 9/13/16.
//  Copyright © 2016 DarshanHosakote. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    var maxTaps : Int = 0
    var currentTaps : Int = 0
    
    
    
    //outlets
    @IBOutlet weak var logoImg:UIImageView!
    @IBOutlet weak var howManyTapsTxt:UITextField!
    @IBOutlet weak var playButton:UIButton!
    
    @IBOutlet weak var tapBtn : UIButton!
    @IBOutlet weak var tapsLbl : UILabel!
    

    @IBAction func onCoinTapped(sender : UIButton!){
        currentTaps += 1
        updateTapsLbl()
        
        if isGameOver(){
            reStartGame()
        }
    }
    @IBAction func onPlayButtonPressed(sender: UIButton!){
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != ""{
            
            logoImg.hidden = true
            playButton.hidden = true
            howManyTapsTxt.hidden = true
            
            tapBtn.hidden = false
            tapsLbl.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLbl()
        
    }
        
}
    func reStartGame() {
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImg.hidden = false
        playButton.hidden = false
        howManyTapsTxt.hidden = false
        
        tapBtn.hidden = true
        tapsLbl.hidden = true
    }
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        }else {
            return false
        }
    }
    func updateTapsLbl() {
        tapsLbl.text = "\(currentTaps) Taps"
    }
}

