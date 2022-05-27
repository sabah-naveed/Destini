//  SABMOOTH
//  ViewController.swift
//  Destini-iOS13

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrain.stories[0].title
        choice1Button.setTitle(storyBrain.stories[0].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[0].choice2, for: .normal)

    }

    @IBAction func choicePressed(_ sender: UIButton) {
        let storyStep = storyBrain.updateStep(sender.currentTitle!)
        
        storyLabel.text = storyBrain.stories[storyStep].title
        choice1Button.setTitle(storyBrain.stories[storyStep].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[storyStep].choice2, for: .normal)
        
    }
    
}

