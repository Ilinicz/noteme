class Note < ActiveRecord::Base
  
  validates_presence_of :title, :body, :published_at

  default_scope { order('published_at DESC') }

  def self.find_unarchived(id)
    find_by!(id: id, archived: false)
  end

  def archive!
    self.archived = true
    self.save
  end
end
