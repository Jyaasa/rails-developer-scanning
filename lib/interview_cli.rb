class InterviewCLI < Thor
  desc "start", "start the interview"
  def start    
    # ASK FOR NAME AND EMAIL ADDRESS.
    name = ask "\nEnter your full name.".green 
    email = ask( "\nEnter your email address to get back to you. ".green) { |q| q.echo = '*' }
    user = User.create(name,email)
    interview = Interview.new(user)
    interview.start
  end  
end