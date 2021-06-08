//
//  ViewController.swift
//  ImageView
//
//  Created by Isaac Shin on 2021/06/07.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var btnResize: UIButton!
    
    //버튼 제어에 필요한 변수 선언.
    var isZoom = false
    var imgOn : UIImage?
    var imgOff : UIImage?
    //? 는 스위프트에만 존재하는 옵셔널이라는 개념, 값의 존재 여부를 알 수 있다.
    //스위프트에선 nil(=null)이 아닌 반드시 값을 설정해주어야 하지만, 옵셔널 타입을 사용해 '값이 없을 수 있다'라는 의미를 부여할 수 있다.
    // 옵셔널 선언 -> 옵셔널로 랩핑 되었다 라고 말하며 '!'로 언랩핑 하여 값에 접근할 수 있다.
    
    override func viewDidLoad() {
        super.viewDidLoad()
//         Do any additional setup after loading the view.
        imgOn = UIImage(named: "lightOn.jpg")
        imgOff = UIImage(named: "lightOff.jpeg")
        
        imgView.image = imgOn
        
    }
    //사진 크기 조절 버튼 액션 함수
    @IBAction func btnResizeImage(_ sender: Any) {
//        확대 버튼을 클릭할 경우 이미지를 두배로 확대 할 것을 실수 형 cgFloat 타입 선언 하고 값을 설정함.
        let scale:CGFloat = 1.2
//        확대할 크기를 계산해서 보관할 변수 또한 실수형으로 선언만 해둠.
        var newWidth: CGFloat, newHeight: CGFloat
        
        if(isZoom){  //true
            newWidth = imgView.frame.width / scale
            newHeight = imgView.frame.height / scale
            
            btnResize.setTitle("확대", for: .normal)
        }else{ //false
            newHeight = imgView.frame.height * scale
            newWidth = imgView.frame.width * scale
            
            btnResize.setTitle("축소", for: .normal)
        }
        imgView.frame.size = CGSize(width:newWidth, height: newHeight)
        
        isZoom = !isZoom
    }
    // 사진 변경 (전구 켜고 끄기) 변경 스위치 액션 함수
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn {
            imgView.image = imgOn
        }else{
            imgView.image = imgOff
        }
        
    }
    
}

