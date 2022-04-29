//
//  ResultViewController.swift
//  Quiz
//
//  Created by litech on 2015/02/10.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var backButton: UIButton!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var backgroundImageView: UIImageView!
    
    var quizCount: Int = 0
    var correctAnswer: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = "\(quizCount)問中\(correctAnswer)問正解!!"
        if correctAnswer == quizCount {
            backgroundImageView.image = UIImage(named: "congratulations.png")!
        }
        
        styleButtons()
    }
    
    //Style
    func styleButtons() {
        backButton.layer.cornerRadius = 6
    }
    
}
