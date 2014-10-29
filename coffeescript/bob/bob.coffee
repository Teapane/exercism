class Bob
  hey: (text) -> 
    message = new Message(text)
    return 'Fine. Be that way!' if message.isYelling()
    return 'Woah, chill out!' if message.isYelling()
    return 'Sure.' if message.isSilent()
    else 'Whatever.'

class Input

  constructor: (text) -> 
    @text = text
    
  isYelling: -> 
   return @text.toUpperCase() == @text

  isQuestion: -> 
    @text.slice(-1) == '?'

  isExcited: -> 
    @text.slice(-1) == '!'

module.exports = Bob
