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

require 'spec_helper'

describe Page do
  pending "add some examples to (or delete) #{__FILE__}"
end
