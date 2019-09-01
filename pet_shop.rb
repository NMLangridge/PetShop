def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += (amount)
end

def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, sold)
  pet_shop[:admin][:pets_sold] += (sold)
end

def stock_count(pet_shop)
  pet_shop[:pets].length()
end

def pets_by_breed(pet_shop, breed)
  breed_array = []
  for pet in pet_shop[:pets]
    # check if breed of pet is same as breed passed into function
    if pet[:breed] == breed
      # push any matching pets into the breed_array
      breed_array.push(pet)
    end
  end
  return breed_array
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet.shift
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_cash(customers)
  customers[:cash]
end

def remove_customer_cash(customers, cash)
  customers[:cash] -= cash
end

def customer_pet_count(customers)
  customers[:pets].count()
end

def add_pet_to_customer(customers, new_pet)
  customers[:pets].push(new_pet)
end
