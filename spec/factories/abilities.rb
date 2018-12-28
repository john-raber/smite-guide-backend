FactoryBot.define do
  factory :ability do
    god
    tier { 'ability_1' }
    description { "Zhong Kui pastes a card on all enemies in front of him, marking them as a demon, Slowing and damaging them each second while they are marked.  If the card is removed, 75% of the remaining damage is done instantly." }
    cooldown { '10s' }
    cost { '60/65/70/75/80' }
    summary { 'Expose Evil' }
    url { 'https://web2.hirez.com/smite/god-abilities/expose-evil.jpg' }
    menu_items {
      [
        {"description"=>"Ability:", "value"=>"Line"},
        {"description"=>"Affects:", "value"=>"Enemy"},
        {"description"=>"Damage:", "value"=>"Magical"}
      ]
    }
    rank_items {
      [
        {"description"=>"Damage per Tick:", "value"=>"20/30/40/50/60 (+15% of your Magical Power)"},
        {"description"=>"Slow:", "value"=>"20%"},
        {"description"=>"Card Lifetime:", "value"=>"5s"}
      ]
    }
  end
end
