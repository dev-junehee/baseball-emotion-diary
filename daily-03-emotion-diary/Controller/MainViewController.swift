//
//  MainViewController.swift
//  daily-03-emotion-diary
//
//  Created by junehee on 5/17/24.
//

import UIKit

class MainViewController: UIViewController {

    // 메뉴 버튼
    @IBOutlet var menuButton: UIBarButtonItem!
    
    // 3 x 3
    // 감정 버튼 이미지
    @IBOutlet var emotionButton1: UIButton!
    @IBOutlet var emotionButton2: UIButton!
    @IBOutlet var emotionButton3: UIButton!
    @IBOutlet var emotionButton4: UIButton!
    @IBOutlet var emotionButton5: UIButton!
    @IBOutlet var emotionButton6: UIButton!
    @IBOutlet var emotionButton7: UIButton!
    @IBOutlet var emotionButton8: UIButton!
    @IBOutlet var emotionButton9: UIButton!
    
    // 감정 버튼 레이블
    @IBOutlet var emotionLabel1: UILabel!
    @IBOutlet var emotionLabel2: UILabel!
    @IBOutlet var emotionLabel3: UILabel!
    @IBOutlet var emotionLabel4: UILabel!
    @IBOutlet var emotionLabel5: UILabel!
    @IBOutlet var emotionLabel6: UILabel!
    @IBOutlet var emotionLabel7: UILabel!
    @IBOutlet var emotionLabel8: UILabel!
    @IBOutlet var emotionLabel9: UILabel!
    
    // 감정 카운트 레이블
    @IBOutlet var emotionCount1: UILabel!
    @IBOutlet var emotionCount2: UILabel!
    @IBOutlet var emotionCount3: UILabel!
    @IBOutlet var emotionCount4: UILabel!
    @IBOutlet var emotionCount5: UILabel!
    @IBOutlet var emotionCount6: UILabel!
    @IBOutlet var emotionCount7: UILabel!
    @IBOutlet var emotionCount8: UILabel!
    @IBOutlet var emotionCount9: UILabel!
    
    // 감정 이미지
    let emotionImages = [
        UIImage(named: "slime1"),
        UIImage(named: "slime2"),
        UIImage(named: "slime3"),
        UIImage(named: "slime4"),
        UIImage(named: "slime5"),
        UIImage(named: "slime6"),
        UIImage(named: "slime7"),
        UIImage(named: "slime8"),
        UIImage(named: "slime9"),
    ]
    
    // 감정
    let emotionTexts: [String] = [
        "이겼다!✌️", "전원출루🏃‍♀️", "홈런!!!🏟️",
        "끝내기패🤬", "실책파티☠️", "무승부😞",
        "우천취소☔️", "연패중👎", "시즌종료😭"
    ]
    
