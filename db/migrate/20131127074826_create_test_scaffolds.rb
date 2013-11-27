class CreateTestScaffolds < ActiveRecord::Migration
  def change
    create_table :test_scaffolds do |t|

      t.timestamps
    end
  end
end
