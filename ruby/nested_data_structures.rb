football_team = {
  offense: {
    coach: 'gary',
    trench_players: {
      center: "Bob",
      guard: "Allen",
      tackle: "Mike"
    },
    skilled_players: {
      quarterback: "Tom",
      running_Back: "Woody",
      wide_Reciever: "Stryder"
    },
    strengths: ["play_action", "running"]
    
  },
  defense: {
    coach: 'Bill',
    trench_players: {
      tackle: "Sam",
      defense_End: "Marcus",
    },
    skilled_players: {
      linebacker: "Clay",
      safety: "Rob",
      corner: "John"
    },
    strengths: ["pressure", "coverage"]
    
  }
}

p football_team[:offense][:coach].capitalize!

p football_team[:offense][:strengths].push("screens")

p football_team[:offense][:strengths].reverse

p football_team[:offense][:skilled_players][:tight_end] = "Gunner"

p football_team[:defense][:skilled_players][:safety] = "Robby"

p football_team[:defense][:strengths].push("block_passes")

p football_team