# Seed for states
parana = State.find_or_create_by!(name: 'Paraná', abbreviation: 'PR')
santa_catarina = State.find_or_create_by!(name: 'Santa Catarina', abbreviation: 'SC')
rio_grande_do_sul = State.find_or_create_by!(name: 'Rio Grande do Sul', abbreviation: 'RS')

# Seed for Paraná cities
City.find_or_create_by!(name: 'Curitiba', state: parana)
City.find_or_create_by!(name: 'Londrina', state: parana)
City.find_or_create_by!(name: 'Maringá', state: parana)
City.find_or_create_by!(name: 'Ponta Grossa', state: parana)
City.find_or_create_by!(name: 'Cascavel', state: parana)
City.find_or_create_by!(name: 'Foz do Iguaçu', state: parana)
City.find_or_create_by!(name: 'Colombo', state: parana)
City.find_or_create_by!(name: 'Guarapuava', state: parana)
City.find_or_create_by!(name: 'São José dos Pinhais', state: parana)

# Seed  for Santa Catarina cities
City.find_or_create_by!(name: 'Florianópolis', state: santa_catarina)
City.find_or_create_by!(name: 'Joinville', state: santa_catarina)
City.find_or_create_by!(name: 'Blumenau', state: santa_catarina)
City.find_or_create_by!(name: 'Chapecó', state: santa_catarina)
City.find_or_create_by!(name: 'Criciúma', state: santa_catarina)
City.find_or_create_by!(name: 'Itajaí', state: santa_catarina)
City.find_or_create_by!(name: 'São José', state: santa_catarina)
City.find_or_create_by!(name: 'Lages', state: santa_catarina)
City.find_or_create_by!(name: 'Jaraguá do Sul', state: santa_catarina)

# Seed fpr Rio Grande do Sul cities
City.find_or_create_by!(name: 'Porto Alegre', state: rio_grande_do_sul)
City.find_or_create_by!(name: 'Caxias do Sul', state: rio_grande_do_sul)
City.find_or_create_by!(name: 'Pelotas', state: rio_grande_do_sul)
City.find_or_create_by!(name: 'Santa Maria', state: rio_grande_do_sul)
City.find_or_create_by!(name: 'Gravataí', state: rio_grande_do_sul)
City.find_or_create_by!(name: 'Rio Grande', state: rio_grande_do_sul)
City.find_or_create_by!(name: 'Canoas', state: rio_grande_do_sul)
City.find_or_create_by!(name: 'Novo Hamburgo', state: rio_grande_do_sul)
City.find_or_create_by!(name: 'São Leopoldo', state: rio_grande_do_sul)
