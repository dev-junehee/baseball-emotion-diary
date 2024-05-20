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
    
    // 버튼 디자인
    func emotionButtonDesign(_ button: UIButton, buttonImg: UIImage, _ label: UILabel, labelText: String, _ count: UILabel, countInt: Int, tag: Int) {
        button.setImage(buttonImg, for: .normal)
        button.backgroundColor = .clear
        button.tag = tag
        label.text = labelText
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 14)
        count.text = String(countInt)
        count.textAlignment = .left
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuButton.image = UIImage(systemName: "list.dash")
        menuButton.tintColor = .black
        
        // 1.이겼다
        emotionButtonDesign(emotionButton1, buttonImg: emotionImages[0]!, emotionLabel1, labelText: emotionTexts[0], emotionCount1, countInt: emotionCount[0], tag: 0)
        
        // 2.전원 출루
        emotionButtonDesign(emotionButton2, buttonImg: emotionImages[1]!, emotionLabel2, labelText: emotionTexts[1], emotionCount2, countInt: emotionCount[1], tag: 1)
        
        // 3.홈런
        emotionButtonDesign(emotionButton3, buttonImg: emotionImages[2]!, emotionLabel3, labelText: emotionTexts[2], emotionCount3, countInt: emotionCount[2], tag: 2)
        
        // 4.끝내기패
        emotionButtonDesign(emotionButton4, buttonImg: emotionImages[3]!, emotionLabel4, labelText: emotionTexts[3], emotionCount4, countInt: emotionCount[3], tag: 3)
        
        // 5.실책파티
        emotionButtonDesign(emotionButton5, buttonImg: emotionImages[4]!, emotionLabel5, labelText: emotionTexts[4], emotionCount5, countInt: emotionCount[4], tag: 4)
        
        // 6.무승부
        emotionButtonDesign(emotionButton6, buttonImg: emotionImages[5]!, emotionLabel6, labelText: emotionTexts[5], emotionCount6, countInt: emotionCount[5], tag: 5)
        
        // 7.우천취소
        emotionButtonDesign(emotionButton7, buttonImg: emotionImages[6]!, emotionLabel7, labelText: emotionTexts[6], emotionCount7, countInt: emotionCount[6], tag: 6)
        
        // 8.연패중
        emotionButtonDesign(emotionButton8, buttonImg: emotionImages[7]!, emotionLabel8, labelText: emotionTexts[7], emotionCount8, countInt: emotionCount[7], tag: 7)
        
        // 9.시즌종료
        emotionButtonDesign(emotionButton9, buttonImg: emotionImages[8]!, emotionLabel9, labelText: emotionTexts[8], emotionCount9, countInt: emotionCount[8], tag: 8)
    }
    
    @IBAction func emotionButtonClicked(_ sender: UIButton) {
        let tag = sender.tag
        
        emotionCount[tag] += 1
        
        switch (tag) {
        case 0:
            emotionCount1.text = String(emotionCount[0])
            break
        case 1:
            emotionCount2.text = String(emotionCount[1])
            break
        case 2:
            emotionCount3.text = String(emotionCount[2])
            break
        case 3:
            emotionCount4.text = String(emotionCount[3])
            break
        case 4:
            emotionCount5.text = String(emotionCount[4])
            break
        case 5:
            emotionCount6.text = String(emotionCount[5])
            break
        case 6:
            emotionCount7.text = String(emotionCount[6])
            break
        case 7:
            emotionCount8.text = String(emotionCount[7])
            break
        case 8:
            emotionCount9.text = String(emotionCount[8])
            break
        default:
            print("오류발생")
        }
    }
}
