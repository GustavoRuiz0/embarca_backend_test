# Seed for states
parana = State.find_or_create_by!(name: 'Paraná', abbreviation: 'PR')
santa_catarina = State.find_or_create_by!(name: 'Santa Catarina', abbreviation: 'SC')
rio_grande_do_sul = State.find_or_create_by!(name: 'Rio Grande do Sul', abbreviation: 'RS')

# Seed for Paraná cities
City.find_or_create_by!(name: 'Curitiba', state_id: parana.id)
City.find_or_create_by!(name: 'Londrina', state_id: parana.id)
City.find_or_create_by!(name: 'Maringá', state_id: parana.id)
City.find_or_create_by!(name: 'Ponta Grossa', state_id: parana.id)
City.find_or_create_by!(name: 'Cascavel', state_id: parana.id)
City.find_or_create_by!(name: 'Foz do Iguaçu', state_id: parana.id)
City.find_or_create_by!(name: 'Colombo', state_id: parana.id)
City.find_or_create_by!(name: 'Guarapuava', state_id: parana.id)
City.find_or_create_by!(name: 'São José dos Pinhais', state_id: parana.id)

# Seed for Santa Catarina cities
City.find_or_create_by!(name: 'Florianópolis', state_id: santa_catarina.id)
City.find_or_create_by!(name: 'Joinville', state_id: santa_catarina.id)
City.find_or_create_by!(name: 'Blumenau', state_id: santa_catarina.id)
City.find_or_create_by!(name: 'Chapecó', state_id: santa_catarina.id)
City.find_or_create_by!(name: 'Criciúma', state_id: santa_catarina.id)
City.find_or_create_by!(name: 'Itajaí', state_id: santa_catarina.id)
City.find_or_create_by!(name: 'São José', state_id: santa_catarina.id)
City.find_or_create_by!(name: 'Lages', state_id: santa_catarina.id)
City.find_or_create_by!(name: 'Jaraguá do Sul', state_id: santa_catarina.id)

# Seed for Rio Grande do Sul cities
City.find_or_create_by!(name: 'Porto Alegre', state_id: rio_grande_do_sul.id)
City.find_or_create_by!(name: 'Caxias do Sul', state_id: rio_grande_do_sul.id)
City.find_or_create_by!(name: 'Pelotas', state_id: rio_grande_do_sul.id)
City.find_or_create_by!(name: 'Santa Maria', state_id: rio_grande_do_sul.id)
City.find_or_create_by!(name: 'Gravataí', state_id: rio_grande_do_sul.id)
City.find_or_create_by!(name: 'Rio Grande', state_id: rio_grande_do_sul.id)
City.find_or_create_by!(name: 'Canoas', state_id: rio_grande_do_sul.id)
City.find_or_create_by!(name: 'Novo Hamburgo', state_id: rio_grande_do_sul.id)
City.find_or_create_by!(name: 'São Leopoldo', state_id: rio_grande_do_sul.id)
