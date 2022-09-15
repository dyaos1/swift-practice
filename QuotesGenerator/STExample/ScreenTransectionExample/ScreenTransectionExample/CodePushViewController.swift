//
//  CodePushViewController.swift
//  ScreenTransectionExample
//
//  Created by 박성재 on 2022/08/25.
//

import UIKit

class CodePushViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    var name: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
        }
        
        // Do any additional setup after loading the view.
    }

    @IBAction func tabBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
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
