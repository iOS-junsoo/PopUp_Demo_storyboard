//
//  FirstViewController.swift
//  PopUp_Demo_storyboard
//
//  Created by 준수김 on 2021/10/15.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //presentPopUp() - ViewDidLoad에서 함수를 실행하면 오류가 생긴다
        // 그 이유는 ViewController가 완성되지 않았는데 새로운 modal View를 호출하려고 하기 때문 -> 수학시험 준비조차 끝내지 못한 학생에게 국어 시험을 치라고 하는 것
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
       presentPopUp()
        print("실행1")
    }
    
   
    
    
    
    func presentPopUp() {
        print("실행2")
        if let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController {
            //스토리보드가 있으면 스토리보드에 SecondVC라는 이름을 가진 ViewViewController 인스턴스를 만드는데 그거의 타입은 SecondViewController이다.
            
            vc.modalPresentationStyle = .overCurrentContext
            //modalPresentationStyle: 어떤식으로 화면을 전환하고 싶나?
            
            self.present(vc, animated: true)
            //vc라는 화면의 애니메이션을 True로 한다,.
        }

    }

}
