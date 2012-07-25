class User < ActiveRecord::Base
  attr_accessible :email, :name

  searchable do
    text :email
    text :name
    autocomplete :text_ac, :as => :text_ac, :multiple => true do 
       [self.email,self.name]
    end
#    autocomplete :name_ac, :using => :email
  end

end
