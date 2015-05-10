class Post < ActiveRecord::Base
  
  validates :title,
    presence: true
    
  validates :message,
    presence: true
   
  validates :slug_title,
    presence: true,
    uniqueness: true
    
  default_scope -> { order(created_at: :desc )}
  
  before_validation  :set_slug_title
  
  belongs_to :user
  
  private 
    def set_slug_title
      self.title ||= ""
      self.slug_title = self.title.parameterize
    end
  
end
