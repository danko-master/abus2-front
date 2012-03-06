class MainPageData2 < ActiveRecord::Migration
  def change    
        cash = Main.create(:title => 'Main Title',
      :content => 'Main Content',
      :metadescription => 'Meta Main Description',
      :metakeywords => 'Meta Main Keyword',
      :head => '',
      :contact => 'ph. 8 903 123 45 67',
      :footer => 'Main Footer',
      :counter => '')
    cash.save
  end


end
