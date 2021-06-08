//
//  ViewController.swift
//  HelloWorld
//
//  Created by Isaac Shin on 2021/06/07.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var lblHello: UILabel! // 출력 레이블용 아울렛 변수
    
    @IBOutlet var txtName: UITextField! // 이름 입력용 아울렛 변수
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnSend(_ sender: UIButton) {
        // I understand the code but the ! mark at the end
        lblHello.text = "Hello, " + txtName.text!
    }
    
}

