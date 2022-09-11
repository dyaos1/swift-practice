//
//  ViewController.swift
//  Test11
//
//  Created by 박성재 on 2022/09/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tabCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") else { return }
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func tabCodePresent(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController") else { return }

        self.navigationController?.present(viewController, animated: true, completion: nil)
    }

    
//    @IBAction func tabCodePresent(_ sender: UIButton) {
//        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") else { return }
//
//        self.presentingViewController?.present(viewController, animated: true, completion: nil)
//    }
}

