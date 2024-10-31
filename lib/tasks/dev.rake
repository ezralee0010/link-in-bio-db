desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do
  puts "Creating sample data..."

  if Rails.env.development?
    puts "Deleting the previous data..."
    Link.destroy_all
  end

  puts "Creating first link..."
  link_1 = Link.new
  link_1.url = "https://paulgraham.com/startupideas.html"
  link_1.url_description = "How to Get Startup Ideas"
  link_1.image = "https://fastly.picsum.photos/id/554/200/200.jpg?hmac=wvBDWVN6iXLUYv4DYpQ9fWSg_2y3dCYyzy4N_6H26pY"
  link_1.image_description = "Picture"
  link_1.save

  puts "Creating second link..."
  link_2 = Link.new
  link_2.url = "https://practicaltypography.com/typography-in-ten-minutes.html"
  link_2.url_description = "Typography in ten minutes"
  link_2.image = "https://fastly.picsum.photos/id/388/200/200.jpg?hmac=yc4V5jCOMR-l634JzXmANfvSGFGgYWHQN4aKA69RvZo"
  link_2.image_description = "Picture"
  link_2.save

  puts "Done!"
end
