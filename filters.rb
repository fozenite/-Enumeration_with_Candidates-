# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  # Your code Here
  @candidates.each do |candidate|
    if candidate[:id] == id
      return candidate
    end
  end
  return
end

def experienced?(candidate)
  # Your code Here

  return candidate[:years_of_experience] >=2
end

def qualified_candidates(candidates)
  # Your code Here
  candidates.each do |candidate|
    if (experienced?(candidate)) && (candidate[:github_points] >= 100) && (candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')) && (candidate[:date_applied] >= 15.days.ago.to_date) && (candidate[:age] > 17)
      puts "#{candidate}"
    end
  end
end

# More methods will go below
def ordered_by_qualifications(candidatesCollection)
  return candidatesCollection.sort_by{ |hsh| [-hsh[:years_of_experience], -hsh[:github_points]]}
end