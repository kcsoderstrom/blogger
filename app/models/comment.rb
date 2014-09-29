class Comment < ActiveRecord::Base
  belongs_to :article

  # def tag_list
  #   article.tag_list
  # end
end
