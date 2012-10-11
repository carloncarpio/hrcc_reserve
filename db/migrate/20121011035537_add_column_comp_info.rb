class AddColumnCompInfo < ActiveRecord::Migration
  def up
  	add_column("comp_infos", "dancer21", :string)
  	add_column("comp_infos", "dancer22", :string)
  	add_column("comp_infos", "dancer23", :string)
  	add_column("comp_infos", "dancer24", :string)
  	add_column("comp_infos", "dancer25", :string)
  end

  def down
  	remove_column("comp_infos", "dancer21")
  	remove_column("comp_infos", "dancer22")
  	remove_column("comp_infos", "dancer23")
  	remove_column("comp_infos", "dancer24")
  	remove_column("comp_infos", "dancer25")
  end
end
