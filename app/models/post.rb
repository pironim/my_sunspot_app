class Post < ActiveRecord::Base
  attr_accessible :text, :user_id

  has_one :user

  searchable do
    text :text
    integer :user_id, :references => User
    autocomplete :text_ac, :as => :text_ac, :multiple => true do
      [self.text]
    end
  end

end
