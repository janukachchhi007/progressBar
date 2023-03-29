//
//  ViewController.swift
//  progressBar
//
//  Created by R94 on 20/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressbar: UIProgressView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var silder: UISlider!
    @IBOutlet weak var playButton: UIButton!
    var time = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressbar.progress = 0.0

    }
    
    @IBAction func silderAction(_ sender: UISlider) {
        label1.text = String(Int(silder.value))
    }
    @IBAction func playButtonaction(_ sender: UIButton) {
        
        
            var a : Float = 0.0
            self.progressbar.progress = a
            time = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { (time) in
                a += 0.01
                self.progressbar.progress = a
                if self.progressbar.progress == 1.0
                {
           
                    self.time.invalidate()
                    self.naviget()                }
            })
    }
    func naviget()
    {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController2")as! ViewController2; navigationController?.pushViewController(navigation, animated: true)
    }
    

}

