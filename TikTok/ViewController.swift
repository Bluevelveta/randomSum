//
//  ViewController.swift
//  TikTok
//
//  Created by student on 30/1/2562 BE.
//  Copyright © 2562 informatics. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var paraUI1:UILabel!
    @IBOutlet weak var paraUI2:UILabel!
    @IBOutlet weak var answer:UILabel!
    @IBOutlet weak var operation:UILabel!
    
    var para1 = 0
    var para2 = 0
    var opara = 0
    var anw = 0
    var sym = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showAlert(){
        random()
    }
    
    func random() {
        para1=Int.random(in:1...99)
        para2=Int.random(in:1...99)
        opara=Int.random(in: 1...4)
        randomOperation()
        paraUI1.text = String(para1)
        paraUI2.text = String(para2)
        operation.text = String(sym)
        answer.text = String(sum(para1: para1, para2: para2, opara: opara))
    }
    func randomOperation(){
        if(opara==1){
            sym="+"
        }else if(opara==2){
            sym="-"
        }else if(opara==3){
            sym="*"
        }else if(opara==4){
            sym="/"
        }
    }
    func sum(para1:Int,para2:Int,opara:Int) -> String {
    var sum=0
        if(opara==1){
            sum = para1 + para2
        }else if (opara==2){
            sum = para1 - para2
        }else if (opara==3){
            sum = para1 * para2
        }else if (opara==4){
            return String(Double(para1) / Double(para2))
        }
        return String(sum)
    }

}

