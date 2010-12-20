require 'quiz_two'

santas = []

while(santa = STDIN.gets.chomp)
  break if santa.eql? ''

  if (QuizTwo::SecretSantaSelector.is_valid_input(santa))
    santas.push(santa)
  else
    puts "Please use the following format: FIRST_NAME space FAMILY_NAME space <EMAIL_ADDRESS> newline"
    next
  end
end

sss = QuizTwo::SecretSantaSelector.new(santas)
sss.create_and_notify_santas_and_santees(true) #send true to have it actually email

puts "I've emailed your santa lists out. I hope this has been a great holiday experience for you and your loved ones!"
