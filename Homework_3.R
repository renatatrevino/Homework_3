## Renata Trevino ##
## april 7, 2023 ##
## Homework 3 STA308##

GuessTheNumber <- function(lower=0, upper=10, seed=NULL) {  ## set lower and upper bound parameter
  set.seed(NULL) ## default seed to null
  Number <- sample(seq(lower, upper), size=1)
  NumGuesses <- 1  ## Number of guesses
  Guesses <- c() ## Vector reporting guesses
  Guess <- readline("Guess The Number:")
  while(Guess != Number) {     ##while loop 
    if(Guess > Number) {   ## if guess is too high
      NumGuesses = NumGuesses + 1 
      Guesses <- c(Guesses, Guess) 
      print("Too High")
      Guess <- readline("Guess The Number:") ##prompt again
    } else if(Guess< Number) {   ## if guess is too low 
      NumGuesses = NumGuesses + 1 
      Guesses <- c(Guesses, Guess)
      print("Too Low")
      Guess <- readline("Guess The Number:")  #prompt
    }
  }
  Guesses <- c(Guesses, Guess)  ## if you get the right number 
  print("You Got It!")
  {
    list(RandomNumber= Number,   ## output , reports the random number, the number of guesses and a vector of guesses
         NumGuesses= NumGuesses,
         Guesses = Guesses)
  }
}

## Play the Game! 

set.seed(5)
GuessTheNumber()

}