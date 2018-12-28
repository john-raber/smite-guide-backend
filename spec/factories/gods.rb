FactoryBot.define do
  factory :god do
    attack_speed { 0.86 }
    attack_speed_per_level { 0.009 }
    hp5_per_level { 0.44 }
    health { 450 }
    health_per_five { 6 }
    health_per_level { 85 }
    lore { "In this world resides powerful evil, intent on destroying everything crafted by Gods and Men. Without guardians of equal strength, all would have fallen long ago. Zhong Kui was once a man with ambitions no greater than scholastic excellence, but in death became the perfect shield against evil’s onslaught.\\n\\nZhong Kui sought to pit his brilliant mind against the Imperial Examinations, tests to select councilors for the Emperor. With ease, he passed, but when the emperor saw his hideous face, he cast the scholar out. Offended, furious, Zhong Kui hurled himself repeatedly at the palace gates until his body was broken.\\n\\nFor his crime, Zhong Kui’s soul was judged by the King of Hell, but where the Emperor saw only ugliness, the King of Hell saw potential armed with genius. Zhong Kui was appointed Lord of Demons, tasked to forever hunt and ensnare the evils of the world.\\n\\nFor centuries, home owners and shopkeepers have adorned their buildings with Zhong Kui’s likeness, for that visage that once horrified the emperor now glares with purpose at unwelcome demons. Yet these days, it is not just shops and homes in peril, but the whole world. It does not take a mind like Zhong Kui’s to see evil’s hand in this War of the Gods. The time has come to bring these demons to task, and Zhong Kui means to smite them all." }
    mp5_per_level { 0.45 }
    magic_protection { 30 }
    magic_protection_per_level { 0.9 }
    magical_power { 165 }
    magical_power_per_level { 7.5 }
    mana { 250 }
    mana_per_five { 4.8 }
    mana_per_level { 47 }
    name { 'Zhong Kui' }
    free_rotation { 'n' }
    pantheon { 'Chinese' }
    physical_power { 0 }
    physical_power_per_level { 0 }
    physical_protection { 8 }
    physical_protection_per_level { 2.6 }
    pros { 'High Area Damage, Medium Crowd Control' }
    roles { 'Mage' }
    speed { 360 }
    title { "the Demon Queller" }
    god_type { 'Ranged, Magical' }
    god_card_url { "https://web2.hirez.com/smite/god-cards/zhong-kui.jpg" }
    god_icon_url { "https://web2.hirez.com/smite/god-icons/zhong-kui.jpg" }
    latest_god { 'n' }
  end
end
