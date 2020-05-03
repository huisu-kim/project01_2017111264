//
//  ShowViewController.swift
//  GreatSaying
//
//  Created by SWUCOMPUTER on 2020/05/02.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ShowViewController: UIViewController {

    @IBOutlet var sayingLabel: UILabel!
    @IBOutlet var originLabel: UILabel!
    var topic : Int = 0
    var from : Int = 0
    var Info : String = ""
    var userTopic : Int = 0
    
//["도전","시간","인생","관계"]
//["책 명언", "영화 명언", "인물 명언" ,"내가 만든 명언"]
    typealias Saying = (Say:String, topic:Int, from:Int , origin: String)

    let Saying01:Saying = ("때론 텅 빈 페이지가 가장 많은 가능성을 선물하죠", 0 , 1 ,"패터슨")
    let Saying02:Saying = ("인간의 죽음은 패배했을 때가 아니라 포기했을 때에 온다." , 0 , 2 ,"닉슨 (미국 37대 대통령)" )
    let Saying03:Saying = ("과거를 애절하게 들여다보지 마라. 다시 오지 않는다. 현재를 현명하게 개선하라. 너의 것이니. 어렴풋한 미래를 나아가 맞으라. 두려움 없이." , 1, 2 ,"헨리 워즈워스 롱펠로우")
    let Saying04: Saying = ("진짜 실패자란 지는게 두려워 도전조차 하지 않는 사람이란다",0 , 1 , "미스 리틀 선샤인")
    let Saying05: Saying = ("안에선 하얀 눈이 흩날리는데, 구 바깥은 온통 여름일 누군가의 시차를 상상했다." , 2 , 0 ,"바깥은 여름")
    let Saying06: Saying = ("살아 있는 모든 것이 농익은 과일이나 밤하늘에 쏘아 올린 불꽃처럼 부서져 사라지기 때문에 유달리 빛나는 순간을 한 번쯤은 갖게 되는지도 모른다." , 2 , 0, "파과")
    let Saying07: Saying = ("우리 모두의 가슴 속에는 고래가 살고 있다. 그 고래를 깨우는 것은 오직 당신의 몫이다." , 0, 0 , "청춘 챌린저")
    let Saying08 :Saying = ("우리가 출발한 곳은 선택할 수 없지만, 그곳에서 어딜 향해 갈 지는 선택할 수 있단다." , 2, 1, "월플라워")
    let Saying09 :Saying = ("역경은 누가 진정한 친구인지 가르쳐준다." , 3,2,"로이스 맥마스터 부욜")
    
    
    var markList:[String] = []
    var ShowList:[Saying] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        var SayingList:[Saying] = [Saying01,Saying02,Saying03,Saying04,Saying05,Saying06,Saying07,Saying08,Saying09]
        
     
        func correct(a: Int, b: Int) {
            var count = 0
            if topic == a && from == b {
                    for (_ , topic, from,_) in SayingList {
                        if topic == a && from == b {
                            ShowList.append(SayingList[count])
                        }
                        count += 1
                    }
                }
        }
        
       
        if Info != "" {
            SayingList.append((Say:Info, topic:0, from:3 , origin: " "))
            sayingLabel.text = Info
        } else {
            
            correct(a: topic, b: from)
            if ShowList.count == 0 {
                sayingLabel.text = "simple is the best"
            } else {
                let random : Int = Int(arc4random_uniform(UInt32(ShowList.count)))
                sayingLabel.text = ShowList[random].Say
                originLabel.text = "- " + ShowList[random].origin
                
            }
        }
        
       
        // Do any additional setup after loading the view.
    
    }
    
    @IBAction func markButton(_ sender: Any) {
        
        let random: Int = Int(arc4random_uniform(UInt32(ShowList.count)))
        
        sayingLabel.text =  ShowList[random].Say
        originLabel.text = "- " + ShowList[random].origin
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
