//
//  BaseViewController.swift
//  Mensagens
//
//  Created by GVP on 24/01/18.
//  Copyright © 2018 Eric Brito. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    @IBOutlet weak var lbMessage: UILabel!
    var message: Message!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func changeColor(_ sender: UIButton){
        
        if let reference = self as? ColorPickerProtocol{
        let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
        colorPicker.modalPresentationStyle = .overCurrentContext
        colorPicker.reference = self
        present(colorPicker, animated: true, completion: nil)
        }
        
    }
  

}
