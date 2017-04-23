# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Campaign.destroy_all

bill_nye = User.create({
  email: "BillNye@gmail.com",
  password: "thescienceguy",
  first_name: "Bill",
  last_name: "Nye",
  city: "Hollywood",
  country: "United States",
})

hexagon_user = User.create({
  email: "HEXAGON@gmail.com",
  password: "HEXAGON",
  first_name: "HEXAGON",
  last_name: "by Smart Bikes",
  city: "Los Angeles",
  country: "United States",
})


tv_show = Campaign.create({
  user_id: hexagon_user.id,
  goal_amt: 30000,
  current_amt: 54090,
  title: "HEXAGON - Camera, Signals, & Sensors for Cyclists",
  tagline: "With a full HD camera, power bank, crash sensor, & more HEXAGON is the ultimate safety device.",
  city: "Hollywood",
  country: "United States",
  duration: 6,
  overview: "With a revolutionary Full HD (1080p/720p)  rear-view camera, smart sensors, and a complementary app, HEXAGON is the ultimate safety device for cyclists. Our streaming camera, power bank, activity tracker, odometer, and other smart safety features will be sure to make your ride safe and connected. Let HEXAGON change the way you ride.",
  campaign_story: "HEXAGON makes any bike a safer and smarter by seamlessly connecting with your smartphone. View the traffic behind you, live stream your ride, & signal to cars all through smartphone integration. With our rear-facing camera, you can view traffic & stream your ride.HEXAGON has Automatic Stop, Turn, and Motion signals.iOS & Android app with activity tracker, navigation system, and more.Award-winning cyclist, Vittorio Brumotti, loves HEXAGON. Check out the video below to hear Vittorio's stamp of approval!HEXAGON is equipped with a rear-facing HD camera, Automatic Stop, Turn, and Motion signals. To navigate the turn signals, HEXAGON comes with a wireless remote that securely attaches to your handle bars. HEXAGON's social and recording features can be managed through the HEXAGON app.HEXAGON comes with two 18650 batteries and can easily be recharged with the complimentary Micro-USB cable. HEXAGON Light has all the great features of HEXAGON, minus the turn signals and the Wireless Remote Control. This slimmed down model has the same rear-facing HD camera, Automatic Stop, and Motion signals. All of HEXAGON Light's features and settings can be managed through the HEXAGON app, so there's no need for the remote!  HEXAGON Light comes with two 18650 batteries and can easily be recharged with the complimentary Micro-USB cable. ",
})

cont = Contribution.create({
  user_id: bill_nye.id,
  campaign_id: tv_show.id,
  amount: 55,
  appearance: (bill_nye.first_name + bill_nye.last_name),
})
