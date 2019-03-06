//
//  ViewController.swift
//  musictrivia
//
//  Created by Yanez, Rikki L on 2/20/19.
//  Copyright © 2019 com.rikkiyanez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //variables
    var Joan:Int=0
    var Bob:Int=0
    var Bon:Int=0
    var Stevie:Int=0
    var Jim:Int=0
    var total:Int = 0
    
    // title labels
    
    @IBOutlet weak var musicTrivia: UILabel!
    
    @IBOutlet weak var genreRock: UILabel!
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myTotal: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var myName: UITextField!
    
    //song text outlets
    
    @IBOutlet weak var joanJett: UILabel!
    
    @IBOutlet weak var bobDylan: UILabel!
    
    @IBOutlet weak var stevieNicks: UILabel!
    
    @IBOutlet weak var jimMorrison: UILabel!
    
    //switch action
    
    @IBAction func selectJoan(_ sender: UISwitch) {
        if sender.isOn {
            Joan = 1
        }
        else {
            Joan = 0
        }
        
    }
    
    
    @IBAction func selectBob(_ sender: UISwitch) {
        if sender.isOn {
            Bob = 1
        }
        else {
            Bob = 0
        }
        
    }
    
    
    @IBAction func selectBon(_ sender: UISwitch) {
        if sender.isOn {
            Bon = 1
        }
        else {
            Bon = 0
        }
    }
    
    
    @IBAction func selectStevie(_ sender: UISwitch) {
        if sender.isOn {
            Stevie = 1
        }
        else {
            Stevie = 0
        }
        
    }
    
    
    @IBAction func selectJim(_ sender: UISwitch) {
        if sender.isOn {
            Jim = 1
        }
        else {
            Jim = 0
        }
        
    }
    
    //buttons will go down here
    
    
    @IBAction func myBegin(_ sender: UIButton) {
        let name = myName.text!
        myLabel.text = "Let's Get Rollin' \(name)"
        myName.resignFirstResponder()
        
    }
    
    
    @IBAction func mySubmit(_ sender: UIButton) {
        total = Joan + Bob + Bon + Stevie + Jim
        if(total <= 1) {
            myTotal.text = "Better luck next time!"
            myImage.image = UIImage(named: "thumbs")
        }
        else if(total > 1 && total <= 4){
            myTotal.text = "Wow! You know your music."
            myImage.image = UIImage(named: "awesome")
        }
        else {
            myTotal.text = "You know your rock history!"
            myImage.image = UIImage(named: "rockstar")
        }
    }
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

