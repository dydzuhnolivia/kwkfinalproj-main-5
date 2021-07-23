//
//  ViewController.swift
//  8alance Project
//
//  Created by  Scholar on 7/21/21.
//
import UIKit

class secondViewController: UIViewController {
    var pick = 1

    @IBOutlet weak var blankLabel: UILabel!
    @IBAction func homeOneViewButtonPressed(_ sender: AnyObject) {
        print("home button pressed :)")
        self.performSegue(withIdentifier: "HomeOneViewSegue", sender: self)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func becomeFirstResponder() -> Bool {
        return true
        
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake
        {
            if pick == 1
        {
                blankLabel.text = "Meditate"
            }
        else
            if pick == 2
        {
                blankLabel.text = "Read a book"
            }
        else
            if pick == 3
    {
        blankLabel.text = "Write in a journal"
        }
        else
            if pick == 4
    {
            blankLabel.text = "Face Mask"
        }
           else
            if pick == 5
    {
                blankLabel.text = "Paint your nails"
        }
            else
            if pick == 6
    {
                blankLabel.text = "Light a candle"
        }
            else
            if pick == 7
    {
                blankLabel.text = "Exersize"
        }
            else
            if pick == 8
    {
                blankLabel.text = "Listen to music"
        }
            else
            if pick == 9
    {
                blankLabel.text = "Cook a meal"
        }
            else
            if pick == 10
    {
                blankLabel.text = "Take a bath"
        }
            pick = pick + 1
        }
    }
    func myRand(a: Int, b: Int) -> Int{
        let range = b-a
        let rand = Int(arc4random_uniform(UInt32(range)))+a
        return rand
    }
}
