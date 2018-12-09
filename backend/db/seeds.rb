# Users
User.create(email: "a@a.com", password: "aaaaaa", nickname: "apple")
User.create(email: "b@b.com", password: "bbbbbb", nickname: "banana")
User.create(email: "c@c.com", password: "cccccc", nickname: "carrot")
User.create(email: "d@d.com", password: "dddddd", nickname: "deer")
User.create(email: "e@e.com", password: "eeeeee", nickname: "electricity")

# Profiles
genders = ["F", "M"]
languages = ["Korean", "English", "Mandarin Chinese", "Hindi", "Spanish", "Arabic", "French", "Malay", "Russian", "German", "Japanese", "Turkish", "Vietnamese", "Thai"]
chooseBool = [true, false]
5.times do |i|
    p = Profile.find(i+1)
    p.update({ name: Faker::Friends.character, age: rand(18...33), description: Faker::FamousLastWords.last_words,
               address: Faker::Address.city, profile_longitude: Faker::Address.longitude, profile_latitude: Faker::Address.latitude, isVerified: chooseBool.sample,
               gender: genders.sample, language: languages.sample, profile_pic: "http://18.221.77.15/uploads/profile/profile_pic/1/profile" + (i+1).to_s + ".png" })
end

# Events
Event.create(host_id: 1, title: Faker::HarryPotter.spell, description: Faker::HarryPotter.quote, hosted: Faker::Time.between(20.days.ago, Date.today, :all),
            event_longitude: Faker::Address.longitude, event_latitude: Faker::Address.latitude, chatlink: "https://open.kakao.com/o/gxCoVV5") #1
Event.create(host_id: 1, title: Faker::HarryPotter.spell, description: Faker::HarryPotter.quote, chatlink: "https://open.kakao.com/o/g6UzVV5",
            event_longitude: Faker::Address.longitude, event_latitude: Faker::Address.latitude) #2
Event.create(host_id: 1, title: Faker::HarryPotter.spell, description: Faker::HarryPotter.quote, hosted: Faker::Time.between(20.days.ago, Date.today, :all),
            event_longitude: Faker::Address.longitude, event_latitude: Faker::Address.latitude, chatlink: "https://open.kakao.com/o/gyzKVV5") #3
Event.create(host_id: 2, title: Faker::HarryPotter.spell, description: Faker::HarryPotter.quote, chatlink: "https://open.kakao.com/o/gguSVV5",
            event_longitude: Faker::Address.longitude, event_latitude: Faker::Address.latitude) #4
Event.create(host_id: 2, title: Faker::HarryPotter.spell, description: Faker::HarryPotter.quote, hosted: Faker::Time.between(20.days.ago, Date.today, :all),
            event_longitude: Faker::Address.longitude, event_latitude: Faker::Address.latitude, chatlink: "https://open.kakao.com/o/gOp2VV5") #5
Event.create(host_id: 3, title: Faker::HarryPotter.spell, description: Faker::HarryPotter.quote, chatlink: "https://open.kakao.com/o/gb7iWV5",
            event_longitude: Faker::Address.longitude, event_latitude: Faker::Address.latitude) #6
Event.create(host_id: 3, title: Faker::HarryPotter.spell, description: Faker::HarryPotter.quote, chatlink: "https://open.kakao.com/o/gu4sWV5",
            event_longitude: Faker::Address.longitude, event_latitude: Faker::Address.latitude) #7
Event.create(host_id: 3, title: Faker::HarryPotter.spell, description: Faker::HarryPotter.quote, hosted: Faker::Time.between(20.days.ago, Date.today, :all),
            event_longitude: Faker::Address.longitude, event_latitude: Faker::Address.latitude, chatlink: "https://open.kakao.com/o/gCyAWV5") #8

# Event Requests
EventRequest.create(event_id: 1, requester_id: 2)
EventRequest.create(event_id: 1, requester_id: 4)
EventRequest.create(event_id: 2, requester_id: 2)
EventRequest.create(event_id: 2, requester_id: 5)
EventRequest.create(event_id: 4, requester_id: 3)
EventRequest.create(event_id: 5, requester_id: 1)
EventRequest.create(event_id: 1, requester_id: 3)
EventRequest.create(event_id: 2, requester_id: 3)
EventRequest.create(event_id: 3, requester_id: 4)
EventRequest.create(event_id: 4, requester_id: 1)
EventRequest.create(event_id: 5, requester_id: 3)
EventRequest.create(event_id: 1, requester_id: 5)
EventRequest.create(event_id: 3, requester_id: 2)
EventRequest.create(event_id: 4, requester_id: 4)
EventRequest.create(event_id: 6, requester_id: 2)
EventRequest.create(event_id: 7, requester_id: 1)

# Event Attendings
EventAttending.create(event_id: 1, user_id: 3)
EventAttending.create(event_id: 2, user_id: 3)
EventAttending.create(event_id: 3, user_id: 4)
EventAttending.create(event_id: 4, user_id: 1)
EventAttending.create(event_id: 5, user_id: 3)
EventAttending.create(event_id: 1, user_id: 5)
EventAttending.create(event_id: 3, user_id: 2)
EventAttending.create(event_id: 4, user_id: 4)
EventAttending.create(event_id: 6, user_id: 2)
EventAttending.create(event_id: 7, user_id: 1)

# Reviews
Review.create(host_id: 1, author_id: 2, rating: rand(1..5), content: Faker::Simpsons.quote)
Review.create(host_id: 1, author_id: 3, rating: rand(1..5), content: Faker::Simpsons.quote)
Review.create(host_id: 2, author_id: 4, rating: rand(1..5), content: Faker::Simpsons.quote)
Review.create(host_id: 2, author_id: 1, rating: rand(1..5), content: Faker::Simpsons.quote)
Review.create(host_id: 3, author_id: 5, rating: rand(1..5), content: Faker::Simpsons.quote)

# Follows
Follow.create(follower_id: 1, following_id: 2)
Follow.create(follower_id: 1, following_id: 4)
Follow.create(follower_id: 2, following_id: 1)
Follow.create(follower_id: 4, following_id: 1)

# Tags
8.times do |i|
    rand(1..10).times do
        Event.find(i+1).tags << Tag.create(event_id: (i+1), content: Faker::Food.dish)
    end
end

# Profile Tags
5.times do |i|
    rand(1..10).times do
        Profile.find(i+1).profile_tags << ProfileTag.create(profile_id: (i+1), content: Faker::Nation.nationality)
    end
end

# Bookmarks
Bookmark.create(user_id: 1, event_id: 4)
Bookmark.create(user_id: 1, event_id: 8)
Bookmark.create(user_id: 2, event_id: 1)
Bookmark.create(user_id: 3, event_id: 2)