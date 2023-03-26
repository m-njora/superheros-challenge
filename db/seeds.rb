puts "seeding heros 🦸‍♀️..."

# Create  heroes
hero1 = Hero.create(name: "Kamala Khan", super_name: "Ms. Marvel")
hero2 = Hero.create(name: "Doreen Green", super_name: "Squirrel Girl")
hero3 = Hero.create(name: "Gwen Stacy", super_name: "Spider-Gwen")


# Create  powers
powers = [
  { name: 'Super Strength', description: 'Gives the wielder super-human strengths' },
  { name: 'Flight', description: 'Gives the wielder the ability to fly through the skies at supersonic speed' },
  { name: 'Invisibility', description: 'Makes the wielder invisible to the naked eye' },
  { name: 'Teleportation', description: 'Allows the wielder to teleport instantly to any location' }
]

powers.each do |power|
    Power.create!(power)
  end
  

# Assign powers to heroes
Hero.all.each do |hero|
    hero_powers = Power.all.sample(2)
    hero_powers.each do |power|
      hero.hero_powers.create!(power: power)
    end
  end
  
  puts "done seeding  🌱"