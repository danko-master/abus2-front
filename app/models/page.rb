# == Schema Information
#
# Table name: pages
#
#  id              :integer         not null, primary key
#  created_at      :datetime
#  updated_at      :datetime
#  name            :string(255)     default("New Page"), not null
#  alias           :string(255)     default("")
#  title           :text            default("")
#  content         :text            default("")
#  metadescription :text            default("")
#  metakeywords    :text            default("")
#  head            :text            default("")
#  ismenu          :boolean         default(FALSE), not null
#

class Page < ActiveRecord::Base
  
  attr_accessible :name, :title, :metadescription, :metakeywords, :head, :content, :alias
  
  validates :name, :presence => true
  
  
=begin
  validates :alias, :presence   => true,
                    :length => {:minimum => 1, :maximum => 254},
                    :uniqueness => { :case_sensitive => false }
=end


end
