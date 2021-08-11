//
//  TimerViewController.swift
//  AlarmTable
//
//  Created by 성기훈 on 2021/08/09.
//

import UIKit

class TimerViewController: UIViewController {
    
    @IBOutlet var timer: UIDatePicker!
    
    @IBAction func ok(_ sender: Any) {
        let time = timer.countDownDuration
        
        NSLog("time: \(time)")
        print("time after")
        let preVC = self.presentingViewController
        
        print("preVC: \(preVC)")
        guard let vc = preVC as? ListViewController else {
            print("ListView 못받아옴")
            return
        }
        print("param before")
        vc.timerParam = "\(time)"
        print("ok ----")
        self.presentingViewController?.dismiss(animated: true)
//                                               , completion: {
//            let preVC = self.presentingViewController
//            guard let vc = preVC as? ListViewController else {
//                return
//            }
//
//            vc.timerParam = "\(time)"
//        })
    }
    
}
