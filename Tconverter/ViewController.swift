 //
//  ViewController.swift
//  Tconverter
//
//  Created by Борух Соколов on 25.03.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tempCelLaible: UILabel!
    @IBOutlet weak var tempFarLable: UILabel!
    
    //это типо констуктор
    @IBOutlet weak var slider: UISlider!{
        didSet{
            slider.maximumValue=100
            slider.minimumValue=0
            slider.value=0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func sliderChange(_ sender: UISlider) {
        
        let tempCelsion=Int(round(slider.value))
        tempCelLaible.text="\(tempCelsion)ºC"
        
        let tempFaring=Int(round((slider.value*9/5)+32))
        tempFarLable.text="\(tempFaring)ºF"
        
        
        
    }
    
    
    /*
     
     тут самое сложно сделать поворот
     мы типо делали привязку к экрану C/R и не только картики привязываем но и отступы
     
     */
    
    

}

