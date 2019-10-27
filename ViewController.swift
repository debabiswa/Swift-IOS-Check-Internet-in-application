//
//  ViewController.swift
//  CheckInternet
//
//  Created by Debabiswa Panda on 10/05/19.
//  Copyright © 2019 Debabiswa Panda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func viewDidAppear(_ animated: Bool) {
        
        if CheckInternet.Connection(){
            
            self.Alert(Message: "Connected")
            
        }
        
        else{
            
            self.Alert(Message: "Your Device is not connected with internet")
        }
        
    }
    
    func Alert (Message: String){
        
        let alert = UIAlertController(title: "Alert", message: Message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
    
    
    
    
    
    
    
}

