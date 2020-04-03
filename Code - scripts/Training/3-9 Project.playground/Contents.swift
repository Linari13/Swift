import Foundation

/* Make a function that takes in any text and counts how many words there are total AND list the words from most used to least. Be sure to lowercase everything in the string.
 
 EXAMPLE
 
 241 Words
 1. a - 34
 2. the - 27
 3. apple - 15
 
 // Lowercase all words
 // Turn the String into an array of strings
 // Turn that array into a dictionary with the words as keys and count as value
 // Sort that dictionary into an arry
 
 */

func countWords(words: String) {
    var text = words.lowercased()
    text = text.replacingOccurrences(of: "\n", with: " ")
    text = text.replacingOccurrences(of: ",", with: "")
    text = text.replacingOccurrences(of: "?", with: "")
    text = text.replacingOccurrences(of: ".", with: "")
    
    let words = text.components(separatedBy: " ")
    
    var wordDictionary : [String:Int] = [:]
    
    for word in words {
        if wordDictionary[word] == nil {
            wordDictionary[word] = 1
        } else {
           wordDictionary[word] = wordDictionary[word]! + 1
        }
    }
    
    print("\(wordDictionary.count) Words")
    
    let sortedWords = wordDictionary.sorted { (word1, word2) -> Bool in
        return word1.value > word2.value
    }
    
    var rank = 1
    for word in sortedWords {
        print("\(rank). \(word.key) - \(word.value)")
        rank += 1
    }
    
}

var text = """
Can't stop, addicted to the shindig
Chop Top, he says I'm gonna win big
Choose not a life of imitation
Distant cousin to the reservation
Defunct the pistol that you pay for
This punk, the feeling that you stay for
In time I want to be your best friend
East side lovers living on the west end
Knocked out but boy you better come to
Don't die, you know the truth as some do
Go write your message on the pavement
Burn so bright I wonder what the wave meant
White heat is screaming in the jungle
Complete the motion if you stumble
Go ask the dust for any answers
Come back strong with fifty belly dancers
The world I love
The tears I drop
To be part of
The wave, can't stop
Ever wonder if it's all for you?
The world I love
The trains I hop
To be part of
The wave, can't stop
Come and tell me when it's time to
Sweetheart is bleeding in the snow cone
So smart, she's leading me to ozone
Music the great communicator
Use two sticks to make it in the nature
I'll get you into penetration
The gender of a generation
The birth of every other nation
Worth your weight, the gold of meditation
This chapter's going to be a close one
Smoke rings, I know your going to blow one
All on a spaceship persevering
Use my hands for everything but steering
Can't stop the spirits when they need you
Mop tops are happy when they feed you
J. Butterfly is in the treetop
Birds that blow the meaning into bebop
The world I love
The tears I drop
To be part of
The wave, can't stop
Ever wonder if it's all for you?
The world I love
The trains I hop
To be part of
The wave, can't stop
Come and tell me when it's time to
Wait a minute I'm passing out
Win or lose, just like you
Far more shocking
Than anything I ever knew
How about you?
Ten more reasons
Why I need somebody new just like you
Far more shocking than anything I ever knew
Right on cue
Can't stop, addicted to the shindig
Chop Top, he says I'm gonna win big
Choose not a life of imitation
Distant cousin to the reservation
Defunct the pistol that you pay for
This punk, the feeling that you stay for
In time I want to be your best friend
East side lovers living on the west end
Knocked out but boy, you better come to
Don't die you know the truth as some do
Go write your message on the pavement
Burn so bright I wonder what the wave meant
Kick start the golden generator
Sweet talk but don't intimidate her
Can't stop the gods from engineering
Feel no need for any interfering
Your image in the dictionary
This life is more than ordinary
Can I get two, maybe even three of these?
Coming from space
To teach you of the Pleiades
Can't stop the spirits when they need you
This life is more than just a read through
"""

countWords(words: text)

