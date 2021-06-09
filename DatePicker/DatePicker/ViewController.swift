//
//  ViewController.swift
//  DatePicker
//
//  Created by Isaac Shin on 2021/06/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    //타이머 설정
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    var alarmTime: String?
    var alaertFlag = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self,
                             selector: timeSelector, userInfo: nil, repeats: true)
        
    }

    //데이터 픽커 변경 메서드
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        
        let datePickerView = sender
//        var alarmTime = lblPickerTime
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        lblPickerTime.text = "선택 시간 : " + formatter.string(from: datePickerView.date)
        
        formatter.dateFormat = "hh:mm aaa"
        alarmTime = formatter.string(from: datePickerView.date)
    }
    
    
    // 현재시간 증가.
    @objc func updateTime(){
//        lblCurrentTime.text = String(count)
//        count = count + 1
        let date = NSDate()
        
        let formatter = DateFormatter()
        
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        
        lblCurrentTime.text = "현재 시각 :" + formatter.string(from: date as Date)
        
//        현재시각과 선택 시간 비교 하기.
        formatter.dateFormat = "hh:mm aaa"
        let currentTime = formatter.string(from: date as Date)

        if(alarmTime == currentTime){
            if !alaertFlag{
                
//                view.backgroundColor = UIColor.red
                let alarmAlert = UIAlertController(title: "알람", message: "지정하신 시간입니다", preferredStyle: UIAlertController.Style.alert)
                let okAction = UIAlertAction(title: "확인", style: UIAlertAction.Style.default, handler: nil)

                alarmAlert.addAction(okAction)
                present(alarmAlert, animated: true, completion: nil)
                alaertFlag = true
                
            }
            

            
        }else{
           // view.backgroundColor = UIColor.white
            alaertFlag = false
        }
    }
    
}