    // 감정 카운트
    var emotionCount: [Int] = [
        0, 0, 0,
        0, 0, 0,
        0, 0, 0,
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuButton.image = UIImage(systemName: "list.dash")
        menuButton.tintColor = .black
        
        // 감정 이미지 삽입
        emotionButton1.setImage(emotionImages[0], for: .normal)
        emotionButton2.setImage(emotionImages[1], for: .normal)
        emotionButton3.setImage(emotionImages[2], for: .normal)
        emotionButton4.setImage(emotionImages[3], for: .normal)
        emotionButton5.setImage(emotionImages[4], for: .normal)
        emotionButton6.setImage(emotionImages[5], for: .normal)
        emotionButton7.setImage(emotionImages[6], for: .normal)
        emotionButton8.setImage(emotionImages[7], for: .normal)
        emotionButton9.setImage(emotionImages[8], for: .normal)
        
        // 감정 이미지 백그라운드 투명 처리
        emotionButton1.backgroundColor = .clear
        emotionButton2.backgroundColor = .clear
        emotionButton3.backgroundColor = .clear
        emotionButton4.backgroundColor = .clear
        emotionButton5.backgroundColor = .clear
        emotionButton6.backgroundColor = .clear
        emotionButton7.backgroundColor = .clear
        emotionButton8.backgroundColor = .clear
        emotionButton9.backgroundColor = .clear
        
        // 감정 텍스트 삽입
        emotionLabel1.text = emotionTexts[0]
        emotionLabel1.textAlignment = .center
        emotionLabel1.font = UIFont.systemFont(ofSize: 14)
        
        emotionLabel2.text = emotionTexts[1]
        emotionLabel2.textAlignment = .center
        emotionLabel2.font = UIFont.systemFont(ofSize: 14)
        
        emotionLabel3.text = emotionTexts[2]
        emotionLabel3.textAlignment = .center
        emotionLabel3.font = UIFont.systemFont(ofSize: 14)
        
        emotionLabel4.text = emotionTexts[3]
        emotionLabel4.textAlignment = .center
        emotionLabel4.font = UIFont.systemFont(ofSize: 14)
        
        emotionLabel5.text = emotionTexts[4]
        emotionLabel5.textAlignment = .center
        emotionLabel5.font = UIFont.systemFont(ofSize: 14)
        
        emotionLabel6.text = emotionTexts[5]
        emotionLabel6.textAlignment = .center
        emotionLabel6.font = UIFont.systemFont(ofSize: 14)
        
        emotionLabel7.text = emotionTexts[6]
        emotionLabel7.textAlignment = .center
        emotionLabel7.font = UIFont.systemFont(ofSize: 14)
        
        emotionLabel8.text = emotionTexts[7]
        emotionLabel8.textAlignment = .center
        emotionLabel8.font = UIFont.systemFont(ofSize: 14)
        
        emotionLabel9.text = emotionTexts[8]
        emotionLabel9.textAlignment = .center
        emotionLabel9.font = UIFont.systemFont(ofSize: 14)
        
        // 감정 카운드 (임시)
        emotionCount1.text = String(emotionCount[0])
        emotionCount1.textAlignment = .left
        emotionCount2.text = String(emotionCount[1])
        emotionCount2.textAlignment = .left
        emotionCount3.text = String(emotionCount[2])
        emotionCount3.textAlignment = .left
        emotionCount4.text = String(emotionCount[3])
        emotionCount4.textAlignment = .left
        emotionCount5.text = String(emotionCount[4])
        emotionCount5.textAlignment = .left
        emotionCount6.text = String(emotionCount[5])
        emotionCount6.textAlignment = .left
        emotionCount7.text = String(emotionCount[6])
        emotionCount7.textAlignment = .left
        emotionCount8.text = String(emotionCount[7])
        emotionCount8.textAlignment = .left
        emotionCount9.text = String(emotionCount[8])
        emotionCount9.textAlignment = .left
    }
  
    // 1.이겼다 버튼
    @IBAction func emotionButton1Clicked(_ sender: UIButton) {
        emotionCount[0] += 1
        print("이겼다",emotionCount[0])
        emotionCount1.text = String(emotionCount[0])
    }
    
    // 2.전원출루 버튼
    @IBAction func emotionButton2Clicked(_ sender: UIButton) {
        emotionCount[1] += 1
        print("전원출루", emotionCount[1])
        emotionCount2.text = String(emotionCount[1])
    }
    
    // 3.홈런 버튼
    @IBAction func emotionButton3Clicked(_ sender: UIButton) {
        emotionCount[2] += 1
        print("홈런", emotionCount[2])
        emotionCount3.text = String(emotionCount[2])
    }
    
    // 4.끝내기패 버튼
    @IBAction func emotionButton4Clicked(_ sender: UIButton) {
        emotionCount[3] += 1
        print("홈런", emotionCount[3])
        emotionCount4.text = String(emotionCount[3])
    }
    
    // 5.실책 버튼
    @IBAction func emotionButton5Clicked(_ sender: UIButton) {
        emotionCount[4] += 1
        print("실책", emotionCount[4])
        emotionCount5.text = String(emotionCount[4])
    }
    
    // 6.무승부 버튼
    @IBAction func emotionButton6Clicked(_ sender: UIButton) {
        emotionCount[5] += 1
        print("무승부", emotionCount[5])
        emotionCount6.text = String(emotionCount[5])
    }
    
    // 7.우천취소 버튼
    @IBAction func emotionButton7Clicked(_ sender: UIButton) {
        emotionCount[6] += 1
        print("우천취소", emotionCount[6])
        emotionCount7.text = String(emotionCount[6])
    }
    
    // 8.연패 버튼
    @IBAction func emotionButton8Clicked(_ sender: UIButton) {
        emotionCount[7] += 1
        print("연패", emotionCount[7])
        emotionCount8.text = String(emotionCount[7])
    }
    
    // 9.시즌종료 버튼
    @IBAction func emotionButton9Clicked(_ sender: UIButton) {
        emotionCount[8] += 1
        print("시즌종료", emotionCount[8])
        emotionCount8.text = String(emotionCount[8])
    }
}
