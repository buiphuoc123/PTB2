//
//  ViewController.swift
//  GiaiPTBac2
//
//  Created by Cntt05 on 4/8/17.
//  Copyright © 2017 Cntt05. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtsoa: UITextField!
    
    @IBOutlet weak var txtsob: UITextField!
    
    @IBOutlet weak var txtsoc: UITextField!
    
    @IBOutlet weak var txttv: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Hide()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func ResetAction(_ sender: Any) {
        Hide()
        txtsoa.text = ""
        txtsob.text = ""
        txtsoc.text = ""
        txttv.text = ""
    }
    func Hide(){
        txttv.isHidden = true
    }
    func UnHide(){
        txttv.textColor = UIColor.brown
        txttv.isHidden = false
    }

    @IBAction func KetQua_Action(_ sender: Any) {
        UnHide()
       let A : Float = Float (txtsoa.text!)!
       let B : Float = Float (txtsob.text!)!
       let C : Float = Float (txtsoc.text!)!
        
        
       
        
        if A == 0{
            if B == 0{
                if C == 0{
                
                    txttv.text = "Phuong trinh vo so nghiem"
                
                }
                else{
                    txttv.text = "Phuong trinh vo nghiem"
                }
            
            }
            else{
                let x = Float(-C/B)
                let y:String = String(x)
                
                txttv.text = "Nghiem cua phuong trinh la: " + y
        
            }
        
        }
        else{
            let delta = B*B - 4 * A * C
            if delta < 0
            {
                txttv.text = "Phuong trinh vo nghiem"
            }
            else{
                if delta == 0{
                    let x1 = -B/(2*A)
                    let y1:String = String(x1)
                    txttv.text = "Phuong trinh co nghiem kep: " + y1
                    
                }
                else{
                    let x2 = (-B - sqrtf(delta))/(2*A)
                    let x3 = (-B + sqrtf(delta))/(2*A)
                    
                    let y2:String = String(x2)
                     let y3:String = String(x3)
                    
                    txttv.text = "Phuong trinh co 2 nghiem phan biet: \n x1= " + y2 + "\n x2 = " +  y3
                    
                    
                }
            }
            
        }
        
        
        
        
    }

}

