//
//  ViewController.swift
//  Task5App
//
//  Created by Jui Kimura on 2021/04/01.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var dividendTextField: UITextField!
    @IBOutlet weak private var divisorTextField: UITextField!
    @IBOutlet weak private var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        dividendTextField.keyboardType = .numberPad
        divisorTextField.keyboardType = .numberPad
    }

    @IBAction private func divisionbutton(_ sender: Any) {
        guard let dividend = Double(dividendTextField.text!) else {
            presentAlert(message: "割られる数を入力して下さい")
            return
        }

        guard let divisor = Double(divisorTextField.text!) else {
            presentAlert(message: "割る数を入力して下さい")
            return
        }

        guard divisor != 0 else {
            presentAlert(message: "割る数には0を入力しないで下さい")
            return
        }

        let result = (dividend / divisor)
        resultLabel.text = String(result)
    }

    private func presentAlert(message: String) {
            let alert = UIAlertController(title: "課題5", message: message, preferredStyle: .alert)

            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)

            present(alert, animated: true, completion: nil)
        }
    }
