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
            alert(message: "割られる数を入力して下さい")
            return
        }

        guard let divisor = Double(divisorTextField.text!) else {
            alert(message: "割る数を入力して下さい")
            return
        }

        if divisorTextField.text! == "0" {
            alert(message: "割る数には0を入力しないで下さい")
            return
        }

        let result = (dividend / divisor)
        resultLabel.text = String(result)
    }

    private func alert(message: String) {
            let title = "課題5"
            let message = message
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

            let okLabel = UIAlertAction(title: "OK", style: .default, handler: nil)

            alert.addAction(okLabel)
            self.present(alert, animated: true, completion: nil)
        }
    }
