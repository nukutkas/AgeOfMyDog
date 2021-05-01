//
//  ViewController.swift
//  AgeOfMyDog
//
//  Created by Татьяна Кочетова on 17.03.2021.
//

import UIKit

class ConverterViewController: UIViewController {
    
    private var ageOfMyDog = 0
    private var humanAgeOfMyDog = 0

    @IBOutlet var dogAgeLabel: UILabel!
    @IBOutlet var humanAgeLabel: UILabel!
    @IBOutlet var ageSlider: UISlider! {
        didSet {
            ageSlider.minimumValue = 1
            ageSlider.value = 1
            ageSlider.maximumValue = 20
            ageSlider.setThumbImage(#imageLiteral(resourceName: "output-onlinejpgtools (3)"), for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        dogAgeLabel.text = "Моей собаке полных лет \(ageOfMyDog):"
//        humanAgeLabel.text  = "Человеческих лет ей \(humanAgeOfMyDog)"
        ageSliderChanged(ageSlider)
       
      
    }
    @IBAction func ageSliderChanged(_ sender: UISlider) {
        ageOfMyDog = Int(round(sender.value))
        dogAgeLabel.text = "Моей собаке полных лет: \(ageOfMyDog)"
        humanAgeOfMyDog = Int((16 * log(Double(ageOfMyDog)) + 31))
        humanAgeLabel.text = "Человеческих лет ей: \(humanAgeOfMyDog)"
        
        
    }
    

}

