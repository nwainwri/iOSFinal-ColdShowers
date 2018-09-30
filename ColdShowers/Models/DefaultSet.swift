//
//  defaultActivities.swift
//  ColdShowers
//
//  Created by Nathan Wainwright on 2018-09-21.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

import UIKit
import CoreData


// strengthOne, strengthTwo, strengthThree, strengthFour, strengthFive, strengthSix, strengthSeven, strengthEight, strengthNine,
let strengthZero = Activity(name: "Pushups", areaOfBody: ["chest", "arms"], instructions: "pushups", category: .strength, photo: "pushups")
let strengthOne = Activity(name: "Sit Ups", areaOfBody: ["stomach", "legs"], instructions: "", category: .strength, photo: "situps")
let strengthTwo = Activity(name: "Crunches", areaOfBody: ["stomach"], instructions: "", category: .strength, photo: "crunches")
let strengthThree = Activity(name: "Leg Lifts ", areaOfBody: ["legs"], instructions: "", category: .strength, photo: "leglifts")
let strengthFour = Activity(name: "Squats", areaOfBody: ["legs","back"], instructions: "", category: .strength, photo: "squats")
let strengthFive = Activity(name: "Plank", areaOfBody: ["back","stomach", "arms"], instructions: "", category: .strength, photo: "plank")
let strengthSix = Activity(name: "Lunges", areaOfBody: ["legs"], instructions: "", category: .strength, photo: "lunges")
let strengthSeven = Activity(name: "Pike Pushup", areaOfBody: ["back","legs", "arms"], instructions: "", category: .strength, photo: "pikePushUp")
let strengthEight = Activity(name: "Bear Crawl", areaOfBody: ["back","arms"], instructions: "", category: .strength, photo: "bearcrawl")
let strengthNine = Activity(name: "Hip/Thigh Extension", areaOfBody: ["legs","stomach"], instructions: "", category: .strength, photo:"hipthigh")

// mindZero, mindTwo, mindThree, mindFour, mindFive, mindSix, mindSeven, mindEight, mindNine,
let mindZero = Activity(name: "Focus on a Single Minute", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:"mindful")
let mindOne = Activity(name: "Focus on a Single Object", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:"mindful")
let mindTwo = Activity(name: "Band of Light", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:"mindful")
let mindThree = Activity(name: "Inner-Outer Experience", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:"mindful")
let mindFour = Activity(name: "Record Three Minutes of Thoughts", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:"mindful")
let mindFive = Activity(name: "Thought Defusion", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:"mindful")
let mindSix = Activity(name: "Describe Your Emotion", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:"mindful")
let mindSeven = Activity(name: "Focus Shifting", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:"mindful")
let mindEight = Activity(name: "Mindful Breathing", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:"mindful")
let mindNine = Activity(name: "Mindful Seeing", areaOfBody: ["mind","soul"], instructions: "", category: .mindfull, photo:"mindful")

// yogaZero, yogaTwo, yogaThree, yogaFour, yogaFive, yogaSix, yogaSeven, yogaEight, yogaNine,
let yogaZero = Activity(name: "Mountain Pose", areaOfBody: ["legs", "arms"], instructions: "", category: .yoga , photo:"mountain")
let yogaOne = Activity(name: "Tree Pose", areaOfBody: ["legs"], instructions: "", category: .yoga, photo:"tree")
let yogaTwo = Activity(name: "Child's Pose", areaOfBody: ["legs","arms"], instructions: "", category: .yoga, photo:"child")
let yogaThree = Activity(name: "Downward Facing Dog", areaOfBody: ["legs","back", "arms"], instructions: "", category: .yoga, photo:"downwarddog")
let yogaFour = Activity(name: "Warrior I", areaOfBody: ["legs","arms"], instructions: "", category: .yoga, photo:"warriorOne")
let yogaFive = Activity(name: "Triangle Pose", areaOfBody: ["legs","back"], instructions: "", category: .yoga, photo:"triangle")
let yogaSix = Activity(name: "Chair Pose", areaOfBody: ["legs","back", "arms"], instructions: "", category: .yoga, photo:"chair")
let yogaSeven = Activity(name: "Cobra Pose", areaOfBody: ["back","arms"], instructions: "", category: .yoga, photo:"cobra")
let yogaEight = Activity(name: "Cobbler’s Pose", areaOfBody: ["legs"], instructions: "", category: .yoga, photo:"cobbler")
let yogaNine = Activity(name: "Corpose Pose", areaOfBody: ["body","mind"], instructions: "", category: .yoga, photo:"corpse")

