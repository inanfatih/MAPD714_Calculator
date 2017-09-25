/*
 * Name: Mehmet Fatih Inan
 * Date: 2017/09/24
 * StudentID: 300966544
 * Description: Calculator
 * Version: 0.1 Built screen
 */

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen:Double = 0
    var previousNumber:Double = 0
    var calculating = false
    var operation = 0
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func numbers(_ sender: UIButton)
    {
        if calculating == true
        {
            result.text = String(sender.tag)
            numberOnScreen = Double(result.text!)!
            calculating = false
        }
        else
        {
            result.text = result.text! + String(sender.tag)
            numberOnScreen = Double(result.text!)!
        }
        
        
    }
    
    
    @IBAction func operators(_ sender: UIButton)
    {
        if result.text != "" && sender.tag != 100 && sender.tag != 99
        {
            previousNumber = Double(result.text!)!
            
            if sender.tag == 11 // add
             {
                result.text = "+"
                
             }
             else if sender.tag == 12 // subtract
             {
                result.text = "+"

             }
             else if sender.tag == 13 // multiply
             {
                result.text = "+"

             }
             else if sender.tag == 14 // divide
             {
                result.text = "+"
              }
            calculating = true
            operation = sender.tag

        }
        else if sender.tag == 100
        {
            if operation == 11
            {
                result.text = String(previousNumber + numberOnScreen)
            }
            
            if operation == 12
            {
                result.text = String(previousNumber - numberOnScreen)
            }
            if operation == 13
            {
                result.text = String(previousNumber + numberOnScreen)

            }
            if operation == 14
            {
                result.text = String(previousNumber+numberOnScreen)
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
        
    }


















