def pet_shop_name(array)
  return array[:name]
end

def total_cash(array)
  return array[:admin][:total_cash]
end

def add_or_remove_cash(array,change)
  return  array[:admin][:total_cash] += change
end

def pets_sold(array)
  return array[:admin][:pets_sold]
end

def increase_pets_sold(array,change)
  return array[:admin][:pets_sold] += change
end

def stock_count(array)
  return array[:pets].length()
end

def pets_by_breed(array,search)
  result = 0

  for pet in array[:pets]
    if pet[:breed] == search
      result += 1
    end
  end
  return result
end

def find_pet_by_name(array,search)
  for pet in array[:pets]
    if pet[:name] == search
      return search
    end
  end
  return nil
end

def remove_pet_by_name(array,search)
  for pet in array[:pets]
    if pet[:name] == search
      array[:pets].delete(pet) 
    end
  end
  return nil
end

def add_pet_to_stock(array,change)
  array[:pets] << change
end

def customer_pet_count(array)
  return array[:pets].length()
end

def add_pet_to_customer(array,change)
  array[:pets] << change
end

def customer_can_afford_pet(person,pet)
  return person[:cash] >= pet[:price]
  # if person[:cash] >= pet[:price]
  #   return true
  # else
  #   return false
  # end
end

def sell_pet_to_customer(array,pet,person)

  if pet != nil
    for pet1 in array[:pets]
      if pet1[:name] == pet
        change = pet1
      end
    end

    if customer_can_afford_pet(person,change) == true
      add_pet_to_customer(person,change)
      increase_pets_sold(array,1)
      add_or_remove_cash(array,change[:price])
    end
  end
end