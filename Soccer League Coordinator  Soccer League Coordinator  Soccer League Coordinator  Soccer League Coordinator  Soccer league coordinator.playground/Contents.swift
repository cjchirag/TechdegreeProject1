//: Playground - noun: a place where people can play

import UIKit

// Dictionaries storing the individial player information
// Individual player and players collection use String key and String value data type as specified in the rubric ("needs work")
let player1: [String: String] = [
    "name": "Joe Smith",
    "height": "42",
    "hasExperience": "true",
    "guardians": "Jime and Jan Smith"
]

let player2: [String: String] = [
    "name": "Jill Tanner",
    "height": "36",
    "hasExperience": "true",
    "guardians": "Clara Tanner"
]
let player3: [String: String] = [
    "name": "Bill Bon",
    "height": "43",
    "hasExperience": "true",
    "guardians": "Sara and Jenny Bon"
]

let player4: [String: String] = [
    "name": "Eva Gordon",
    "height": "45",
    "hasExperience": "false",
    "guardians": "Wendy and Mike Gordon"
]

let player5: [String: String] = [
    "name": "Matt Gill",
    "height": "40",
    "hasExperience": "false",
    "guardians": "Charles and Sylvia Gill"
]

let player6: [String: String] = [
    "name": "Kimmy Stein",
    "height": "41",
    "hasExperience": "false",
    "guardians": "Bill and Hillary Stein"
]

let player7: [String: String] = [
    "name": "Sammy Adams",
    "height": "45",
    "hasExperience": "false",
    "guardians": "Jeff Adams"
]

let player8: [String: String] = [
    "name": "Karl Saygan",
    "height": "42",
    "hasExperience": "true",
    "guardians": "Heather Bledsoe"
]

let player9: [String: String] = [
    "name": "Suzane Greenberg",
    "height": "44",
    "hasExperience": "true",
    "guardians": "Henrietta Dumas"
]

let player10: [String: String] = [
    "name": "Sal Dali",
    "height": "41",
    "hasExperience": "false",
    "guardians": "Gala Dali"
]

let player11: [String: String] = [
    "name": "Joe Kavalier",
    "height": "39",
    "hasExperience": "false",
    "guardians": "Sam and Elaine Kavalier"
]

let player12: [String: String] = [
    "name": "Ben Finkelstein",
    "height": "44",
    "hasExperience": "false",
    "guardians": "Aaron and Jill Finkelstein"
]

let player13: [String: String] = [
    "name": "Diego Soto",
    "height": "41",
    "hasExperience": "true",
    "guardians": "Robin and Sarika Soto"
]

let player14: [String: String] = [
    "name": "Chloe Alaska",
    "height": "47",
    "hasExperience": "false",
    "guardians": "David and Jamie Alaska"
]

let player15: [String: String] = [
    "name": "Arnold Willis",
    "height": "43",
    "hasExperience": "false",
    "guardians": "Claire Willis"
]

let player16: [String: String] = [
    "name": "Phillip Helm",
    "height": "44",
    "hasExperience": "true",
    "guardians": "Thomas Helm and Eva Jones"
]

let player17: [String: String] = [
    "name": "Les Clay",
    "height": "42",
    "hasExperience": "true",
    "guardians": "Wynonna Brown"
]

let player18: [String: String] = [
    "name": "Herschel Krustofski",
    "height": "45",
    "hasExperience": "true",
    "guardians": "Hyman and Rachel Krustofski"
]

//An array of dictionaries which consist of all the players information
var players: [[String : String]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

var teamSharks: [[String: Any]] = []
var teamDragons: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []

var avgHeightteamSharks: Int = 1
var avgHeightteamDragons: Int = 1
var avgHeightteamRaptors: Int = 1

var experiencedPlayers: [[String:String]] = []
var inExperiencedPlayers: [[String:String]] = []


for player in players {
    if player["hasExperience"] == "true"{
        experiencedPlayers.append(player)
    } else {
        inExperiencedPlayers.append(player)
    }
}

var totalExperienced: Int = experiencedPlayers.count
var totalInexperienced: Int = inExperiencedPlayers.count

var totalHeightForSharks: Int = 0
var avgHeightForSharks: Int = 1
var expCount: Int = totalExperienced/3 //Number of experienced players going in each team. Since number of teams is specified, 3 is used. 
var expCountForSharks: Int = 0
var expCountForDragons: Int = 0
var expCountForRaptors: Int = 0
var countForSharks: Int = 0

while avgHeightForSharks < 1.5 && expCountForSharks<=expCount {
    for I in teamSharks {
        var height: Int = I["height"] as! Int
        totalHeightForSharks = totalHeightForSharks + height
        var Icount: Int = I.count as! Int
        avgHeightForSharks = totalHeightForSharks/Icount
    }
}







