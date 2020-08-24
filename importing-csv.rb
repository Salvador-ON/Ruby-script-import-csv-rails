require 'csv'
CSV.foreach(Rails.root.join('lib/model-data.csv'), headers: true) do |row|
  
  "model".create({
    col1: row[0],
    col2: row[1]
  })
end
