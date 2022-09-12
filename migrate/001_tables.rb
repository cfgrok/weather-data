Sequel.migration do
  change do
    create_table(:cities) do
      primary_key :id
      String :name
      String :station_code
      Float :lat
      Float :long
    end

    create_table(:stations) do
      primary_key :id
      foreign_key :city_id, :cities, null: false
      String :station_name
      Date :start_date
      Date :end_date
    end

    create_table(:readings) do
      primary_key :id
      foreign_key :city_id, :cities, null: false
      Date :date
      Float :max_temp
      Float :min_temp
      Float :precip
    end

    create_table(:months) do
      primary_key :id
      foreign_key :city_id, :cities, null: false
      Integer :month_number
      String :month_name
      Integer :average_high
      Integer :record_high
      Integer :lowest_high
      Float :days_over_80
      Float :days_below_30
      Integer :average_low
      Integer :record_low
      Integer :highest_low 
    end
  end
end
