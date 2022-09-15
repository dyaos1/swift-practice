//
//  ViewController.swift
//  Test11
//
//  Created by 박성재 on 2022/09/11.
//

import UIKit

class ViewController: UIViewController, SendDataDelegates {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tabCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") as? CodePushViewController else { return }
        viewController.name = "PSJ"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func tabCodePresent(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController") as? CodePresentViewController else { return }
        viewController.name = "PSJ"
        viewController.delegate = self
        self.navigationController?.present(viewController, animated: true, completion: nil)
    }

    func sendData(name: String) {
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SeguePushViewController {
            viewController.name = "Hello??"
        }
    }
    
//    @IBAction func tabCodePresent(_ sender: UIButton) {
//        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") else { return }
//
//        self.presentingViewController?.present(viewController, animated: true, completion: nil)
//    }
}

