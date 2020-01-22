class ChangeIssueCategories < Rails.version < '5.1' ? ActiveRecord::Migration : ActiveRecord::Migration[4.2]
  class IssueCategory < ActiveRecord::Base
  end
  
  def up
    add_column :issue_categories, :archived, :boolean, :default => false
  end

  def down
    remove_column :issue_categories, :archived
  end
end