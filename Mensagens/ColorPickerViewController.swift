//
//  ColorPickerViewController.swift
//  Mensagens
//
//  Created by GVP on 24/01/18.
//  Copyright © 2018 Eric Brito. All rights reserved.
//

import UIKit

protocol ColorPickerProtocol: class {
    func applyColor(color: UIColor)
}

class ColorPickerViewController: UIViewController {

    @IBOutlet weak var viColor: UIView!
    @IBOutlet weak var slRed: UISlider!
    @IBOutlet weak var slGreen: UISlider!
    @IBOutlet weak var slBlue: UISlider!
    
    weak var reference: ColorPickerProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func chooseColor(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        reference?.applyColor(color: viColor.backgroundColor!)
    }
    
    @IBAction func changeColor(_ sender: UISlider) {
        viColor.backgroundColor = UIColor(red: CGFloat(slRed.value), green: CGFloat(slGreen.value), blue: CGFloat(slBlue.value), alpha: 1.0)
    }
}
