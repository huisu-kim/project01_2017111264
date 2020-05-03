//
//  MakeViewController.swift
//  GreatSaying
//
//  Created by SWUCOMPUTER on 2020/05/03.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class MakeViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var topicPicker: UIPickerView!
    @IBOutlet var userText: UITextField!
    
    var topicArray : [String] = []
    var topic : Int = 0
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
          textField.resignFirstResponder()
          return true
      }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return topicArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
               
        return topicArray[row]
           
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        

    }
    
    @IBAction func save(_ sender: Any) {
        print(topicArray)
    }
    
    override func prepare (for segue : UIStoryboardSegue, sender : Any?) {
           if segue.identifier == "toShowView" {
            let destVC = segue.destination as! ShowViewController
               
            let saying : String! = userText.text
            
            destVC.Info = saying
            destVC.userTopic = self.topicPicker.selectedRow(inComponent: 0)
                   
           }
    
    
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
