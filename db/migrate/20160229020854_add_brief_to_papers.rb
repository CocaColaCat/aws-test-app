class AddBriefToPapers < ActiveRecord::Migration
  def change
    add_column :papers, :brief, :text
  end
end
