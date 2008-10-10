module FixtureReplacement
  attributes_for :bogey do |a|
    a.name = String.random 
    a.living_name = String.random
    a.classification = String.random
    a.status = String.random
  end

  attributes_for :daily_report do |a|
    
  end

  attributes_for :user do |a|
    
  end
end