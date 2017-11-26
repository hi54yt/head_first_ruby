class LoveInterest
  def request_love
    if @busy
      puts "Sorry, I'm busy."
    else
      puts "Sure, let's go"
      @busy = true
    end
  end
end

betty = LoveInterest.new
betty.request_love
candace = LoveInterest.new
candace.request_love

p betty.object_id
p candace.object_id

lucy = LoveInterest.new
lily = lucy
lucy.request_love
lily.request_love

p lucy.inspect
p lily.inspect
