//
//  ViewController.swift
//  TicTacToe
//
//  Created by FAN ZHOU on 10/21/19.
//  Copyright © 2019 FAN ZHOU. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    var matrix : [Int] = [0,0,0,0,0,0,0,0,0]
    var count : Int = 0
    var whofirst = 1
    
    @IBOutlet weak var toplabel: UILabel!
    
    @IBOutlet weak var secondbutton: UIButton!
    
    
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    
    func execute(x: Int){
        let b : [UIButton]  = [b1, b2, b3, b4, b5, b6, b7, b8, b9]
        if (matrix[x] == 0){
            b[x].setTitle("O", for: .normal)
            b[x].setTitleColor(UIColor.red, for: .normal)
            matrix[x] = 1
            count = count+1
            if whowin() == 1 {
                toplabel.text = "CPU Win"
            }
            else if count == 9{
                toplabel.text = "a Draw"
            }
        }
    }
    
    func humanplay(x: Int){
        if (whowin() != 0) {return}
        let b : [UIButton]  = [b1, b2, b3, b4, b5, b6, b7, b8, b9]
        if matrix[x] == 0 {
            b[x].setTitle("X", for: .normal)
            b[x].setTitleColor(UIColor.black, for: .normal)
            matrix[x] = -1
            count = count+1
            
            if whowin() == -1 {
                toplabel.text = "You Win"
            }
            else {
                if count == 9{
                    toplabel.text = "a Draw"
                }
                else {
                    machineplay()
                    
                }
            }
        }
    }
    
    func machineplay(){
        var y = Int.random(in: 0...8)
        while (matrix[y] != 0){
            y = Int.random(in: 0...8)
        }
        execute(x: y)
        
        
        
        
    }
    
    
    
    
    
    func whowin ()->Int {
        var x = 1
        if (matrix[0] == x && matrix[1] == x && matrix[2] == x ) {
            return x
        }
        if (matrix[3] == x && matrix[4] == x && matrix[5] == x ) {
            return x
        }
        if (matrix[6] == x && matrix[7] == x && matrix[8] == x ) {
            return x;
        }
        if (matrix[0] == x && matrix[4] == x && matrix[8] == x ) {
            return x
        }
        if (matrix[2] == x && matrix[4] == x && matrix[6] == x ) {
            return x
        }
        if (matrix[0] == x && matrix[3] == x && matrix[6] == x ) {
            return x
        }
        if (matrix[1] == x && matrix[4] == x && matrix[7] == x ) {
            return x
        }
        if (matrix[2] == x && matrix[5] == x && matrix[8] == x ) {
            return x;
        }
        
        x = -1
        
        if (matrix[0] == x && matrix[1] == x && matrix[2] == x ) {
            return x
        }
        if (matrix[3] == x && matrix[4] == x && matrix[5] == x ) {
            return x
        }
        if (matrix[6] == x && matrix[7] == x && matrix[8] == x ) {
            return x;
        }
        if (matrix[0] == x && matrix[4] == x && matrix[8] == x ) {
            return x
        }
        if (matrix[2] == x && matrix[4] == x && matrix[6] == x ) {
            return x
        }
        if (matrix[0] == x && matrix[3] == x && matrix[6] == x ) {
            return x
        }
        if (matrix[1] == x && matrix[4] == x && matrix[7] == x ) {
            return x
        }
        if (matrix[2] == x && matrix[5] == x && matrix[8] == x ) {
            return x;
        }
        
        
        return 0;
    }
    
    
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
        count = 0;
        matrix = [0,0,0,0,0,0,0,0,0]
        
        let b : [UIButton]  = [b1, b2, b3, b4, b5, b6, b7, b8, b9]
        for x in 0...8{
            b[x].setTitle("\(x+1)", for: .normal)
            b[x].setTitleColor(UIColor.lightGray, for: .normal)
            matrix[x] = 0
        }
        
    }
    
    
    @IBAction func tap1(_ sender: Any) {
        humanplay(x: 0)
   //     var c : UIButton! = b1
        //c.setTitleColor(UIColor.green, for: .normal)
        
    }
    
    @IBAction func tap2(_ sender: Any) {
        humanplay(x: 1)
    }
    
    @IBAction func tap3(_ sender: Any) {
        humanplay(x: 2)
    }
    
    @IBAction func tap4(_ sender: Any) {
        humanplay(x: 3)
    }
    
    @IBAction func tap5(_ sender: Any) {
        humanplay(x: 4)
    }

    @IBAction func tap6(_ sender: Any) {
        humanplay(x: 5)
    }
    @IBAction func tap7(_ sender: Any) {
        humanplay(x: 6)
    }
    @IBAction func tap8(_ sender: Any) {
        humanplay(x: 7)
    }
    @IBAction func tap9(_ sender: Any) {
        humanplay(x: 8)
    }
    
    
    
    
    @IBAction func tapsecondbutton(_ sender: Any) {
        let b : [UIButton]  = [b1, b2, b3, b4, b5, b6, b7, b8, b9]
        for x in 0...8{
            b[x].setTitle("\(x+1)", for: .normal)
            b[x].setTitleColor(UIColor.lightGray, for: .normal)
            matrix[x] = 0
        }
        toplabel.text = "Tic Tac Toe"
        count = 0
        whofirst = whofirst * (-1)
        if (whofirst == -1){
            machineplay()
        }
    }
}
