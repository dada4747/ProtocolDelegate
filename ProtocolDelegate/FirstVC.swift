//
//  FirstVC.swift
//  ProtocolDelegate
//
//  Created by admin on 19/04/22.
//

import UIKit

class FirstVC: UIViewController,UserDataProtocol {
   
    
    
    

    @IBOutlet weak var LabelOne: UILabel!
    
    @IBOutlet weak var LabelTwo: UILabel!
    
    @IBAction func GotoButtonClicked(_ sender: UIButton) {
       
        
        let selectionVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        selectionVC.delegate = self
        self.navigationController?.pushViewController(selectionVC, animated: true)
//                present(selectionVC, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
      
      
    }
//    func passingDetail(firstName: String, lastName: String) {
//        LabelOne.text = firstName
//        LabelTwo.text = lastName
//
//    }
    func passingDetail(object: [String : String]) {
        LabelOne.text = object["firstName"]
        LabelTwo.text = object["lastName"]
       
    }

   
}
