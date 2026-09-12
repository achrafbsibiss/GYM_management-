module UsersHelper
 def age(date)
  retrun 0 if date.blank?

  ((Time.current - date.to_time) - 1.year).to_i
 end
end
