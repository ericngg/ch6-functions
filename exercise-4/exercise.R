# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(string, string2) {
  difference <- abs(nchar(string) - nchar(string2))
  min <- min(nchar(string), nchar(string2))
  difference >= min
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
is_twice_as_long("one", "two")
is_twice_as_long("one", "three")
is_twice_as_long("two", "three")


# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(string, string2) {
  difference <- nchar(string) - nchar(string2)
  if(difference > 0) {
    sentence <- paste("Your first string is longer by", difference, "characters")
  } else if(difference < 0) {
    sentence <- paste("Your second string is longer by", difference, "characters")
  } else {
    sentence <- "Your strings are the same length!"
  }
  sentence
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1

describe_difference("one", "two")
describe_difference("one", "three")
describe_difference("two", "three")