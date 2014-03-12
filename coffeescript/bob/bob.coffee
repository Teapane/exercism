class Bob
    hey: (text) ->
        if text.trim() == ""
            return "Fine. Be that way!"
        else if text == text.toUpperCase()
            return "Woah, chill out!"
        else if text.slice(-1) == "?"
            return "Sure."
        else if text.slice(-1) == "!"
            return "Whatever."
        return "Whatever."
module.exports = Bob