class DefaultSet {
//  let activities: [Activity]
//  let categories: [category]
//  enum category:String {
//    case strength = "Strength"
//    case mindfull = "Mindful"
//    case yoga = "Yoga"
////    case noOption = "No Option"
////    func getTitle() -> String {
////      switch self {
////      case .strength:
////        return "Strength"
////      case .mindfull:
////        return "Mindful"
////      case .yoga:
////        return "Yoga"
////      case .noOption:
////        return "NO TITLE"
////      }
////    }
//  }
  init() {
    
    guard let appDelegate =
      UIApplication.shared.delegate as? AppDelegate else {
        return
    }
    
    let context = appDelegate.persistentContainer.viewContext

    // strength category is Int == 0
    _ = CoreActivity(context:context, name: "Pushups", areaOfBody: ["chest", "arms"], instructions: "", category: 0, photo: "pushups")
    _ = CoreActivity(context: context, name: "Sit Ups", areaOfBody: ["stomach", "legs"], instructions: "", category: 0, photo: "situps")
    _ = CoreActivity(context: context, name: "Crunches", areaOfBody: ["stomach"], instructions: "", category: 0, photo: "crunches")
    _ = CoreActivity(context: context, name: "Leg Lifts ", areaOfBody: ["legs"], instructions: "", category: 0, photo: "leglifts")
    _ = CoreActivity(context: context, name: "Squats", areaOfBody: ["legs","back"], instructions: "", category: 0, photo: "squats")
    _ = CoreActivity(context: context, name: "Plank", areaOfBody: ["back","stomach", "arms"], instructions: "", category: 0, photo: "plank")
    _ = CoreActivity(context: context, name: "Lunges", areaOfBody: ["legs"], instructions: "", category: 0, photo: "lunges")
    _ = CoreActivity(context: context, name: "Pike Pushup", areaOfBody: ["back","legs", "arms"], instructions: "", category: 0, photo: "pikePushUp")
    _ = CoreActivity(context: context, name: "Bear Crawl", areaOfBody: ["back","arms"], instructions: "", category: 0, photo: "bearcrawl")
    _ = CoreActivity(context: context, name: "Hip/Thigh Extension", areaOfBody: ["legs","stomach"], instructions: "", category: 0, photo:"hipthigh")
    
    // mindful category is Int == 1
    
    _ = CoreActivity(context: context,
                     name: "Focus on a Single Minute",
                     areaOfBody: ["mind","soul"],
                     instructions: "Find a comfortable place to sit where you will be undisturbed. Now, without looking at the timer, simply sit.  When you believe one minute has passed, stop the timer. Notice how much time has actually passed. What insight did you gain from this simple exercise?",
                     category: 1,
                     photo:"mindful")
    
    _ = CoreActivity(context: context,
                     name: "Focus on a Single Object",
                     areaOfBody: ["mind","soul"],
                     instructions: "Choose an object to focus on and, without touching it, begin looking at the object with mindful awareness.  Take your time to notice all aspects of this object: shape, texture, color, etc.  Now, hold it in your hand and notice the different ways that it feels.  If your attention wanders during this exercise, gently bring your focus back to the object.",
                     category: 1,
                     photo:"mindful")
    
    _ = CoreActivity(context: context,
                     name: "Band of Light",
                     areaOfBody: ["mind","soul"],
                     instructions: "Find a comfortable place to sit where you won’t be distracted.  Use your imagination to envision a narrow band of white light encircling the top of your head like a halo.  Now imagine this band of light slowly moving down your body, becoming mindfully aware of the physical sensations of each part of your body as the band of light progresses down.  If your attention wanders, just gently direct it back to the physical sensations you experience as the light moves from the top of your head all the way down to your toes.",
                     category: 1,
                     photo:"mindful")
    
    _ = CoreActivity(context: context,
                     name: "Inner-Outer Experience",
                     areaOfBody: ["mind","soul"],
                     instructions: "Try shifting your attention back and forth between your internal experience (i.e., bodily sensations, thoughts, and feelings) and your external experience (i.e., what you notice with your eyes, ears, nose, and sense of touch).",
                     category: 1,
                     photo:"mindful")
    
    _ = CoreActivity(context: context,
                     name: "Record Three Minutes of Thoughts",
                     areaOfBody: ["mind","soul"],
                     instructions: "Try setting a timer for three minutes and simply begin to write down every thought that goes through your mind on a piece of paper.  Don’t try to edit your thoughts or write them out word for word, just record each idea or concept that occurs to you.  An example of a thought might be about an important upcoming presentation. Rather than writing out specific details about the presentation, simply write “presentation.”  See how many thoughts you can record in three minutes, no matter how small or seemingly unimportant.  When you are finished, count the number of thoughts that you had in those three minutes and multiply that number by twenty to get a sense of how many thoughts you tend to have in a whole hour.",
                     category: 1,
                     photo:"mindful")
    
    _ = CoreActivity(context: context,
                     name: "Thought Defusion",
                     areaOfBody: ["mind","soul"],
                     instructions: "Thought defusion can help you mindfully observe these distressing thoughts without getting bogged down by them.  Ultimately, it can allow you the freedom to consciously select which thoughts you wish to focus on and which thoughts you would like to let go. The idea of this exercise is to visualize your thoughts (e.g., as pictures, words, or symbols) harmlessly floating away from you.  Try imagining your thoughts as leaves floating past you on a slowly moving river.  If any particular thoughts keep coming up, just allow them to pass by again – notice them, observe them, and let them go.",
                     category: 1,
                     photo:"mindful")
    
    _ = CoreActivity(context: context,
                     name: "Describe Your Emotion",
                     areaOfBody: ["mind","soul"],
                     instructions: "Try picking an emotion – it can be pleasant or unpleasant, but not so overwhelming that you worry about feeling out of control.  Ideally, choose an emotion that you are experiencing right now.  Once you have an emotion in mind, write it down on a piece of paper.  Begin by naming the emotion and then continue with the exercise by drawing a picture that you believe represents this emotion for you. Next, try writing down a related action and sound for the emotion.  Notice what you are experiencing throughout the exercise.  If you feel overwhelmed at any point, pause momentarily and bring your focus gently back to the exercise.",
                     category: 1,
                     photo:"mindful")
    
    _ = CoreActivity(context: context,
                     name: "Focus Shifting",
                     areaOfBody: ["mind","soul"],
                     instructions: "Begin by checking in with yourself to identify how you are feeling. If you think you’re feeling “nothing,” try giving that emotional experience a label … it could even be “bored” or “content.”  Close your eyes and bring your attention towards your current emotional experience – what would this emotion look like if it was an object?  Imagine this object.  Now, open your eyes and redirect your focus towards a physical object in the room.  Mindfully observe this object.  If your attention begins to wander, just gently bring it back to the exercise. Return your focus towards your internal emotional experience.  Next, shift your mindful awareness towards another sensory experience in the room – perhaps noticing a particular sound or smell. ",
                     category: 1,
                     photo:"mindful")
    
    _ = CoreActivity(context: context,
                     name: "Mindful Breathing",
                     areaOfBody: ["mind","soul"],
                     instructions: "To breathe mindfully, focus on three parts of the experience: count your breaths, focus on the physical act of breathing, and be aware of any thoughts that arise while breathing.  Remember what you learned in the thought defusion exercise to let go of distracting thoughts without getting “stuck” on them.",
                     category: 1,
                     photo:"mindful")
    
    _ = CoreActivity(context: context,
                     name: "Mindful Seeing",
                     areaOfBody: ["mind","soul"],
                     instructions: "Find a space at a window where there are sights to be seen outside. Look at everything there is to see.  Avoid labeling and categorizing what you see outside the window; instead of thinking “bird” or “stop sign”, try to notice the colors, the patterns, or the textures. Pay attention to the movement of the grass or leaves in the breeze, notice the many different shapes present in this small segment of the world you can see.  Try to see the world outside the window from the perspective of someone unfamiliar with these sights. Be observant, but not critical.  Be aware, but not fixated. If you become distracted, gently pull your mind away from those thoughts and notice a color or shape again to put you back in the right frame of mind.",
                     category: 1,
                     photo:"mindful")
    
    
    // yoga category is Int == 2
    _ = CoreActivity(context: context, name: "Mountain Pose", areaOfBody: ["legs", "arms"], instructions: "", category: 2, photo:"mountain")
    _ = CoreActivity(context: context, name: "Tree Pose", areaOfBody: ["legs"], instructions: "", category: 2, photo:"tree")
    _ = CoreActivity(context: context, name: "Child's Pose", areaOfBody: ["legs","arms"], instructions: "", category: 2, photo:"child")
    _ = CoreActivity(context: context, name: "Downward Facing Dog", areaOfBody: ["legs","back", "arms"], instructions: "", category: 2, photo:"downwarddog")
    _ = CoreActivity(context: context, name: "Warrior I", areaOfBody: ["legs","arms"], instructions: "", category: 2, photo:"warriorOne")
    _ = CoreActivity(context: context, name: "Triangle Pose", areaOfBody: ["legs","back"], instructions: "", category: 2, photo:"triangle")
    _ = CoreActivity(context: context, name: "Chair Pose", areaOfBody: ["legs","back", "arms"], instructions: "", category: 2, photo:"chair")
    _ = CoreActivity(context: context, name: "Cobra Pose", areaOfBody: ["back","arms"], instructions: "", category: 2, photo:"cobra")
    _ = CoreActivity(context: context, name: "Cobbler’s Pose", areaOfBody: ["legs"], instructions: "", category: 2, photo:"cobbler")
    _ = CoreActivity(context: context, name: "Corpose Pose", areaOfBody: ["body","mind"], instructions: "", category: 2, photo:"corpse")

    appDelegate.saveContext()
  }
  
//  override init() {
//    self.activities = [strengthZero, strengthOne, strengthTwo, strengthThree, strengthFour, strengthFive, strengthSix, strengthSeven, strengthEight, strengthNine, mindZero, mindOne, mindTwo, mindThree, mindFour, mindFive, mindSix, mindSeven, mindEight, mindNine, yogaZero, yogaOne, yogaTwo, yogaThree, yogaFour, yogaFive, yogaSix, yogaSeven, yogaEight, yogaNine]
//    for item in self.activities {
//      var counter = 0
//      item.originalIndex = self.activities.index(of: item)!
//      counter += 1
//    }
//    self.categories = [.strength, .mindfull, .yoga]
//  }
}

//extension DefaultSet {
//  func retAmounts(category: category) -> Int {
//    var innerCount = 1
//    for item in self.activities {
//      if item.category.rawValue == category.hashValue {
//        innerCount += 1
//      }
//    }
//    return innerCount
//  }
//
//  func retAmountsInt(category: Int) -> Int {
//    var innerCount = 1
//    for item in self.activities {
//      if item.category.rawValue == category {
//        innerCount += 1
//      }
//    }
//    return innerCount
//  }
//
//
//
//}

extension CoreActivity {
  convenience init(context: NSManagedObjectContext, name: String, areaOfBody: [String], instructions: String, category: Int, photo: String) {
    
    //(name: "Pushups", areaOfBody: ["chest", "arms"], instructions: "pushups", category: .strength, photo: "pushups")
    self.init(context: context)
    self.name = name
    self.areaOfBody = areaOfBody as NSArray
    self.instructions = instructions
    self.category = Int64(category)
    self.photo = photo
    
    
    self.originalIndex = 0
    self.settings = true
    self.intensity = 0
    self.occurance = 0
  }
}

