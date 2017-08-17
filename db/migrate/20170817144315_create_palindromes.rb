class CreatePalindromes < ActiveRecord::Migration[5.0]
  def change
    create_table :palindromes do |t|
      t.string :body

      t.timestamps
    end
  end
end
