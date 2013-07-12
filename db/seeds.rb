# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) are set in the file config/application.yml.
# See http://railsapps.github.com/rails-environment-variables.html
puts 'Bienvenido al Sistema de Noticias'
puts 'Cargano usuarios y roles del sistema....'
Role.create([
  { :name => 'root' },
  { :name => 'jefe_de_informacion', :modulo => 'noticias' },
  { :name => 'director_de_noticias' , :modulo => 'noticias' },
  { :name => 'reportero',:modulo => 'noticias' },
  { :name => 'coordinador_de_noticas', :modulo => 'noticias'},
  { :name => 'camarografo' , :modulo => 'noticias'},
  { :name => 'editor',  :modulo => 'noticias'},
  { :name => 'corresponsal' , :modulo => 'noticias'},
  {:name => 'capturista' , :modulo => 'noticias'},
  { :name => 'conductor', :modulo => 'noticias'}])

Plaza.create([
	{ name:'Cancun'},
	{ name: 'Playa del Carmen'},
	{ name: 'Merida'},
	{ name: 'Chetumal'},
	{ name: 'Cozumel'},
	{ name: 'Tulum'},
	{ name: 'Jose Maria Morelos'},
	{ name: 'Isla Mujeres'},
	{ name: 'Tizimin'},
	{ name: 'Valladolid'},
	{ name: 'Campeche'}])

Source.create([
	{ name:	'Policiaco'},
	{ name: 'Religion'},
	{ name: 'Politica'},
	{ name: 'Politica'}, 
	{ name: 'Educacion'},
	{ name: 'Empresarial/Turismo'},
	{ name: 'Ciencia y tecnologia'},
	{ name: 'Deportes'}, 
	{ name: 'Salud'},
	{ name: 'Economia'},
	{ name: 'Sociales'},
	{ name: 'Espectaculo'},
	{ name: 'Entretenimiento'}, 
	{ name: 'Ayuntamiento'},
	{ name: 'Clima'},
	{ name: 'Medio ambiente'}])

