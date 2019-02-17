//
//  Tutorial.swift
//  Repopulation
//
//  Created by Caden Kowalski on 1/21/19.
//  Copyright © 2019 Caden Kowalski. All rights reserved.
//

import UIKit

var Tutorial_Stage = 1
var First_Instruction_Completed = false
var First_Upgrade_Started = false
var First_Upgrade_Completed = false
var Tutorial_Completed = false

class Tutorial_1: UIViewController {

    // Resource Values
    @IBOutlet weak var Carbon_Dioxide_Value: UILabel!
    @IBOutlet weak var Oxygen_Value: UILabel!
    @IBOutlet weak var People_Value: UILabel!
    @IBOutlet weak var Gems_Value: UILabel!
    // Misc
    @IBOutlet weak var Oxygen_Pointer: UIImageView!
    // Upgrade Vars
    @IBOutlet weak var Upgrade_View: UIView!
    @IBOutlet weak var Plant_Lvl: UILabel!
    @IBOutlet weak var Upgrade_Price: UILabel!
    @IBOutlet weak var Upgrade_Oxygen_Per_Sec: UILabel!
    @IBOutlet weak var Upgrade_Time: UILabel!
    // Upgrade Info Vars
    @IBOutlet weak var Upgrade_Info_View: UIView!
    @IBOutlet weak var Upgrade_Gem_Price: UILabel!
    @IBOutlet weak var Upgrade_Progress_Bar: UIImageView!
    // Boxes
    @IBOutlet weak var Box_1: UIImageView!
    @IBOutlet weak var Box_2: UIImageView!
    // Tutorial
    @IBOutlet weak var Tutorial_Picture: UIImageView!
    @IBOutlet weak var Tutorial_Next: UIButton!
    // Progress Bar Setup
    var Progress_1: UIImage!
    var Progress_2: UIImage!
    var Progress_3: UIImage!
    var Progress_4: UIImage!
    var Progress_5: UIImage!
    var Progress_6: UIImage!
    var Progress_7: UIImage!
    var Progress_8: UIImage!
    var Progress_9: UIImage!
    var Progress_10: UIImage!
    var Progress_11: UIImage!
    var Progress_12: UIImage!
    var Progress_13: UIImage!
    var Progress_14: UIImage!
    var Progress_15: UIImage!
    var Progress_16: UIImage!
    var Progress_17: UIImage!
    var Progress_18: UIImage!
    var Progress_19: UIImage!
    var Progress_20: UIImage!
    var Progress_21: UIImage!
    var Progress_22: UIImage!
    var Progress_23: UIImage!
    var Progress_24: UIImage!
    var Progress_25: UIImage!
    var Progress_26: UIImage!
    var Progress_27: UIImage!
    var Progress_28: UIImage!
    var Progress_29: UIImage!
    var Progress_30: UIImage!
    var Progress_31: UIImage!
    var Progress_32: UIImage!
    var images: [UIImage]!
    var animatedImage: UIImage!
    var Building_1: UIImage!
    var Building_2: UIImage!
    var Building_Images: [UIImage]!
    var Building_Animated_Image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Setup
        Carbon_Dioxide_Value.text = "0"
        Oxygen_Value.text = "0"
        People_Value.text = "0"
        Gems_Value.text = "0"
        Plant_Lvl.text = "1"
        Upgrade_Price.text = "Free"
        Upgrade_Oxygen_Per_Sec.text = "2"
        Upgrade_Time.text = "1 Minute"
        Upgrade_Gem_Price.text = "Free"
        Tutorial_Picture.image = UIImage(named: "1st_Instruction")
        Tutorial_Next.isHidden = true
        Oxygen_Pointer.isHidden = true
        Upgrade_View.isHidden = true
        Upgrade_Info_View.isHidden = true
        Box_1.isUserInteractionEnabled = true
        let Progress_1 = UIImage(named: "Progress_Bar_1")
        let Progress_2 = UIImage(named: "Progress_Bar_2")
        let Progress_3 = UIImage(named: "Progress_Bar_3")
        let Progress_4 = UIImage(named: "Progress_Bar_4")
        let Progress_5 = UIImage(named: "Progress_Bar_5")
        let Progress_6 = UIImage(named: "Progress_Bar_6")
        let Progress_7 = UIImage(named: "Progress_Bar_7")
        let Progress_8 = UIImage(named: "Progress_Bar_8")
        let Progress_9 = UIImage(named: "Progress_Bar_9")
        let Progress_10 = UIImage(named: "Progress_Bar_10")
        let Progress_11 = UIImage(named: "Progress_Bar_11")
        let Progress_12 = UIImage(named: "Progress_Bar_12")
        let Progress_13 = UIImage(named: "Progress_Bar_13")
        let Progress_14 = UIImage(named: "Progress_Bar_14")
        let Progress_15 = UIImage(named: "Progress_Bar_15")
        let Progress_16 = UIImage(named: "Progress_Bar_16")
        let Progress_17 = UIImage(named: "Progress_Bar_17")
        let Progress_18 = UIImage(named: "Progress_Bar_18")
        let Progress_19 = UIImage(named: "Progress_Bar_19")
        let Progress_20 = UIImage(named: "Progress_Bar_20")
        let Progress_21 = UIImage(named: "Progress_Bar_21")
        let Progress_22 = UIImage(named: "Progress_Bar_22")
        let Progress_23 = UIImage(named: "Progress_Bar_23")
        let Progress_24 = UIImage(named: "Progress_Bar_24")
        let Progress_25 = UIImage(named: "Progress_Bar_25")
        let Progress_26 = UIImage(named: "Progress_Bar_26")
        let Progress_27 = UIImage(named: "Progress_Bar_27")
        let Progress_28 = UIImage(named: "Progress_Bar_28")
        let Progress_29 = UIImage(named: "Progress_Bar_29")
        let Progress_30 = UIImage(named: "Progress_Bar_30")
        let Progress_31 = UIImage(named: "Progress_Bar_31")
        let Progress_32 = UIImage(named: "Progress_Bar_32")
        let Building_1 = UIImage(named: "Under_Construction_1")
        let Building_2 = UIImage(named: "Under_Construction_2")
        images = [Progress_1, Progress_2, Progress_3,Progress_4, Progress_5, Progress_6,Progress_7, Progress_8, Progress_9,Progress_10, Progress_11, Progress_12,Progress_13, Progress_14, Progress_15,Progress_16, Progress_17, Progress_18,Progress_19, Progress_20, Progress_21,Progress_22, Progress_23, Progress_24,Progress_25, Progress_26, Progress_27,Progress_28, Progress_29, Progress_30,Progress_31, Progress_32] as? [UIImage]
        Building_Images = [Building_1, Building_2] as? [UIImage]
    }
    
    override var prefersStatusBarHidden: Bool {
        // Hides the Status Bar
        return true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // Change the tutorial picture when exiting the store
        if Tutorial_Stage == 12 && Tutorial_Completed == false {
            Tutorial_Picture.image = UIImage(named: "13th_Instruction")
            Tutorial_Next.isHidden = false
        }
    }
    
    @IBAction func Next_Instruction(_ sender: Any) {
        // Change the tutorial picture when the next button is clicked
        switch Tutorial_Stage {
        case 2:
            Tutorial_Stage += 1
            Tutorial_Picture.image = UIImage(named: "3rd_Instruction")
            Oxygen_Pointer.isHidden = true
        case 3:
            Tutorial_Stage += 1
            Tutorial_Picture.image = UIImage(named: "4th_Instruction")
        case 4:
            Tutorial_Stage += 1
            Tutorial_Picture.image = UIImage(named: "5th_Instruction")
        case 5:
            Tutorial_Stage += 1
            Tutorial_Picture.image = UIImage(named: "6th_Instruction")
        case 6:
            Tutorial_Stage += 1
            Tutorial_Next.isHidden = true
            Tutorial_Picture.image = UIImage(named: "7th_Instruction")
        case 9:
            Tutorial_Stage += 1
            Tutorial_Picture.image = UIImage(named: "10th_Instruction")
            Tutorial_Next.isHidden = true
        case 12:
            Tutorial_Stage += 1
            Tutorial_Picture.image = UIImage(named: "14th_Instruction")
        case 13:
            Tutorial_Stage += 1
            Tutorial_Picture.image = UIImage(named: "Final_Instruction")
        case 14:
            Tutorial_Completed = true
            Tutorial_Picture.isHidden = true
            Tutorial_Next.isHidden = true
        default:
            print("Err-303c-NoParentFoundForSubClass_<#22768%%Tutorial_WithKeyValue_<*928403*>_Err>")
        }
    }
    
    
    @IBAction func Leaf_Tapped(_ sender: Any) {
        if First_Instruction_Completed == false {
            Oxygen_Value.text = "1"
            Tutorial_Picture.image = UIImage(named: "2nd_Instruction")
            Tutorial_Next.isHidden = false
            Oxygen_Pointer.isHidden = false
            Tutorial_Stage += 1
            First_Instruction_Completed = true
        } else if First_Upgrade_Completed == false && First_Upgrade_Started == false {
            Upgrade_View.isHidden = false
        } else if First_Upgrade_Completed == false && First_Upgrade_Started == true {
            Upgrade_Info_View.isHidden = false
        }
    }
    
    @IBAction func Upgrade_Plant(_ sender: Any) {
        if First_Upgrade_Completed == false {
            First_Upgrade_Started = true
            Upgrade_View.isHidden = true
            Tutorial_Picture.image = UIImage(named: "8th_Instruction")
            Tutorial_Stage += 2
            animatedImage = UIImage.animatedImage(with: images, duration: 60.0)
            Upgrade_Progress_Bar.image = animatedImage
            Building_Animated_Image = UIImage.animatedImage(with: Building_Images, duration: 1.0)
            Box_1.image = Building_Animated_Image
            DispatchQueue.main.asyncAfter(deadline: .now() + 60.0, execute: {
                self.Upgrade_View.isHidden = true
                Tutorial_Stage += 1
                First_Upgrade_Completed = true
                self.Tutorial_Next.isHidden = false
                self.Tutorial_Picture.image = UIImage(named: "9th_Instruction")
                self.Box_1.image = UIImage(named: "Leaf")
            })
        }
    }
    
    @IBAction func Use_Gems(_ sender: Any) {
        Upgrade_Progress_Bar.image = UIImage(named: "Progress_Bar_32")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
            self.Upgrade_Info_View.isHidden = true
            self.Tutorial_Picture.image = UIImage(named: "9th_Instruction")
            self.Tutorial_Next.isHidden = false
            self.Box_1.image = UIImage(named: "Leaf")
            First_Upgrade_Completed = true
        })
    }
}
