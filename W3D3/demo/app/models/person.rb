class Person < ApplicationRecord
  belong_to(
    :houses,
    class_name: 'House',
    foreign_key:  :house_id,
    primary_key:  :id
  )
end
