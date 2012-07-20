class Post < ActiveRecord::Base
  attr_accessible :text, :user_id

  has_one :user

  searchable do
    text :text
    integer :user_id, :references => User
    autocomplete :post_text, :using => :text
  end

  class << self
    def autocomplete(phrase, num_results = 10)
      Post.search do
        adjust_solr_params do |params|
          params[:q] = "post_text_ac:\"#{phrase}\""
        end
        paginate :page => 1, :per_page => num_results
      end
    end
  end

end
