//
//  ViewController.swift
//  GreatSaying
//
//  Created by SWUCOMPUTER on 2020/05/02.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var kindOfSaying: UIPickerView!
    @IBOutlet var tell: UILabel!
    
    @IBOutlet var testLabel: UILabel!
    

    
    let topicArray : Array<String> = ["도전","사랑","인생","열정"]
    let fromArray : Array<String> = ["책 명언", "영화 명언", "인물 명언" ,"내가 만든 명언"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
         if component == 0{
                   return topicArray.count
               } else {
                   return fromArray.count
               }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return topicArray[row]
        } else {
            return fromArray[row]
        }
    }
    
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    override func prepare (for segue : UIStoryboardSegue, sender : Any?) {
        if segue.identifier == "toShowView" {
            let destVC = segue.destination as! ShowViewController
            
            destVC.topic = self.kindOfSaying.selectedRow(inComponent: 0)
            
            destVC.from = self.kindOfSaying.selectedRow(inComponent: 1)
        
        }
        
        if segue.identifier == "toMakeView" {
            let destVC = segue.destination as! MakeViewController
            
            destVC.topicArray = self.topicArray
          
        }
            
           
        }
    }
    

