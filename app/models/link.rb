class Link < ActiveRecord::Base
  belongs_to :author
  has_many :comments

  scope :published, ->{ where(published: true) }

  def destroy
    unless new_record?
      update(published: false)
    end
    @destroyed = true
    freeze
  end
end
