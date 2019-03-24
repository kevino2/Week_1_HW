def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash (pet_shop, amount)
return pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, sold)
return pet_shop[:admin][:pets_sold] += sold
end

def stock_count(pet_shop)
count = pet_shop[:pets].count
end


def pets_by_breed(pet_shop, breed)
  return pet_shop[:pets].select { |pet_v| pet_v[:breed] == breed }
end


def find_pet_by_name(array, name)
 for pet in array[:pets]
   if pet[:name] == name
     return pet
 end
end
 return nil
end


def remove_pet_by_name(pet_shop, name)
  return pet_shop[:pets].delete_if { |pet_name_v| pet_name_v[:name] == name }
end


def add_pet_to_stock(pet_shop, new_pet)
return pet_shop[:pets].push new_pet
end

def customer_cash(customer)
return customer[:cash]
end

def remove_customer_cash(customer, amount)
  return customer[:cash] -= amount
end

def customer_pet_count(customer)
return customer[:pets].count
end

def add_pet_to_customer (customer, new_pet)
  return customer[:pets].push new_pet
end

def customer_can_afford_pet (customer, pet)
  return customer[:cash] >= pet[:price]? true : false
end

# loop thru to see if breed matches - if match put into array return that array
