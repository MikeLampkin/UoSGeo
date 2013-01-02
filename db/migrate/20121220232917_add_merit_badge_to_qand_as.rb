class AddMeritBadgeToQandAs < ActiveRecord::Migration
  def change
    add_column :qandas, :meritbadge, :string
  end
end
