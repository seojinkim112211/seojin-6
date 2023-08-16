//
//  ProfileViewController.swift
//  NBCamp
//
//  Created by Yujin Kim on 2023-08-14.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setTitle()
    }
	
	private func setTitle() {
		title = "내 정보"
	}
    
    class ViewController: UIViewController{
        let timerSelector:Selector = #selector(ViewController.updateTime)
        let interval = 1.0
        var count = 0
        @IBOutlet weak var IblTimer: UILabel!
        
        override func viewDidLoad(){
            super.viewDidLoad()
            
            Timer.scheduledTimer(timeInterval: interval, target: self, selector: timerSelector, userInfo: nil, repeats: true)
        }
        
        @objc func updateTime(){
            IblTimer.text = String(count)
            count = count + 1 
        }
        
    }
    

}
