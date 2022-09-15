//
//  CodePresentViewController.swift
//  Test11
//
//  Created by 박성재 on 2022/09/11.
//

import UIKit

protocol SendDataDelegates: AnyObject {
    func sendData(name: String)
}

class CodePresentViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    weak var delegate : SendDataDelegates?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tabBackButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "Gunter")
        self.presentingViewController?.dismiss(animated: false)
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
