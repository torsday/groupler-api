class JoinUsersAndProjects < ActiveRecord::Migration
  def change
    create_table :projects_users do |t|
      t.belongs_to :user
      t.belongs_to :project

      t.timestamps null: false
    end
  end
end
