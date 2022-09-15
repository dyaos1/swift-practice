//
//  ViewController.swift
//  ScreenTransectionExample
//
//  Created by 박성재 on 2022/08/25.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate {

    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("뷰가 로드 되었다.")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("뷰가 나타날 것이다")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("뷰가 나타났다")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("뷰가 사라질 것이다")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("뷰가 사라졌다")
    }

    @IBAction func tabCodePresent(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController") as? CodePresentViewController else { return }
        viewController.modalPresentationStyle = .fullScreen
        viewController.name = "Gunter"
        viewController.delegate = self
        self.present(viewController, animated: true, completion: nil)
    }
    
    @IBAction func tabCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") as? CodePushViewController else { return }
        viewController.name = "Gunter"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SeguePushViewController {
            viewController.name = "Gunter"
        }
    }
    
    func sendData(name: String) {
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
    }
}

