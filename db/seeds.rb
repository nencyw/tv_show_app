# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ch1 = Channel.create(name: 'Starplus');
ch2 = Channel.create(name: 'colours');
ch3 = Channel.create(name: 'Zee TV');
ch4 = Channel.create(name: 'SAB');
ch5 = Channel.create(name: 'Cartoon Network');


ch1.channel_shows.create(name:'Dance plus', timing: '6:00 PM');
ch1.channel_shows.create(name:'Nach baliye', timing: '6:30 PM');
ch1.channel_shows.create(name:'Diya aur bati', timing: '7:00 PM');
ch1.channel_shows.create(name:'yeh rishta kya kehlata he', timing: '7:30 PM');

ch2.channel_shows.create(name:'Balika vadhu', timing: '8:00 PM');
ch2.channel_shows.create(name:'Dance India Dance', timing: '8:30 PM');
ch2.channel_shows.create(name:'Big boss', timing: '9:00 PM');
ch2.channel_shows.create(name:'pardeshiya', timing: '9:30 PM');

ch3.channel_shows.create(name:'Choti bahu', timing: '9:00 PM');
ch3.channel_shows.create(name:'kundali bhagya', timing: '10:00 PM');
ch3.channel_shows.create(name:'Uddan', timing: '10:30 PM');

ch4.channel_shows.create(name:'Tarak mehta', timing: '10:30 PM');
ch4.channel_shows.create(name:'Chidiya ghar', timing: '11:00 PM');
ch4.channel_shows.create(name:'Alladin', timing: '11:30 PM');

ch5.channel_shows.create(name:'Bob the builder', timing: '8:30 PM');
ch5.channel_shows.create(name:'Mr. Bean', timing: '9:30 PM');
