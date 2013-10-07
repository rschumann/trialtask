require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_gadgets
  end
end

def make_users
  10.times do |n|
    email = "Lisa-#{n+1}@trialtask.org"
    password  = "password12"
    User.create!(email:    email,
                 password: password,
                 password_confirmation: password)
  end
end

def make_gadgets
  users = User.all
  2.times do
    name = Faker::Lorem.sentence(2)
    content = Faker::Lorem.sentence(300)
    users.each { |user| user.gadgets.create!(name: name, content: content) }
    gadgets = Gadget.all
    photo = File.open(Dir.glob(File.join(Rails.root, 'lib/tasks/SampleImages', '*')).sample)
    gadgets.each { |gadget| gadget.images.create!(photo: photo) }  
  end
end