//
//  ListViewController.swift
//  AlarmTable
//
//  Created by 성기훈 on 2021/08/04.
//

import UIKit

class ListViewController: UITableViewController {
    
    @IBOutlet var alarmText: UILabel!
    
    var timerParam: String?
    
    override func viewWillAppear(_ animated: Bool) {
        print("willAppear")
        print("---")
        print("timerParam: \(timerParam)")
        self.alarmText.text = timerParam
    }
    
    @IBAction func alarmAddClick(_ sender: Any) {
        
        alarmText.text = "1초 뒤 알람"
        
        Timer.scheduledTimer(timeInterval: 1.0,
                             target: self,
                             selector: #selector(alert),
                             userInfo: nil,
                             repeats: false)
    }
    
    @objc func alert() {
        let alert = UIAlertController(title: "", message: "알림!알림!알림!", preferredStyle: .alert)
        let ok = UIAlertAction(title: "확인", style: .default)
        
        alert.addAction(ok)
        
        self.present(alert, animated: false)
    }
    
    @IBAction func timerSetButton(_ sender: Any) {
        let tvc = self.storyboard!.instantiateViewController(withIdentifier: "TimerVC")
        tvc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        
        self.present(tvc, animated: true)
    }
    
    
}
