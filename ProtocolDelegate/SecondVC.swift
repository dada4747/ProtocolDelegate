//
//  SecondVC.swift
//  ProtocolDelegate
//
//  Created by admin on 19/04/22.
//

import UIKit
protocol UserDataProtocol{
    func passingDetail(object:[String:String])
}
class SecondVC: UIViewController {
   var delegate:UserDataProtocol!
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goToMainButtonClick(_ sender: UIButton) {
        let detailDic:[String:  String] = ["firstName":firstName.text!,"lastName":lastName.text!]
        delegate.passingDetail(object: detailDic)
    }
    
    
}
