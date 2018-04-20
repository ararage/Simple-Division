//
//  ViewController.swift
//  Simple Division
//
//  Created by Ricardo Perez on 1/15/17.
//  Copyright © 2017 Ricardo Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTitleOUTLET: UILabel!
    @IBOutlet weak var lblQuestionOUTLET: UILabel!
    @IBOutlet weak var btnButton1OUTLET: UIButton!
    @IBOutlet weak var btnButton2OUTLET: UIButton!
    @IBOutlet weak var btnButton3OUTLET: UIButton!
    @IBOutlet weak var btnButton4OUTLET: UIButton!
    @IBOutlet weak var lblScoreOUTLET: UILabel!
    
    var randomNumber1 : Int?
    var randomNumber2 : Int?
    var lastRandomNumber : Int?
    var correctAnswer : Int?
    var score : Int = 0
    var questionAnswered : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        displayQuestion()
        displayChoices()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressButton1(_ sender: UIButton) {
        questionAnswered += 1
        if(btnButton1OUTLET.currentTitle == String(correctAnswer!)){
            score += 1
            lblScoreOUTLET.text = "Correct! " + String(score) + " / " + String(questionAnswered) + " questions answered correctly"
            lblScoreOUTLET.backgroundColor = UIColor.green
        }else{
            lblScoreOUTLET.text = "Incorrect! " + String(score) + " / " + String(questionAnswered) + " questions answered correctly"
            lblScoreOUTLET.backgroundColor = UIColor.red
        }
        displayQuestion()
        displayChoices()
    }
    
    @IBAction func pressButton2(_ sender: UIButton) {
        questionAnswered += 1
        if(btnButton2OUTLET.currentTitle == String(correctAnswer!)){
            score += 1
            lblScoreOUTLET.text = "Correct! " + String(score) + " / " + String(questionAnswered) + " questions answered correctly"
            lblScoreOUTLET.backgroundColor = UIColor.green
        }else{
            lblScoreOUTLET.text = "Incorrect! " + String(score) + " / " + String(questionAnswered) + " questions answered correctly"
            lblScoreOUTLET.backgroundColor = UIColor.red
        }
        displayQuestion()
        displayChoices()

    }
 
    @IBAction func pressButton3(_ sender: UIButton) {
        questionAnswered += 1
        if(btnButton3OUTLET.currentTitle == String(correctAnswer!)){
            score += 1
            lblScoreOUTLET.text = "Correct! " + String(score) + " / " + String(questionAnswered) + " questions answered correctly"
            lblScoreOUTLET.backgroundColor = UIColor.green
        }else{
            lblScoreOUTLET.text = "Incorrect! " + String(score) + " / " + String(questionAnswered) + " questions answered correctly"
            lblScoreOUTLET.backgroundColor = UIColor.red
        }
        displayQuestion()
        displayChoices()
    }
    
    @IBAction func pressButton4(_ sender: UIButton) {
        questionAnswered += 1
        if(btnButton4OUTLET.currentTitle == String(correctAnswer!)){
            score += 1
            lblScoreOUTLET.text = "Correct! " + String(score) + " / " + String(questionAnswered) + " questions answered correctly"
            lblScoreOUTLET.backgroundColor = UIColor.green
        }else{
            lblScoreOUTLET.text = "Incorrect! " + String(score) + " / " + String(questionAnswered) + " questions answered correctly"
            lblScoreOUTLET.backgroundColor = UIColor.red
        }
        displayQuestion()
        displayChoices()
    }
    
    //rn1 / rn2  = ?
    func chooseQuestionNumbers(){
        randomNumber1 = Int(arc4random_uniform(21))
        randomNumber2 = Int(arc4random_uniform(11))
        
        if(randomNumber1 == lastRandomNumber || randomNumber2 == lastRandomNumber || randomNumber2 == 0 || (randomNumber1! % randomNumber2!) != 0){
            chooseQuestionNumbers()
        }
        
        lastRandomNumber = randomNumber1
        correctAnswer = randomNumber1! / randomNumber2!
    }
    
    func displayQuestion(){
        chooseQuestionNumbers()
        lblQuestionOUTLET.text = String(describing:randomNumber1!) + " / " + String(describing:randomNumber2!) + " =  ?"
    }
    
    func setButtonTitle1(){
        btnButton1OUTLET.setTitle(String(arc4random_uniform(21)), for: UIControlState.normal)
        
        if(btnButton1OUTLET.currentTitle == btnButton2OUTLET.currentTitle || btnButton1OUTLET.currentTitle == btnButton3OUTLET.currentTitle ||
            btnButton1OUTLET.currentTitle == btnButton4OUTLET.currentTitle || btnButton1OUTLET.currentTitle == String(describing:correctAnswer)){
            setButtonTitle1()
        }
    }
    
    func setButtonTitle2(){
         btnButton2OUTLET.setTitle(String(arc4random_uniform(21)), for: UIControlState.normal)
        
        if(btnButton2OUTLET.currentTitle == btnButton1OUTLET.currentTitle || btnButton2OUTLET.currentTitle == btnButton3OUTLET.currentTitle ||
            btnButton2OUTLET.currentTitle == btnButton4OUTLET.currentTitle || btnButton2OUTLET.currentTitle == String(describing:correctAnswer)){
            setButtonTitle2()
        }
    }

    func setButtonTitle3(){
         btnButton3OUTLET.setTitle(String(arc4random_uniform(21)), for: UIControlState.normal)
        
        if(btnButton3OUTLET.currentTitle == btnButton2OUTLET.currentTitle || btnButton3OUTLET.currentTitle == btnButton1OUTLET.currentTitle ||
            btnButton3OUTLET.currentTitle == btnButton4OUTLET.currentTitle || btnButton3OUTLET.currentTitle == String(describing:correctAnswer)){
            setButtonTitle3()
        }
    }

    func setButtonTitle4(){
         btnButton4OUTLET.setTitle(String(arc4random_uniform(21)), for: UIControlState.normal)
        
        if(btnButton4OUTLET.currentTitle == btnButton2OUTLET.currentTitle || btnButton4OUTLET.currentTitle == btnButton3OUTLET.currentTitle ||
            btnButton4OUTLET.currentTitle == btnButton1OUTLET.currentTitle || btnButton4OUTLET.currentTitle == String(describing:correctAnswer)){
            setButtonTitle4()
        }
    }
    
    //Escogera que boton tendra la respuesta correcta
    func displayChoices(){
        let buttonWithCorrectAnswer : Int = Int(arc4random_uniform(4))
       
        switch buttonWithCorrectAnswer {
        case 0:
            btnButton1OUTLET.setTitle(String(describing:correctAnswer!), for: UIControlState.normal)
            setButtonTitle2()
            setButtonTitle3()
            setButtonTitle4()
        case 1:
            btnButton2OUTLET.setTitle(String(describing:correctAnswer!), for: UIControlState.normal)
            setButtonTitle1()
            setButtonTitle3()
            setButtonTitle4()
        case 2:
            btnButton3OUTLET.setTitle(String(describing:correctAnswer!), for: UIControlState.normal)
            setButtonTitle1()
            setButtonTitle2()
            setButtonTitle4()
        case 3:
            btnButton4OUTLET.setTitle(String(describing:correctAnswer!), for: UIControlState.normal)
            setButtonTitle1()
            setButtonTitle2()
            setButtonTitle3()
        default:
            break
        }
    }

}

