import 'dart:math';

Random r = new Random();


List testNames = ["Julian Blackthorne", "Emma Carstairs",
      "Elias Veturius", "Tessa Grey",
      "Magnus Bane", "Jem Carstairs", "Jace Wayland"];

List messages = ["Do you have the third book in that series?",
      "I'm adding that to my tbr.", "Do you have a copy available?",
      "How many copies do you have?", "When is the next book available?",
      "I can't wait to read that!", "When are you avaialbe to exchange books?", "I have glasses just like those!"];



List notifications = [
  "${testNames[r.nextInt(5)]} and ${r.nextInt(50)} others likes your post.",
  "${testNames[r.nextInt(5)]} requested a digital book from you.",
  "${testNames[6]} requested to follow you."

];

List states = [
  "Los Angeles, CA", "Pomona, CA", "Seattle, WA", "Chandler, AZ",
  "Casa Grande, AZ", "Alhambra, CA", "Palmdale. CA", "Bartow, Florida"
];