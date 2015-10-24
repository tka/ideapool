class Project < ActiveRecord::Base
  belongs_to :category
  mount_uploader :image, ProjectImageUploader

  has_and_belongs_to_many :users

  def tags=(data)
    if data.is_a?(Array)
      write_attribute(:tags, data)
    else
      write_attribute(:tags, data.to_s.split(/,/).map(&:strip).select(&:present?))
    end
  end

  def tags
    read_attribute(:tags).join(", ")
  end
end
