//
//  QuoteViewController.swift
//  ToDoList
//
//  Created by Apple on 8/14/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class QuoteViewController: UIViewController {
 
    @IBOutlet weak var sadQuoteLabel: UILabel!
    
    @IBOutlet weak var somewhatSadQuoteLabel: UILabel!
    
    @IBOutlet weak var mehQuoteLabel: UILabel!
        
    @IBOutlet weak var happyQuoteLabel: UILabel!

    @IBOutlet weak var extremelyHappyQuoteLabel: UILabel!
        
        override func viewDidLoad() {
            super.viewDidLoad()

            // Do any additional setup after loading the view.
            sadQuoteLabel.isHidden = true
            somewhatSadQuoteLabel.isHidden = true
            mehQuoteLabel.isHidden = true
            happyQuoteLabel.isHidden = true
            extremelyHappyQuoteLabel.isHidden = true
            
        }
        

      @IBAction func cryEmojiButton(_ sender: UIButton) {
        sadQuoteLabel.isHidden = false
        somewhatSadQuoteLabel.isHidden = true
        mehQuoteLabel.isHidden = true
        happyQuoteLabel.isHidden = true
        extremelyHappyQuoteLabel.isHidden = true
        let sadQuotesArray = ["Sadness flies away on the wings of time. –Jean de La Fontaine", "There are moments when I wish I could roll back the clock and take all the sadness away, but I have the feeling that if I did, the joy would be gone as well. –Nicholas Sparks", "Experiencing sadness and anger can make you feel more creative, and by being creative you can get beyond your pain or negativity. –Yoko Ono", "Some days are just bad days, that’s all. You have to experience sadness to know happiness, and I remind myself that not every day is going to be a good day, that’s just the way it is! –Dita Von Teese", "The word ‘happy’ would lose its meaning if it were not balanced by sadness. –Carl Jung", "What brings us to tears, will lead us to grace. Our pain is never wasted. -Bob Goff", "Ninety-nine percent of your problems are created by you because you take life seriously. -Osho", "Perhaps I know best why it is man alone who laughs; he alone suffers so deeply that he had to invent laughter. -Friedrich Nietzsche", "Never be afraid of tears. Tear-filled eyes are capable of seeing truth. Tear-filled eyes are capable of seeing the beauty of life. -Osho"
        ]
        
        sadQuoteLabel.text = sadQuotesArray.randomElement()
     }

        @IBAction func somewhatSadEmojiButton(_ sender: UIButton) {
            sadQuoteLabel.isHidden = true
            somewhatSadQuoteLabel.isHidden = false
            mehQuoteLabel.isHidden = true
            happyQuoteLabel.isHidden = true
            extremelyHappyQuoteLabel.isHidden = true
            let somewhatSadArray = ["Sometimes it takes sadness to know happiness, noise to appreciate silence and absence to value presence. -Unknown","When you’re happy you enjoy the music, but when you’re sad you understand the lyrics. -Frank Ocean", "I learned how to be happy because I know what unhappiness felt like. -Lilly Singh", "The good life is not one immune to sadness but one in which suffering contributes to our development. Alain de Botton", "Your sadness is a gift. Don’t reject it. Don’t rush it. Live it fully and use it as fuel to change and grow. -Maxime Lagacé", "There are two medicines for all ills: time and silence. -Alexander Dumas", "Chasing happiness is guaranteed to make to you unhappy. -Ed Latimore", "Even a happy life cannot be without a measure of darkness, and the word happy would lose its meaning if it were not balanced by sadness. It is far better to take things as they come along with patience and equanimity. –Carl Jung"]
            
            somewhatSadQuoteLabel.text = somewhatSadArray.randomElement()
        }
        
        @IBAction func mehEmojiButton(_ sender: UIButton) {
            sadQuoteLabel.isHidden = true
            somewhatSadQuoteLabel.isHidden = true
            mehQuoteLabel.isHidden = false
            happyQuoteLabel.isHidden = true
            extremelyHappyQuoteLabel.isHidden = true
            let mehArray = ["The secret of getting ahead is getting started. –Mark Twain", "I’ve missed more than 9,000 shots in my career. I’ve lost almost 300 games. 26 times I’ve been trusted to take the game winning shot and missed. I’ve failed over and over and over again in my life and that is why I succeed. –Michael Jordan", "It’s hard to beat a person who never gives up. – Babe Ruth", "Write it. Shoot it. Publish it. Crochet it, sauté it, whatever. MAKE. – Joss Whedon", "We need to accept that we won’t always make the right decisions, that we’ll screw up royally sometimes – understanding that failure is not the opposite of success, it’s part of success. –Arianna Huffington", "It’s no use going back to yesterday, because I was a different person then. ―Lewis Carroll", "Don’t be afraid to give up the good to go for the great. –John D. Rockefeller", "Learn to value yourself, which means: fight for your happiness. –Ayn Rand"]
            
            mehQuoteLabel.text = mehArray.randomElement()
        }
        
        @IBAction func happyEmojiButton(_ sender: UIButton) {
            sadQuoteLabel.isHidden = true
            somewhatSadQuoteLabel.isHidden = true
            mehQuoteLabel.isHidden = true
            happyQuoteLabel.isHidden = false
            extremelyHappyQuoteLabel.isHidden = true
            let happyArray = ["“Happy people can look back and say they chose their life, not settled for it. ―Shannon L. Alder" , "You can’t afford to limit your joy. It has been proven several times that angry people are never happy people. ―Israelmore Ayivor", "Happy people is a great hope to all the unhappy people because a path of success can always be used by the people who couldn’t find such a path yet! ―Mehmet Murat ildan", "The true secret of happiness lies in the taking a genuine interest in all the details of daily life. –William Morris", "Happiness consists more in conveniences of pleasure that occur everyday than in great pieces of good fortune that happen but seldom. –Benjamin Franklin", "The only way to find true happiness is to risk being completely cut open. –Chuck Palahniuk"]
            
            happyQuoteLabel.text = happyArray.randomElement()
        }
        
        @IBAction func extremelyHappyEmojiButton(_ sender: UIButton) {
            sadQuoteLabel.isHidden = true
            somewhatSadQuoteLabel.isHidden = true
            mehQuoteLabel.isHidden = true
            happyQuoteLabel.isHidden = true
            extremelyHappyQuoteLabel.isHidden = false
            let extremelyHappyArray = [ "In my later years, I have looked in the mirror each day and found a happy person staring back. Occasionally I wonder why I can be so happy. The answer is that every day of my life I've worked only for myself and for the joy that comes from writing and creating. The image in my mirror is not optimistic, but the result of optimal behavior. -Ray Bradbury", "“If you want happiness for an hour — take a nap.", "If you want happiness for a day — go fishing. If you want happiness for a year — inherit a fortune. If you want happiness for a lifetime — help someone else. -Chinese Proverb", "Perhaps they are not stars, but rather openings in heaven where the love of our lost ones pours through and shines down upon us to let us know they are happy. -Eskimo Proverb", "Happy people plan actions, they don’t plan results. -Dennis Waitley", "Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful. -Herman Cain"]
            
            extremelyHappyQuoteLabel.text = extremelyHappyArray.randomElement()
            
        }
        
        
    /*
     Quotes:
     
     “Sadness flies away on the wings of time.”
     – Jean de La Fontaine
     
         “There are moments when I wish I could roll back the clock and take all the sadness away, but I have the feeling that if I did, the joy would be gone as well.”
         – Nicholas Sparks
         
         “Experiencing sadness and anger can make you feel more creative, and by being creative you can get beyond your pain or negativity.”
         – Yoko Ono
         
         “Some days are just bad days, that’s all. You have to experience sadness to know happiness, and I remind myself that not every day is going to be a good day, that’s just the way it is!.”
         – Dita Von Teese
         
         “The word ‘happy’ would lose its meaning if it were not balanced by sadness.”
         – Carl Jung
         
     */
        
        /*
        // MARK: - Navigation

        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
        */

    }
