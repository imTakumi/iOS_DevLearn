//
//  ViewController.swift
//  BullsEye
//
//  Created by 吴皓翔 on 15/1/5.
//  Copyright (c) 2015年 吴皓翔. All rights reserved.
//

import UIKit
import QuartzCore
import AVFoundation

class ViewController: UIViewController {
    
    var currentValue:Int = 0
    
    var targetValue:Int = 0
    
    var score:Int = 0
    
    var round:Int = 0
    
    var audioPlayer:AVAudioPlayer!
    
    @IBOutlet weak var slider:UISlider!
    
    @IBOutlet weak var targetLable:UILabel!
    
    @IBOutlet weak var scoreLable:UILabel!
    
    @IBOutlet weak var roundLable:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        playBgMusic()
        
        startNewGame()
        
        updateLables()
        
        //滑动条美化
        let thumblmageNormal = UIImage(named: "SliderThumb-Normal")
        slider.setThumbImage(thumblmageNormal, forState: .Normal)
        
        let thumblmageHighlighted = UIImage(named: "SliderThumb-Highlighted")
        slider.setThumbImage(thumblmageHighlighted, forState: .Highlighted)
        
        let insets = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
        
        let trackLeftImage = UIImage(named: "SliderTrackLeft")
        
        let trackleftResizable = trackLeftImage?.resizableImageWithCapInsets(insets)
        
        slider.setMinimumTrackImage(trackleftResizable, forState: .Normal)
        
        let trackRightImage = UIImage(named: "SliderTrackRight")
        
        let trackRightResizable = trackRightImage?.resizableImageWithCapInsets(insets)
        
        slider.setMaximumTrackImage(trackRightResizable, forState: .Normal)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be
    }
    
    @IBAction func showalert(){
        
        let difference = abs(currentValue - targetValue)
        
        let Point = 100 - difference
        
        var title:String
        
        score += Point
        
        if(difference == 0){
            title = "太完美了，奖励100分"
            score += 100
        }else if(difference > 0 && difference < 10){
            title = "不错不错，接近完美，奖励50分"
            score += 50
        }else if(difference > 10 && difference < 40){
            title = "再接再厉啊！"
        }else{
            title = "别玩了... ..."
        }
        
        let message = "您的得分是：\(Point)" + "\n\(title)"
        
        let alert = UIAlertController(title: "Socer", message: message, preferredStyle: .Alert)
        
        let action = UIAlertAction(title: "OK", style: .Default, handler: {action in self.startNewRound()
            self.updateLables()})
        
        alert.addAction(action)
        
        presentViewController(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func sliderMoved(slider:UISlider){
        //滑动条方法
        //println("滑动条当前的数值是:\(slider.value)")
        
        currentValue = lroundf(slider.value)
        
    }
    
    @IBAction func startOver(){
        
        startNewGame()
        updateLables()
        
        //动画
        let transition = CATransition()
        transition.type = kCATransitionFade
        transition.duration = 1
        transition.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseOut); view.layer.addAnimation(transition, forKey: nil)
    }
    
    func startNewRound(){
        
        round += 1
        
        targetValue = 1 + Int(arc4random_uniform(100))
        
        currentValue = 50
        
        slider.value = Float(currentValue)
    }
    
    func updateLables(){
        
        targetLable.text = String(targetValue)
        
        scoreLable.text = String(score)
        
        roundLable.text = String(round)
    }
    
    func startNewGame(){
        
        score = 0
        
        round = 0
        
        startNewRound()
    }
 
    func playBgMusic(){
        
        let musicPath = NSBundle.mainBundle().pathForResource("bgmusic", ofType: "mp3")
        let url = NSURL(fileURLWithPath: musicPath!)
        audioPlayer = AVAudioPlayer(contentsOfURL: url, error: nil)
        audioPlayer.numberOfLoops = -1
        audioPlayer.prepareToPlay()
        audioPlayer.play()
    }

}