User.create([
	{name: "Lilia Arellano", password: "12345678la", password_confirmation: "12345678la", plaza_id: "1", email: "larellano@promovision.mx"},
	{name: "Eduardo Castillo", password: "12345678ec", password_confirmation: "12345678ec", plaza_id: "1", email: "ecastillo@promovision.mx"},
	{name: "Zuleika Caceres", password: "12345678zc", password_confirmation: "12345678zc", plaza_id: "1", email: "zcaceres@promovision.mx"},
	{name: "Patricia Vazquez", password: "12345678pv", password_confirmation: "12345678pv", plaza_id: "1", email: "pvazquez@promovision.mx"},
    {name: "Juan Carlos MeAdoza", password: "12345678jcm", password_confirmation: "12345678jcm", plaza_id: "1", email: "jmendoza@promovision.mx"},
    {name: "Alejandro Garcia", password: "12345678ag", password_confirmation: "12345678ag", plaza_id: "1", email: "achavez@promovision.mx"},
	{name: "Carlos Aguila", password: "12345678ca", password_confirmation: "12345678ca", plaza_id: "1", email: "caguila@promovision.mx"},
	{name: "Linda del Mar Garcia", password: "12345678lg", password_confirmation: "12345678lg", plaza_id: "1", email: "lgarcia@promovision.mx"},
    {name: "German Espiridion", password: "12345678ge", password_confirmation: "12345678ge", plaza_id: "1", email: "gespiridion@promovision.mx"},
    {name: "Javier Rodriguez", password: "12345678jr", password_confirmation: "12345678jr", plaza_id: "1", email: "jrodriguez@promovision.mx"},
	{name: "Ricardo Antonio Vallejo", password: "12345678rav", password_confirmation: "12345678rav", plaza_id: "1", email: "rvallejo@promovision.mx"},
	{name: "Victor Hugo Alvarez", password: "12345678va", password_confirmation: "12345678va", plaza_id: "1", email: "valvarez@promovision.mx"},
	{name: "Llesly Hernandez", password: "12345678lah", password_confirmation: "12345678lah", plaza_id: "1", email: "ahernandez@promovision.mx"},
	{name: "Azucena Vazquez", password: "12345678av", password_confirmation: "12345678av", plaza_id: "1", email: "avazquez@promovision.mx"},
	{name: "Vanessa Chi", password: "12345678vc", password_confirmation: "12345678vc", plaza_id: "1", email: "vchi@promovision.mx"},
	{name: "Sanai Xool", password: "12345678sx", password_confirmation: "12345678sx", plaza_id: "1", email: "sxool@promovision.mx"},
	{name: "Rafael Vega", password: "12345678rv", password_confirmation: "12345678rv", plaza_id: "3" , email: "rvega@promovision.mx"},
	{name: "Domitila Koh", password: "12345678dk", password_confirmation: "12345678dk", plaza_id: "3" , email: "dkoh@promovision.mx"},
	{name: "Georgina Bacelis", password: "12345678gb", password_confirmation: "12345678gb", plaza_id: "3" , email: "gbacelis@promovision.mx"},
	{name: "Liliana Hernandez", password: "12345678lh", password_confirmation: "12345678lh", plaza_id: "3" , email: "lhernandez@promovision.mx"},
	{name: "Adrian castillo", password: "12345678ac", password_confirmation: "12345678ac", plaza_id: "3" , email: "acastillo@promovision.mx"},
	{name: "Victor Uicab", password: "12345678vu", password_confirmation: "12345678vu", plaza_id: "3" , email: "vhuicab@promovision.mx"},
	{name: "Francisco Baeza", password: "12345678fb", password_confirmation: "12345678fb", plaza_id: "3" , email: "fbaeza@promovision.mx"},
	{name: "Claudia Martin", password: "12345678cm", password_confirmation: "12345678cm", plaza_id: "4" , email: "cmartin@promovision.mx"},
	{name: "Jimmy Palomo", password: "12345678jp", password_confirmation: "12345678jp", plaza_id: "4" , email: "jpalomo@promovision.mx"},
	{name: "Jose Ignacio Palma", password: "12345678jip", password_confirmation: "12345678jip", plaza_id: "4" , email: "jpalma@promovision.mx"},
	{name: "Paulina Gutierrez", password: "12345678pg", password_confirmation: "12345678pg", plaza_id: "4" , email: "pgutierrrez@promovision.mx"},
	{name: "Juan Juarez", password: "12345678jj", password_confirmation: "12345678jj", plaza_id: "4" , email: "jjuarez@promovision.mx"},
	{name: "Fatima Vazquez", password: "12345678fv", password_confirmation: "12345678fv", plaza_id: "4" , email: "fvazquez@promovision.mx"},
	{name: "Alberto Echazarreta", password: "12345678ae", password_confirmation: "12345678ae", plaza_id: "4" , email: "aechazarreta@promovision.mx"},
	{name: "Juan Pablo Hernandez", password: "12345678jh", password_confirmation: "12345678jh", plaza_id: "4" , email: "jhernandez@promovision.mx"},
    {name: "Hector Heredia", password: "12345678hh", password_confirmation: "12345678hh", plaza_id: "2" , email: "hheredia@promovision.mx"},
    {name: "Jorge Velazquez", password: "12345678jv", password_confirmation: "12345678jv", plaza_id: "2" , email: "jvelazquez@promovision.mx"},
    {name: "Jose Alfredo de la Rosa", password: "12345678jd", password_confirmation: "12345678jd", plaza_id: "2" , email: "jdelarosa@promovision.mx"},
    {name: "Jose M. Tinoco", password: "12345678jt", password_confirmation: "12345678jt", plaza_id: "2" , email: "jtinoco@promovision.mx"},
    {name: "Lourdes Mata", password: "12345678lm", password_confirmation: "12345678lm", plaza_id: "2" , email: "lmata@promovision.mx"},
    {name: "Luis Daniel Pacheco", password: "12345678lp", password_confirmation: "12345678lp", plaza_id: "2" , email: "lpacheco@promovision.mx"},
    {name: "Arnold Garcia", password: "12345678ag", password_confirmation: "12345678ag", plaza_id: "10" , email: "agarcia@promovision.mx"},
	{name: "Jesus Garcia", password: "12345678jg", password_confirmation: "12345678jg", plaza_id: "11" , email: "jgarcia@promovision.mx"},


    {name: "Felipe Reyes", password: "12345678fr", password_confirmation: "12345678fr", plaza_id: "9" , email: "freyes@promovision.mx"},



	{name: "Jorge Cupul", password: "12345678jc", password_confirmation: "12345678jc", plaza_id: "5" , email: "@promovision.mx"},
	{name: "Jorge Ku", password: "12345678jk", password_confirmation: "12345678jk", plaza_id: "5" , email: "@promovision.mx"},
	{name: "Landy Vera", password: "12345678lv", password_confirmation: "12345678lv", plaza_id: "5" , email: "@promovision.mx"},
	{name: "Fernando Miss", password: "12345678fm", password_confirmation: "12345678fm", plaza_id: "5" , email: "@promovision.mx"},
	{name: "Julio May", password: "12345678jm", password_confirmation: "12345678jm", plaza_id: "5" , email: "@promovision.mx"},
	{name: "William Euan", password: "12345678we", password_confirmation: "12345678we", plaza_id: "5" , email: "@promovision.mx"},
	{name: "Fidel Sabido", password: "12345678fs", password_confirmation: "12345678fs", plaza_id: "5" , email: "@promovision.mx"},
	{name: "Janire Uh", password: "12345678ju", password_confirmation: "12345678ju", plaza_id: "5" , email: "@promovision.mx"},
	{name: "Alfredo Solis", password: "12345678as", password_confirmation: "12345678as", plaza_id: "5" , email: "@promovision.mx"},
	{name: "Arturo Mezo", password: "12345678am", password_confirmation: "12345678am", plaza_id: "5" , email: "@promovision.mx"},
	{name: "Scarlet Gonzalez", password: "12345678ag", password_confirmation: "12345678ag", plaza_id: "5" , email: "@promovision.mx"},

	{name: "Francisco Javier Canul", password: "12345678fc", password_confirmation: "12345678fc", plaza_id: "6" , email: "@promovision.mx"},
	{name: "Roger Mora", password: "12345678rm", password_confirmation: "12345678rm", plaza_id: "6" , email: "@promovision.mx"},

	{name: "Juan Ojeda", password: "12345678jo", password_confirmation: "12345678jo", plaza_id: "7" , email: "@promovision.mx"}
	])

	

mike = User.create(name: "miguel huerta", email:"mhuerta@promovision.mx", password: "linux3963", password_confirmation: "linux3963")
yaz = User.create(name: "Yazmin Vazquez",email:"yvazquez@promovision.mx", password: "12345678", password_confirmation: "12345678")
angel = User.create(name: "Angel Xool", email:"axool@promovision.mx", password: "9982145900", password_confirmation: "9982145900")

Message.create([{title: "TEASER"},{title:"ENTRADA"},{title:"COMERCIAL"},{title: "DESPEDIDA"},{title: "INVITADO"}])
mike.add_role :root
yaz.add_role :root
angel.add_role :root


