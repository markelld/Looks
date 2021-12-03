json.extract! order, :id, :first_name, :last_name, :email, :height, :waist, :shoe, :chest, :reason_for_styling, :number_of_outfits, :budget_per_outfit, :user_id, :stylist_id, :created_at, :updated_at
json.url order_url(order, format: :json)
