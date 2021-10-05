//
//  ViewController.swift
//  Lunar Calendar
//
//  Created by Sumana Sudarshan on 10/4/21.
//

import UIKit

class ViewController: UIViewController {
    var  currentImageNumber = 0
    let  date = Date()
    var currentYear:Int = 0
    var image = "zodiac"
    @IBOutlet weak var yearLabel: UILabel!
    
    
    @IBOutlet weak var animalImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        currentYear = Calendar.current.component(.year, from: date)
        currentImageNumber=1
        animalImageView.image=UIImage.init(named: image+String(currentImageNumber))
        yearLabel.text=String(currentYear)
        //print(currentYear)
    }
    
    
    @IBAction func leftButtonPressed(_ sender: Any) {
        currentYear-=1
 
            if currentImageNumber == 1{
                currentImageNumber = 12
            }
            else{
                currentImageNumber-=1
            }
        animalImageView.image=UIImage.init(named: image+String(currentImageNumber))
        yearLabel.text=String(currentYear)
        
    }
    
    @IBAction func rightButtonPressed(_ sender: Any) {
        currentYear+=1
            if currentImageNumber == 12{
                currentImageNumber = 1
            }
            else{
                currentImageNumber+=1
            }
        animalImageView.image=UIImage.init(named: image+String(currentImageNumber))
        yearLabel.text=String(currentYear)
    }
}

