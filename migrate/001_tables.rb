Sequel.migration do
  change do
    create_table(:cities) do
      primary_key :id
      String :name
      String :station_id
      Float :lat
      Float :long
      String :station_name
      Date :start_date
      Date :end_date
    end
  end
end
