//: Playground - noun: a place where people can play

import UIKit

/*
 Hi! 
 Thanks for evaluating my submission.
 
 -> Individual players are stored in their respective dictionaries.
 -> Firstly, I have added the experienced players with "hasExperience" = true in experiencedPlayers array and inexperienced players in the inExperiencedPlayers array.
 -> All players are appended into the players array. 
 -> I have used a function to add players in teams. The function adds experienced players according to the total of experienced players in the experiencedPlayers array and dividing the number by the number of teams. With this, the  count is determined to allocate equal number of experienced players in the teams. After adding experienced players, the function adds inExperiencedPlayers into the team with the condition of not exceeding the maximum number of players in the team.
 -> 
 
 */



// Dictionaries storing the individial player information
// Individual player and players collection use String key and String value data type as specified in the rubric ("needs work")
let player1: [String: Any] = [
    "name": "Joe Smith",
    "height": 42,
    "hasExperience": "true",
    "guardians": "Jime and Jan Smith"
]

let player2: [String: Any] = [
    "name": "Jill Tanner",
    "height": 36,
    "hasExperience": "true",
    "guardians": "Clara Tanner"
]
let player3: [String: Any] = [
    "name": "Bill Bon",
    "height": 43,
    "hasExperience": "true",
    "guardians": "Sara and Jenny Bon"
]

let player4: [String: Any] = [
    "name": "Eva Gordon",
    "height": 45,
    "hasExperience": "false",
    "guardians": "Wendy and Mike Gordon"
]

let player5: [String: Any] = [
    "name": "Matt Gill",
    "height": 40,
    "hasExperience": "false",
    "guardians": "Charles and Sylvia Gill"
]

let player6: [String: Any] = [
    "name": "Kimmy Stein",
    "height": 41,
    "hasExperience": "false",
    "guardians": "Bill and Hillary Stein"
]

let player7: [String: Any] = [
    "name": "Sammy Adams",
    "height": 45,
    "hasExperience": "false",
    "guardians": "Jeff Adams"
]

let player8: [String: Any] = [
    "name": "Karl Saygan",
    "height": 42,
    "hasExperience": "true",
    "guardians": "Heather Bledsoe"
]

let player9: [String: Any] = [
    "name": "Suzane Greenberg",
    "height": 44,
    "hasExperience": "true",
    "guardians": "Henrietta Dumas"
]

let player10: [String: Any] = [
    "name": "Sal Dali",
    "height": 41,
    "hasExperience": "false",
    "guardians": "Gala Dali"
]

let player11: [String: Any] = [
    "name": "Joe Kavalier",
    "height": 39,
    "hasExperience": "false",
    "guardians": "Sam and Elaine Kavalier"
]

let player12: [String: Any] = [
    "name": "Ben Finkelstein",
    "height": 44,
    "hasExperience": "false",
    "guardians": "Aaron and Jill Finkelstein"
]

let player13: [String: Any] = [
    "name": "Diego Soto",
    "height": 41,
    "hasExperience": "true",
    "guardians": "Robin and Sarika Soto"
]

let player14: [String: Any] = [
    "name": "Chloe Alaska",
    "height": 47,
    "hasExperience": "false",
    "guardians": "David and Jamie Alaska"
]

let player15: [String: Any] = [
    "name": "Arnold Willis",
    "height": 43,
    "hasExperience": "false",
    "guardians": "Claire Willis"
]

let player16: [String: Any] = [
    "name": "Phillip Helm",
    "height": 44,
    "hasExperience": "true",
    "guardians": "Thomas Helm and Eva Jones"
]

let player17: [String: Any] = [
    "name": "Les Clay",
    "height": 42,
    "hasExperience": "true",
    "guardians": "Wynonna Brown"
]

let player18: [String: Any] = [
    "name": "Herschel Krustofski",
    "height": 45,
    "hasExperience": "true",
    "guardians": "Hyman and Rachel Krustofski"
]

//An array of dictionaries which consist of all the players information
var players: [[String : Any]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]


var teamSharks: [[String: Any]] = []
var teamDragons: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []
var teams = [teamSharks, teamDragons, teamRaptors]

var avgHeightteamSharks: Int = 1
var avgHeightteamDragons: Int = 1
var avgHeightteamRaptors: Int = 1

var experiencedPlayers: [[String:Any]] = []
var inExperiencedPlayers: [[String:Any]] = []


for player in players {
    if let hasExperience = player["hasExperience"] as? String{
        if hasExperience == "true" {
        experiencedPlayers.append(player)
    }  else {
        inExperiencedPlayers.append(player)
        }
    }
}

var totalExperienced: Int = experiencedPlayers.count
var expCount: Int = totalExperienced/teams.count //Number of experienced players going in each team. Since number of teams is specified, 3 is used.
var totalInexperienced: Int = inExperiencedPlayers.count
var maxPlayersInTeam = players.count/teams.count
var heightAlarm: Bool = true // flag to check if the average height rule is met.


var experiencedPlayersInTheTeam: Int = 0
var inExperiencedPlayersInTheTeam: Int = 0


func addPlayersTo(Team: [[String: Any]]) -> [[String: Any]] {
    
    var t = Team
    var e: Int = 0
    var counterForTheTeam: Int = 0

    var expCount: Int = totalExperienced/teams.count //Number of experienced players going in each team. Since number of teams is specified, 3 is used.
    
    while e < expCount  {
        t.append(experiencedPlayers[experiencedPlayersInTheTeam])
        experiencedPlayersInTheTeam += 1
        counterForTheTeam += 1
        e += 1
    }
    
    while counterForTheTeam < maxPlayersInTeam {
        t.append(inExperiencedPlayers[inExperiencedPlayersInTheTeam])
        inExperiencedPlayersInTheTeam += 1
        counterForTheTeam += 1
    }
    return t
}

teamSharks = addPlayersTo(Team: teamSharks)
teamDragons = addPlayersTo(Team: teamDragons)
teamRaptors = addPlayersTo(Team: teamRaptors)

var dragonsPractice = "March 17, 1pm"
var sharksPractice = "March 17, 3pm"
var raptorsPractice = "March 18, 1pm"

var letters = [String] ()

for player in teamSharks {
    // when accessing an dictionary in an array, in order to copy it's key/values, we need to create const for each key/value we want to pull and use an if statement to check if that key/value exists.
    if  let guardian = player["guardians"], let name = player["name"] {
        let letter: String = "Dear \(guardian), \(name) is on team Sharks and there first game is on \(sharksPractice)."
        letters.append(letter)
    }
}

for player in teamDragons {
    // when accessing an dictionary in an array, in order to copy it's key values, we need to create const for each key/value we want to pull.  Then use that const in the return
    if  let guardian = player["guardians"], let name = player["name"] {
        let letter: String = "Dear \(guardian), \(name) is on team Dragons and there first game is on \(dragonsPractice)."
        letters.append(letter)
    }
}

for player in teamRaptors {
    // when accessing an dictionary in an array, in order to copy it's key values, we need to create const for each key/value we want to pull.  Then use that const in the return
    if let guardian = player["guardians"], let name = player["name"] {
        let letter: String = "Dear \(guardian), \(name) is on team Raptors and there first game is on \(raptorsPractice)."
        letters.append(letter)
    }
}
for letter in letters {
    print(letters)
}


