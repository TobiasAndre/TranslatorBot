class HelpService
  def self.call
    response  = "*My commands* \n\n"
    response += "help\n"
    response += "`List of known commands`\n\n"
    response += "Add to Faq\n"
    response += "`Add new question to Faq`\n\n"
    response += "Remove ID\n"
    response += "`Remove a question based on Id`\n\n"
    response += "What you know about X\n"
    response += "`Search word on list of questions and answers`\n\n"
    response += "Search hashtag X\n"
    response += "`List the questions and answers with hastag`\n\n"
    response += "Questions and Answers\n"
    response += "`Show the list of questions and answers`\n\n"
    response
  end
end
