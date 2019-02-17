//
//  Tutorial_Store.swift
//  Repopulation
//
//  Created by Caden Kowalski on 1/19/19.
//  Copyright © 2019 Caden Kowalski. All rights reserved.
//

import UIKit

class Store: UIViewController {
    
    @IBOutlet weak var Plots_View: UIView!
    @IBOutlet weak var Store_Page: UIImageView!
    @IBOutlet weak var Flower_Price: UILabel!
    @IBOutlet weak var Flower_Oxygen_Per_Sec: UILabel!
    @IBOutlet weak var Bush_Price: UILabel!
    @IBOutlet weak var Bush_Oxygen_Per_Sec: UILabel!
    @IBOutlet weak var Flower_Bed_Price: UILabel!
    @IBOutlet weak var Flower_Bed_Oxygen_Per_Sec: UILabel!
    @IBOutlet weak var Grape_Vine_Price: UILabel!
    @IBOutlet weak var Grape_Vine_Oxygen_Per_Sec: UILabel!
    @IBOutlet weak var Small_Tree_Price: UILabel!
    @IBOutlet weak var Small_Tree_Oxygen_Per_Sec: UILabel!
    @IBOutlet weak var Large_Tree_Price: UILabel!
    @IBOutlet weak var Large_Tree_Oxygen_Per_Sec: UILabel!
    @IBOutlet weak var Apple_Tree_Price: UILabel!
    @IBOutlet weak var Apple_Tree_Oxygen_Per_Sec: UILabel!
    @IBOutlet weak var Christmas_Tree_Price: UILabel!
    @IBOutlet weak var Christmas_Tree_Oxygen_Per_Sec: UILabel!
    @IBOutlet weak var Bonsai_Tree_Price: UILabel!
    @IBOutlet weak var Bonsai_Tree_Oxygen_Per_Sec: UILabel!
    @IBOutlet weak var Forest_Price: UILabel!
    @IBOutlet weak var Forest_Oxygen_Per_Sec: UILabel!
    @IBOutlet weak var Plants_Tutorial_Picture: UIImageView!
    @IBOutlet weak var Plots_Tutorial_Next: UIButton!
    @IBOutlet weak var Plants_Tutorial_Next: UIButton!
    @IBOutlet weak var Plots_Tutorial_Picture: UIImageView!
    @IBOutlet weak var New_Plot_Btn: UIButton!
    @IBOutlet weak var Plot_Upgrade_View: UIView!
    @IBOutlet weak var Plot_Purchase_Price: UILabel!
    @IBOutlet weak var Plot_Purchase_Time: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Plants_Tutorial_Picture.image = UIImage(named: "11th_Instruction")
        Tutorial_Stage += 1
        Plants_Tutorial_Next.isHidden = true
        Flower_Price.text = "Free"
        Flower_Oxygen_Per_Sec.text = "10"
        Plots_View.isHidden = true
        Plot_Upgrade_View.isHidden = true
        Plot_Purchase_Price.text = "Free"
        Plot_Purchase_Time.text = "1 Minute"
    }
    
    override var prefersStatusBarHidden: Bool {
        // Hides the Status Bar
        return true
    }
    
    @IBAction func Plants_Tab_Pressed(_ sender: Any) {
        Store_Page.image = UIImage(named: "Store_Page_1")
        Plots_View.isHidden = true
    }
    
    @IBAction func Plots_Tab_Pressed(_ sender: Any) {
        Store_Page.image = UIImage(named: "Store_Page_2")
        Plots_View.isHidden = false
        Plants_Tutorial_Next.isHidden = false
        Plots_Tutorial_Picture.image = UIImage(named: "12th_Instruction")
        Tutorial_Stage += 1
    }
    
    @IBAction func Upgrades_Tab_Pressed(_ sender: Any) {
        Store_Page.image = UIImage(named: "Store_Page_3")
    }
    
    @IBAction func Gems_Tab_Pressed(_ sender: Any) {
        Store_Page.image = UIImage(named: "Store_Page_4")
    }
    
    @IBAction func Back_Btn_Pressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func Flower_Purchased(_ sender: Any) {
        if Tutorial_Completed == false {
            Tutorial_Stage += 1
        }
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func Next_Instruction(_ sender: Any) {
        switch Tutorial_Stage {
        case 12:
            Tutorial_Stage += 1
            Plots_Tutorial_Picture.isHidden = true
            Plots_Tutorial_Next.isHidden = true
        default:
            print("Err-303c-NoParentFoundForSubClass_<#22768%%Tutorial_WithKeyValue_<*928403*>_Err>")
        }
    }
    
    @IBAction func New_Plot(_ sender: Any) {
        New_Plot_Btn.isHidden = true
        Plot_Upgrade_View.isHidden = false
    }
}
