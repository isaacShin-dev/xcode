//
//  ViewController.swift
//  PickerView
//
//  Created by Isaac Shin on 2021/06/09.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let MAX_ARRAY_NUM = 8
    let PICKER_VIEW_COLUMN = 2
    let PICKER_VIEW_HEIGHT:CGFloat = 80
    var imageArray = [UIImage?]()
    var imageFileName = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg","6.jpg", "7.jpg", "8.jpg"]
    

    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var lblImageFileName: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //for 반복문
        
        for i in 0..<MAX_ARRAY_NUM{
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        lblImageFileName.text = imageFileName[0]
        imageView.image = imageArray[0]
        
    }
    // 피커뷰에게 컴포넌트의 수를 정수 값으로 넘겨주는 델리게이트 메서드, ( 피커뷰에 표시되는 열의 개수)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
     func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return PICKER_VIEW_HEIGHT
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return imageFileName.count
    }
    
//
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return imageFileName[row]
//    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imagView = UIImageView(image: imageArray[row])
        imagView.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
        return imagView
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        lblImageFileName.text = imageFileName[row]
//        imageView.image = imageArray[row]
        
        if(component==0){
            lblImageFileName.text = imageFileName[row]
        }else{
            imageView.image = imageArray[row]
        }
    }
    


}

