
##########################  RESET  DATABASE  ###############

# This is to truncate previous records. => RESET ALL DATA
class ActiveRecord::Base
  def self.truncate!
    connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE;")
  end
end

# Not allowed in production for obvious reasons.
# if Rails.env.in?(%(production)) && !ENV['FORCE']
#   STDERR.write "That's a terrible idea, all your records will be lost!!!\n"
#   exit
# end

# We truncate the records so to regenerate the seed.
# Each time we seed all the items are lost and recreated.
[Item, Plant].map(&:truncate!)

##########################Department Seed###############

# Paris = Department.new({
#   number: 75,
#   temperature_max: 26,
#   temperature_min: 2,
#   pluviometry: 635,
#   sunshine_amount: 1662
#   })
# Paris.save

# Lille = Department.new({
#   number: 59,
#   temperature_max: 23,
#   temperature_min: 1,
#   pluviometry: 635,
#   sunshine_amount: 1662
#   })
# Lille.save


# ##########################   USER  Seed     ###############

# user1 = User.new(
# email: "jojo@gmail.com",
# first_name: "Jojo",
# last_name: "La fouine",
# password: "123456",
# password_confirmation: "123456"
# )
# user1.admin = true
# user1.save!

# user2 = User.new(
# email: "Reneda@gmail.com",
# first_name: "Rene",
# last_name: "La Taupe",
# password: "123456",
# password_confirmation: "123456"
# )
# user2.save!

# user3 = User.new(
# email: "Roger@gmail.com",
# first_name: "Roger",
# last_name: "Rabbit",
# password: "123456",
# password_confirmation: "123456"
# )
# user3.save!

# user4 = User.new(
# email: "tintin@gmail.com",
# first_name: "Tintin",
# last_name: "Herge",
# password: "123456",
# password_confirmation: "123456"
# )
# user4.save!

# user5 = User.new(
# email: "Jack@gmail.com",
# first_name: "Jack",
# last_name: "Houille",
# password: "123456",
# password_confirmation: "123456"
# )
# user5.save!

# user6 = User.new(
# email: "billyj@gmail.com",
# first_name: "Billy",
# last_name: "Jean",
# password: "123456",
# password_confirmation: "123456"
# )
# user6.save!

# user7 = User.new(
# email: "Johnsmith@gmail.com",
# first_name: "John",
# last_name: "Smith",
# password: "123456",
# password_confirmation: "123456"
# )
# user7.save!

# user8 = User.new(
# email: "mickey@gmail.com",
# first_name: "Mickey",
# last_name: "Oneil",
# password: "123456",
# password_confirmation: "123456"
# )
# user8.save!


# user9 = User.new(
# email: "Arlette@gmail.com",
# first_name: "Arlette",
# last_name: "La Belette",
# password: "123456",
# password_confirmation: "123456"
# )
# user9.save!

# ##########################   Balcony  SEED    ###############

# balcony1 = Balcony.new(
# name: "Jojo's balcony",
# model: 'small',
# address: '12 rue des tours, 59800, Lille',
# city: 'Croix',
# department: 59800,
# length: 100,
# width: 30,
# orientation: 'south',
# user_id: user1.id,
# storey: 4,
# house_type: "house"
# )
# balcony1.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1465992527/balcony22_bl1bva.jpg'
# balcony1.save

# balcony2 = Balcony.new(
# name: "Rene's balcony",
# model: 'small',
# # 'small', 'medium', 'large'
# address: '22 rue jonquoy, 75014, Paris',
# city: 'Paris',
# department: 75014,
# length: 200,
# width: 60,
# orientation: 'North',
# user_id: user2.id,
# storey: 4,
# house_type: "flat"
# )
# balcony2.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1465992526/balcony15_v1qywc.jpg'
# balcony2.save

# balcony3 = Balcony.new(
# name: "Roger's balcony",
# model: 'small',
# # 'small', 'medium', 'large'
# address: '9 rue Charles François Dupuis, 75003 Paris',
# city: 'Paris',
# department: 75003,
# length: 400,
# width: 600,
# orientation: 'West',
# user_id: user3.id,
# storey: 6,
# house_type: "flat"
# )
# balcony3.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1465992527/balcony24_tbummp.jpg'
# balcony3.save


# balcony4 = Balcony.new(
# name: "Tintin's balcony",
# model: 'medium',
# address: '4 boulevard Léon Bureau, 44200, Nantes',
# city: 'Nantes',
# department: 44200,
# length: 100,
# width: 30,
# orientation: 'south',
# user_id: user4.id,
# storey: 4,
# house_type: "house"
# )
# balcony4.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466423844/balcony3_pj0luf.jpg'
# balcony4.save


# balcony5 = Balcony.new(
# name: "Jack's balcony",
# model: 'medium',
# # 'small', 'medium', 'large'
# address: '7 rue des paradoux, 31000, Toulouse',
# city: 'Toulouse',
# department: 31000,
# length: 200,
# width: 60,
# orientation: 'North',
# user_id: user5.id,
# storey: 4,
# house_type: "flat"
# )
# balcony5.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466423825/balcony5_bum7jj.jpg'
# balcony5.save

# balcony6 = Balcony.new(
# name: "Billy's balcony",
# model: 'medium',
# # 'small', 'medium', 'large'
# address: '27 rue du vieil hôpital, 67000, Strasbourg',
# city: 'Strasbourg',
# department: 67000,
# length: 400,
# width: 600,
# orientation: 'West',
# user_id: user6.id,
# storey: 6,
# house_type: "flat"
# )
# balcony6.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466423743/balcony9_ltxtwg.jpg'
# balcony6.save


# balcony7 = Balcony.new(
# name: "John Smith's balcony",
# model: 'large',
# address: '26 rue des tanneurs, 35700, Rennes',
# city: 'Rennes',
# department: 35700,
# length: 100,
# width: 30,
# orientation: 'south',
# user_id: user7.id,
# storey: 4,
# house_type: "house"
# )
# balcony7.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466426784/balcony14_xdcgij.jpg'
# balcony7.save

# balcony8 = Balcony.new(
# name: "Mickael Oneil's balcony",
# model: 'large',
# # 'small', 'medium', 'large'
# address: '92 avenue About, 59240, Dunkerque',
# city: 'Dunkerque',
# department: 59240,
# length: 200,
# width: 60,
# orientation: 'North',
# user_id: user8.id,
# storey: 4,
# house_type: "flat"
# )
# balcony8.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466427755/balcon24_yvcbsd.jpg'
# balcony8.save

# balcony9 = Balcony.new(
# name: "Arlette's balcony",
# model: 'large',
# # 'small', 'medium', 'large'
# address: '95 rue Garibaldi, 69006 Lyon',
# city: 'Lyon',
# department: 69006,
# length: 400,
# width: 600,
# orientation: 'East',
# user_id: user9.id,
# storey: 6,
# house_type: "flat"
# )
# balcony9.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466427756/balcony2_acgh8v.jpg'
# balcony9.save

# balcony10 = Balcony.new(
# name: "Arlette's balcony",
# model: 'small',
# # 'small', 'medium', 'large'
# address: '4 rue Marcel Proust, 45000 Orléans',
# city: 'Orléans',
# department: 45000,
# length: 400,
# width: 600,
# orientation: 'East',
# user_id: user9.id,
# storey: 6,
# house_type: "flat"
# )
# balcony10.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466611886/small_balcony3_ct9f7j.jpg'
# balcony10.save

# balcony11 = Balcony.new(
# name: "Arlette's balcony",
# model: 'small',
# # 'small', 'medium', 'large'
# address: '22 rue Buirette, 51100 Reims',
# city: 'Reims',
# department: 51100,
# length: 400,
# width: 600,
# orientation: 'East',
# user_id: user9.id,
# storey: 6,
# house_type: "flat"
# )
# balcony11.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466611886/balcony_small2_hxahqg.jpg'
# balcony11.save

# balcony12 = Balcony.new(
# name: "Arlette's balcony",
# model: 'small',
# # 'small', 'medium', 'large'
# address: '120 rue Foch, 34000 Montpellier',
# city: 'Montpellier',
# department: 34000,
# length: 400,
# width: 600,
# orientation: 'East',
# user_id: user9.id,
# storey: 6,
# house_type: "flat"
# )
# balcony12.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466611886/balcon_small1_vrt8vn.jpg'
# balcony12.save

# balcony13 = Balcony.new(
# name: "Jack's balcony",
# model: 'medium',
# # 'small', 'medium', 'large'
# address: '13 rue Faventines, 26000, Valence',
# city: 'Valence',
# department: 26000,
# length: 200,
# width: 60,
# orientation: 'North',
# user_id: user5.id,
# storey: 4,
# house_type: "flat"
# )
# balcony13.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466611879/balcony_medium2_f27acw.jpg'
# balcony13.save

# balcony14 = Balcony.new(
# name: "Jack's balcony",
# model: 'medium',
# # 'small', 'medium', 'large'
# address: '61 Rue du Porteau, 86000, Poitiers',
# city: 'Poitiers',
# department: 86000,
# length: 200,
# width: 60,
# orientation: 'North',
# user_id: user5.id,
# storey: 4,
# house_type: "flat"
# )
# balcony14.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466611878/balcony_medium1_vnfszu.jpg'
# balcony14.save

# balcony15 = Balcony.new(
# name: "Jack's balcony",
# model: 'medium',
# # 'small', 'medium', 'large'
# address: '54 Rue de Pessac, 33000, Bordeaux',
# city: 'Bordeaux',
# department: 33000,
# length: 200,
# width: 60,
# orientation: 'North',
# user_id: user5.id,
# storey: 4,
# house_type: "flat"
# )
# balcony15.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466611879/balcony_medium3_bq7xbu.jpg'
# balcony15.save

##########################   Balcony_picture  SEED    ###############

# http://res.cloudinary.com/dun7rljns/image/upload/v1465992526/balcony14_hsa5uw.jpg
#
# http://res.cloudinary.com/dun7rljns/image/upload/v1465992525/balcony9_gbvml7.jpg
#
# http://res.cloudinary.com/dun7rljns/image/upload/v1465992524/balcony6_nterxt.jpg
#
# http://res.cloudinary.com/dun7rljns/image/upload/v1465992525/balcony7_ufw4ye.jpg
#
# http://res.cloudinary.com/dun7rljns/image/upload/v1465992525/balcony8_pgnh7j.jpg


##########################   Item  SEED    ###############

category = 'De Profiter'
sub_category = 'Chaise'

urls = []

urls << "https://www.leroymerlin.fr/v3/p/produits/chaise-de-jardin-en-polycarbonate-paris-lux-transparent-e122696"
urls << "https://www.leroymerlin.fr/v3/p/produits/chaise-de-jardin-en-resine-paris-greenpol-blanc-e1400051216"
urls << "https://www.delamaison.fr/chaise-jardin-pliante-acier-hendaia-p-192224.html"
urls << 'https://www.delamaison.fr/chaise-jardin-pliante-grise-p-192210.html#p=159136'
urls << "https://www.leroymerlin.fr/v3/p/produits/lot-de-2-chaises-de-jardin-en-bois-porto-porto-e1400903432"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'Table'

urls = []

urls << "https://www.leroymerlin.fr/v3/p/produits/table-de-jardin-naterial-flore-ronde-gris-2-personnes-e157735#&xtmc=table_jardin&xtcr=3"
urls << "https://www.leroymerlin.fr/v3/p/produits/table-de-jardin-flore-ronde-blanc-4-personnes-e157749#&xtmc=table_jardin&xtcr=4"
urls << "https://www.leroymerlin.fr/v3/p/produits/table-de-jardin-fermob-bistro-carree-gris-orage-2-personnes-e1400704302#&xtmc=table_jardin&xtcr=12"
urls << "https://www.delamaison.fr/table-balcon-pliante-60x53cm-p-124037.html#p=192213"
urls << "https://www.delamaison.fr/table-jardin-pliante-acacia-gris-70x70-silverwood-p-218975.html"
urls << "https://www.delamaison.fr/table-jardin-carree-pliante-acier-60x60cm-p-90544.html#p=159137"
urls << "https://www.delamaison.fr/table-balcon-pliante-rabattable-acier-hauteur-115cm-bistro-p-166924.html"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'Table basse'

urls = []

urls << "https://www.delamaison.fr/table-basse-empilable-alize-d48cm-p-22008.html#p=22003"
urls << "https://www.tikamoon.com/art-table-basse-ronde-en-marbre-et-metal-2001.html"
urls << "https://www.leroymerlin.fr/v3/p/produits/table-de-jardin-basse-mabrista-ronde-ecru-2-personnes-e1500514721#&xtmc=table_basse_jardin&xtcr=2"
urls << "https://www.leroymerlin.fr/v3/p/produits/table-de-jardin-basse-kent-carree-naturel-2-personnes-e1500488104#&xtmc=table_basse_jardin&xtcr=7"
urls << "https://www.leroymerlin.fr/v3/p/produits/table-de-jardin-basse-newgarden-capri-ronde-blanc-4-personnes-e1401433828#&xtmc=table_basse_jardin&xtcr=8"
urls << "https://www.leroymerlin.fr/v3/p/produits/table-de-jardin-basse-naterial-portofino-rectangulaire-gris-2-personnes-e1500514731#&xtmc=table_basse_jardin&xtcr=12"
urls << "https://www.leroymerlin.fr/v3/p/produits/table-basse-grosfillex-miami-carree-blanc-2-personnes-e1400020920#&xtmc=table_basse_jardin&xtcr=46"
urls << "https://www.leroymerlin.fr/v3/p/produits/table-basse-grosfillex-miami-carree-anthracite-2-personnes-e1400020921#&xtmc=table_basse_jardin&xtcr=47"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'fauteuil & canapé'

urls = []

urls << "https://www.delamaison.fr/fauteuils-jardin-empilables-aluminium-textilene-modena-p-104311.html"
urls << "https://www.leroymerlin.fr/v3/p/produits/salon-bas-de-jardin-acacia-bois-marron-1-table-1-banc-2-chaises-e1401421336#&xtmc=table_basse_jardin&xtcr=2"
urls << "https://www.leroymerlin.fr/v3/p/produits/salon-bas-de-jardin-portovecchio-resine-tressee-gris-2-fauteuils-1-table-basse-e1401421319#&xtmc=table_basse_jardin&xtcr=5"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'Coussin'

urls = []

urls << "https://www.leroymerlin.fr/v3/p/produits/coussin-de-bain-de-soleil-gris-zingue-lola-e1401437288"
urls << "https://www.leroymerlin.fr/v3/p/produits/coussin-d-assise-de-chaise-ou-de-fauteuil-gris-zingue-lola-e1401437277"
urls << "https://www.leroymerlin.fr/v3/p/produits/coussin-de-sol-gris-zingue-lola-e1400127016"
urls << "https://www.leroymerlin.fr/v3/p/produits/coussin-d-assise-de-chaise-ou-de-fauteuil-gris-dore-pour-salon-e1500572346"
urls << "https://www.leroymerlin.fr/v3/p/produits/coussin-d-assise-de-chaise-ou-de-fauteuil-muscade-bistro-e158334"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'fatboy'

urls = []

urls << "https://www.ambientedirect.com/fr/fatboy/fatboy-lamzac-the-original-outdoor-sofa_pid_688_1256955.html?adgt_source=gmc&adgt_medium=product&adgt_campaign=fr&adgt_content=193078&src=gmc&lan=fr&shop_country=fr&art=193078&gclid=CLbl0dLy7tICFYYcGwodHZ0FfA&aff=gmc"
urls << "https://www.bigberthaoriginal.fr/products/lime-green-big-bertha-nylon-bean-bag?utm_medium=cpc&utm_source=googlepla&variant=707556855&gclid=CLv3oufy7tICFTYz0wod8BYBBw"
urls << "https://www.leroymerlin.fr/v3/p/produits/pouf-de-sol-gris-lounge-e1400794760"
urls << "https://www.leroymerlin.fr/v3/p/produits/pouf-de-jardin-en-tissu-berlingot-blanc-e1400273381"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'chaise longue'

urls = []

urls << "https://www.leroymerlin.fr/v3/p/produits/bain-de-soleil-de-jardin-en-bois-porto-brun-e126243"
urls << "https://www.leroymerlin.fr/v3/p/produits/bain-de-soleil-de-jardin-en-acier-transabed-acier-e159134#&xtmc=chaise_longue&xtcr=7"
urls << "https://www.leroymerlin.fr/v3/p/produits/transat-de-jardin-en-acier-maxi-transat-graphite-e1500487926#&xtmc=transat&xtcr=1"
urls << "https://www.leroymerlin.fr/v3/p/produits/transat-de-jardin-en-acier-maxi-transat-potiron-e1400904060#&xtmc=transat&xtcr=2"
urls << "https://www.leroymerlin.fr/v3/p/produits/transat-de-jardin-en-acier-maxi-transat-bleu-arctic-e1500487922#&xtmc=transat&xtcr=4"
urls << "https://www.leroymerlin.fr/v3/p/produits/chilienne-de-jardin-en-tissu-lola-gris-dore-e1401431390#&xtmc=transat&xtcr=6"
urls << "https://www.leroymerlin.fr/v3/p/produits/chilienne-de-jardin-en-tissu-lola-blanc-ivoire-e1401431405#&xtmc=transat&xtcr=8"
urls << "https://www.leroymerlin.fr/v3/p/produits/chilienne-de-jardin-en-tissu-editeur-sable-e1401431417#&xtmc=transat&xtcr=35"
urls << "https://www.leroymerlin.fr/v3/p/produits/toile-de-transat-amovible-en-tissu-toile-de-rechange-maxi-transat-seigle-e1500620042#&xtmc=transat&xtcr=48"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'Table + chaise'

urls = []

urls << "https://www.leroymerlin.fr/v3/p/produits/salon-de-jardin-acacia-bois-marron-1-table-et-2-chaises-e1401421472"
urls << "https://www.delamaison.fr/salon-pour-balcon-places-table-60x53m-chaises-p-136672.html#p=192221"

category = 'De Ranger'
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'Coffre'

urls = []

urls << "https://www.delamaison.fr/coffre-rangement-aluminium-resine-tressee-avec-roulettes-435l-atlas-p-210871.html"
urls << "https://www.leroymerlin.fr/v3/p/produits/coffre-de-jardin-resine-flint-gris-anthracite-l-117-5-x-h-57-x-p-45-cm-e1400035076#&xtmc=coffre_exterieur&xtcr=1"
urls << "https://www.leroymerlin.fr/v3/p/produits/coffre-de-jardin-resine-circa-rattan-gris-anthracite-l-68-x-h-42-x-p-68-cm-e1401421709#&xtmc=coffre_exterieur&xtcr=21"
urls << "https://www.leroymerlin.fr/v3/p/produits/coffre-de-jardin-resine-eden-garden-bench-gris-noir-l-140-x-h-84-x-p-60-cm-e1401421708#&xtmc=coffre_exterieur&xtcr=22"
urls << "https://www.delamaison.fr/table-jardin-120x70cm-cante-p-200252.html"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'Seche linge exterieur'

urls = []

urls << "https://www.delamaison.fr/sechoir-linge-etendoir-interieurexterieur-pliable-ailes-laterales-niveaux-homcom-p-211916.html"
urls << "https://www.leroymerlin.fr/v3/p/produits/etendoir-radiateur-blanc-gris-azur-e1401371375#&xtmc=tancarville&xtcr=15"
urls << "https://www.leroymerlin.fr/v3/p/produits/etendoir-radiateur-blanc-bleu-azur-e1401371363#&xtmc=tancarville&xtcr=18"
urls << "https://www.leroymerlin.fr/v3/p/produits/etendoir-tour-blanc-bleu-ulyss-e1401371381#&xtmc=tancarville&xtcr=1"
urls << "https://www.leroymerlin.fr/v3/p/produits/etendoir-tour-blanc-bleu-azur-e1401371371#&xtmc=tancarville&xtcr=6"
"http://www.autourdulinge.fr/?fond=produit&ref=130081&id_rubrique=79"


category = 'De Recevoir'
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'Verres'

urls = []

urls << "https://www.alicedelice.com/verre-a-cocktail/mug-a-orangeade-en-verre-450-ml-1016594.html"
urls << "https://www.alicedelice.com/verre-a-cocktail/mug-a-orangeade-450-ml-1017206.html"
urls << "https://www.alicedelice.com/verre-a-vin/set-6-verres-vin-rouge-open-up-pro-tasting-1018215.html"
urls << "https://www.alicedelice.com/verre-a-vin/set-6-verres-vin-blanc-open-up-pro-tasting-37cl-1018226.html"
urls << "https://www.alicedelice.com/verre-a-eau/set-6-gobelets-en-verre-picardie-16cl--1017324.html"
urls << "https://www.alicedelice.com/flute-a-champagne/set-6-flutes-a-champagne-1018213.html"
urls << "https://www.alicedelice.com/assiettes/1-assiette-a-risotto-1010928.html"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'Assiettes'

urls = []

urls << "https://www.alicedelice.com/assiettes/1-assiette-a-risotto-1010928.html"
urls << "https://www.alicedelice.com/assiettes/8-assiettes-pirate-1017016.html"
urls << "https://www.alicedelice.com/assiettes/8-assiettes-princesse-1017017.html"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'Apéritif'

urls = []

urls << "https://www.alicedelice.com/pic-aperitif/250-piques-aperitif-1011966.html"
urls << "https://www.alicedelice.com/coffret-aperitif/coffret-aperitif-dinatoire-19-pieces-1010924.html"
urls << "https://www.alicedelice.com/coffret-cocktail/coffret-mojito-addict-3-melanges-1011428.html"
urls << "https://www.alicedelice.com/assiette-ardoise/coffret-6-assiettes-ardoises-21-x-13-1010984.html"
urls << "https://www.alicedelice.com/accessoires-cocktails/shaker-a-cocktail-inox-1012269.html"


category = 'De Cuisiner'
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'barbecue'

urls = []

urls << "https://www.leroymerlin.fr/v3/p/produits/barbecue-electrique-weber-weber-q-1400-stand-e1400767856#&xtmc=barbecue&xtcr=3"
urls << "https://www.leroymerlin.fr/v3/p/produits/barbecue-au-gaz-weber-spirit-e0-210-noir-e1401400700#&xtmc=barbecue&xtcr=5"
urls << "https://www.leroymerlin.fr/v3/p/produits/barbecue-au-gaz-weber-q2000-titanium-e1400767819#&xtmc=barbecue&xtcr=11"
urls << "https://www.leroymerlin.fr/v3/p/produits/barbecue-electrique-weber-weber-q-2400-e1400077450#&xtmc=barbecue&xtcr=34"
urls << "https://www.leroymerlin.fr/v3/p/produits/barbecue-electrique-paname-gris-e1400077426#&xtmc=barbecue&xtcr=46"
urls << "https://www.delamaison.fr/barbecue-charbon-nomade-longueur-44cm-anywhere-p-205766.html"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'Plancha'

urls = []

urls << "https://www.alicedelice.com/cuisson/plancha-electrique-1014864.html"
urls << "https://www.alicedelice.com/plancha/plancha-prestige-600-1014866.html"
urls << "https://www.alicedelice.com/plancha/chariot-pour-plancha-prestige-600-1014868.html"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'Accessoire barbecue'

urls = []

urls << "https://www.leroymerlin.fr/v3/p/produits/set-d-accessoires-de-cuisson-weber-e148940"
urls << "https://www.leroymerlin.fr/v3/p/produits/housse-de-protection-pour-barbecue-weber-l-65-5-x-l-132-x-h-108-7-cm-e1401427264"
urls << "https://www.leroymerlin.fr/v3/p/produits/brosse-weber-e166863"
urls << "https://www.leroymerlin.fr/v3/p/produits/brosse-bois-weber-e33510"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'Pierrade'

urls = []

urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'Accessoire Cuisine'

urls = []

urls << "https://www.alicedelice.com/1124-preparer-decouper"

category = 'De Cultiver'
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'pots'

urls = []

urls << "https://www.leroymerlin.fr/v3/p/produits/pot-polypropylene-eda-l-39-x-l-39-x-h-65-cm-gris-anthracite-e156822"
urls << "https://www.leroymerlin.fr/v3/p/produits/pot-polypropylene-eda-diam-80-x-h-67-cm-gris-anthracite-e156995"
urls << "https://www.leroymerlin.fr/v3/p/produits/pot-polypropylene-eda-diam-80-x-h-67-cm-rouge-rubis-e1401628808"
urls << "https://www.leroymerlin.fr/v3/p/produits/pot-polypropylene-naterial-diam-39-62-l-39-62-x-l-39-62-x-h-33-45-cm-anthracite-e1400066070"
urls << "https://www.leroymerlin.fr/v3/p/produits/pot-polypropylene-eda-diam-80-x-h-67-cm-prune-e1400773036"
urls << "https://www.leroymerlin.fr/v3/p/produits/pot-polypropylene-naterial-diam-22-04-l-22-04-x-l-22-04-x-h-18-61-cm-anthracite-e1400066092"
urls << "https://www.leroymerlin.fr/v3/p/produits/pot-polyethylene-naterial-diam-39-l-39-x-l-39-x-h-74-cm-noir-e1400066114"
urls << "https://www.leroymerlin.fr/v3/p/produits/pot-polypropylene-naterial-diam-29-79-l-29-79-x-l-29-79-x-h-25-15-cm-terre-cuite-e1400066069"
urls << "https://www.leroymerlin.fr/v3/p/produits/pot-terre-cuite-deroma-diam-35-7-x-h-29-5-cm-terre-cuite-rouge-e138756"
urls << "https://www.leroymerlin.fr/v3/p/produits/pot-fibre-l-35-x-l-35-x-h-51-cm-gris-clair-e48505"
urls << "https://www.leroymerlin.fr/v3/p/produits/pot-terre-cuite-deroma-diam-9-x-h-8-5-cm-terre-cuite-rouge-e138754"
urls << "https://www.lightonline.fr/guirlande-et-objet-lumineux/3266/slide-il-vaso-pot-lumineux-exterieur-h75cm"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'graines'

urls = []

urls << "https://www.leroymerlin.fr/v3/p/produits/ciboulette-civette-vilmorin-1-5-g-e149220"
urls << "https://www.leroymerlin.fr/v3/p/produits/basilic-grand-vert-vilmorin-2-g-e149120"
urls << "https://www.leroymerlin.fr/v3/p/produits/radis-de-18-jours-vilmorin-10-g-e149382"
urls << "https://www.leroymerlin.fr/v3/p/produits/tomate-coeur-de-boeuf-vilmorin-0-2-g-e149160"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'potager'

urls = []

urls << "https://www.leroymerlin.fr/v3/p/produits/potager-sur-pieds-gariguette-naturel-l-120-x-l-57-x-h-20-cm-e1400989076?queryredirect=a_fp_potager_sur_pieds_gariguette_naturel_l_120_x_l_57_x_h_20_cm&numpage=1"
urls << "https://www.leroymerlin.fr/v3/p/produits/potager-sur-pieds-eda-plastiques-gris-l-76-x-l-38-5-x-h-68-cm-e1500270358?queryredirect=a_fp_potager_sur_pieds_eda_plastiques_gris_l_76_x_l_38_5_x_h_68_cm&numpage=1"
urls << "https://www.leroymerlin.fr/v3/p/produits/potager-sur-pieds-eda-plastiques-vert-l-76-x-l-38-5-x-h-68-cm-e1500270360?queryredirect=a_fp_potager_sur_pieds_eda_plastiques_vert_l_76_x_l_38_5_x_h_68_cm&numpage=1"
urls << "https://www.leroymerlin.fr/v3/p/produits/carre-potager-forest-avenue-noisetier-naturel-l-90-x-l-90-x-h-35-cm-e87682#&xtmc=carre_potager&xtcr=13"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'terreau'

urls = []

urls << "https://www.leroymerlin.fr/v3/p/produits/terreau-balcons-et-terrasse-or-brun-20-l-e1400992545"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'accessoire jardinage'

urls = []

urls << "https://www.leroymerlin.fr/v3/p/produits/transplantoir-inox-geolia-ergo-e1400603218"
urls << "https://www.leroymerlin.fr/v3/p/produits/lot-petits-outils-acier-e1400888290"
urls << "https://www.leroymerlin.fr/v3/p/produits/lot-petits-outils-acier-outils-wolf-bt51-e166912"
urls << "https://www.leroymerlin.fr/v3/p/produits/pelle-a-terreau-inox-geolia-ergo-e1400603212"
urls << "https://www.leroymerlin.fr/v3/p/produits/plantoir-a-bulbes-acier-gardena-3412-20-e165409"
urls << "https://www.leroymerlin.fr/v3/p/produits/binette-acier-geolia-nature-e1400459347"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'équipements (tablier gant etc..)'

urls = []

urls << "https://www.leroymerlin.fr/v3/p/produits/tablier-cordeline-tradex-vert-taille-unique-e1401571173"
urls << "https://www.leroymerlin.fr/v3/p/produits/tablier-cordeline-tradex-chocolat-taille-unique-e1401571174"
urls << "https://www.leroymerlin.fr/v3/p/produits/tablier-cordeline-tradex-fushia-taille-unique-e1401571172"
urls << "https://www.leroymerlin.fr/v3/p/produits/tablier-cordeline-tradex-taupe-taille-unique-e1401571169"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'composte'

urls = []

urls << "https://www.leroymerlin.fr/v3/p/produits/composteur-monobloc-250-l-e136814#&xtmc=composteur&xtcr=7"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'lecture'

urls = []

urls << "https://www.leroymerlin.fr/v3/p/produits/un-potager-sur-mon-balcon-larousse-e155388#&xtmc=balcon&xtcr=17"
urls << "https://www.leroymerlin.fr/v3/p/produits/un-potager-dans-un-mini-jardin-sur-un-balcon-ou-un-appui-de-fenetre-marabout-e155323#&xtmc=balcon&xtcr=20"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'serre'

urls = []

urls << "https://www.leroymerlin.fr/v3/p/produits/serre-de-balcon-nortene-l-31-x-p-19-x-h-105-cm-e38966#&xtmc=balcon&xtcr=29"

category = 'De Me Proteger'
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'Parasol'

urls = []

urls << "https://www.leroymerlin.fr/v3/p/produits/parasol-balcon-leo-rose-rectangulaire-l-300-x-l-150-cm-e1400703077#&xtmc=balcon&xtcr=1"
urls << "https://www.leroymerlin.fr/v3/p/produits/parasol-balcon-leo-taupe-rectangulaire-l-300-x-l-150-cm-e1400027447#&xtmc=balcon&xtcr=22"
urls << "https://www.leroymerlin.fr/v3/p/produits/parasol-balcon-leo-gris-rectangulaire-l-300-x-l-150-cm-e1400027449#&xtmc=balcon&xtcr=23"
urls << "https://www.leroymerlin.fr/v3/p/produits/parasol-balcon-leo-vert-anis-rectangulaire-l-300-x-l-150-cm-e1400027446#&xtmc=balcon&xtcr=24"
urls << "https://www.leroymerlin.fr/v3/p/produits/parasol-balcon-leo-ecru-rectangulaire-l-300-x-l-150-cm-e1400027450#&xtmc=balcon&xtcr=25"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'Panneau occultant'

urls = []

urls << "https://www.leroymerlin.fr/v3/p/produits/terrasse-jardin/grillage-canisse-panneau-cloture-et-palissade/panneau-occultant-barriere-et-palissade-bois-composite-l1308217606#"
urls << "https://www.leroymerlin.fr/v3/p/produits/panneau-treillis-bois-ajoure-selva-l-180-cm-x-h-180-cm-gris-e1400236923"
urls << "https://www.leroymerlin.fr/v3/p/produits/panneau-bois-ajoure-l-78-cm-x-h-150-cm-marron-e1400793912"
urls << "https://www.leroymerlin.fr/v3/p/produits/treillage-fixe-droite-n10703-l-60-x-h-120-x-p-0-6-cm-e1401630379"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'Store Occultant'

urls = []

urls << "https://www.leroymerlin.fr/v3/p/produits/store-de-balcon-manuel-balcony-artens-semi-coffre-l-0-9-m-x-avancee-3-m-e56965#&xtmc=balcon&xtcr=7"

category = "De m'éclairer PE"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'Spot'

urls = []

urls << "https://www.lightonline.fr/luminaire-exterieur/7530/brilliant-chorus-applique-exterieur-inox-h36cm"
urls << "https://www.leroymerlin.fr/v3/p/produits/applique-descendante-exterieure-riga-e27-60-w-galvanise-inspire-e102325"
urls << "https://www.leroymerlin.fr/v3/p/produits/applique-descendante-exterieure-pando-led-integree-11w-900lm-anthracite-inspire-e1400887482"
urls << "https://www.leroymerlin.fr/v3/p/produits/applique-exterieure-belem-gu10-35-w-acier-inspire-e102332"
urls << "https://www.leroymerlin.fr/v3/p/produits/demi-applique-exterieure-montreal-e27-40-w-inox-inspire-e156526"
urls << "https://www.leroymerlin.fr/v3/p/produits/applique-exterieure-malambo-led-integree-50-w-630-lm-gris-inspire-e1400887476"
urls << "https://www.leroymerlin.fr/v3/p/produits/applique-descendante-exterieure-neiva-gu10-35-w-blanc-inspire-e1400887625"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'Lumiere design blanche sur batterie'

urls = []

urls << "https://www.delamaison.fr/lampadaire-lumineux-decoratif-exterieur-lola-p-133499.html"
urls << "https://www.lightonline.fr/luminaire-exterieur/18777/fermob-balad-lampe-nomade-led-exterieur-muscade-h25cm"
urls << "https://www.delamaison.fr/boule-lumineuse-exterieure-polyethylene-blanc-buly-p-180801.html"
urls << "https://www.lightonline.fr/luminaire-exterieur/19905/fatboy-bolleke-suspension-led-rechargeable-exterieur-rouge-%C3%9820cm"
urls << "https://www.lightonline.fr/luminaire-exterieur/16177/best-season-lantern-lanterne-exterieur-metal-blanc-bougie-led-h32cm"
urls << "https://www.leroymerlin.fr/v3/p/produits/lampadaire-exterieur-lola-165-cm-e27-25-w-880-lm-blanc-newgarden-e1400699138#&xtmc=luminaire_exterieure&xtcr=1"
urls << "https://www.leroymerlin.fr/v3/p/produits/lampe-de-table-exterieure-lola-45-cm-e27-25-w-880-lm-blanc-newgarden-e1400699131"
urls << "https://www.leroymerlin.fr/v3/p/produits/boule-decorative-exterieure-buly-40-cm-e27-25-w-880-lm-blanc-newgarden-e1400699141"

category = 'De Refaire mon sol'
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'Moquette herbe'

urls = []

urls << "https://www.leroymerlin.fr/v3/p/produits/gazon-artificiel-gazon-artif-softy-2m-x-4ml-au-rouleau-2-x-4-m-e1500536302"
urls << "https://www.leroymerlin.fr/v3/p/produits/gazon-artificiel-oraverde-au-rouleau-1-x-5-m-e1400094597"
urls << "https://www.leroymerlin.fr/v3/p/produits/dalle-clipsable-gazon-synthetique-vert-l-30-x-l-30-cm-x-ep-30-mm-e165680"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'Caillebotis'

urls = []

urls << "https://www.leroymerlin.fr/v3/p/produits/dalle-bois-hevea-l-50-x-l-50-cm-x-ep-40-mm-e1401292981"
urls << "https://www.leroymerlin.fr/v3/p/produits/dalle-bois-bankirai-l-50-x-l-50-cm-x-ep-24-mm-e1401132185"
urls << "https://www.leroymerlin.fr/v3/p/produits/lot-de-4-dalles-clipsables-bois-snap-amp-go-marron-naturel-l-30-x-l-30-cm-x-ep-e1400797929"
urls << "https://www.leroymerlin.fr/v3/p/produits/dalle-bois-hevea-l-100-x-l-100-cm-x-ep-40-mm-e1500280938"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end
sub_category = 'Terrasse teck'

urls = []

urls << "https://www.leroymerlin.fr/v3/p/produits/planche-composite-grafik-2-noir-anthracite-l-400-x-l-18-6-cm-x-ep-26-mm-e1401291591"
urls.each do |url|
  if url.split('.')[1] == 'leroymerlin'
    item = Item.new(Services::Scrapper.scrap(url))
    item.category = category
    item.sub_category = sub_category
    item.save!
  end
end

# category:  ,
# # deco pot plant
# sub_category: ,
# # deco => furniture, accessories ,
# # pot => round pot , Window box , Ground box
# # plant => herbs, bush, flower ,

# item1 = Item.new(
# name: "Smiley terracotta pot",
# description: "The terracotta flower pot Smiley, range Serax, is a timeless pot plants ... with that little extra that gives the banana!
# This terracotta flower pot is pierced, you only have to deposit balls of clay, soil and your plants, of course :)",
# category: "Pot",
# sub_category: "Round pot",
# plant_category: "herbs, bush",
# slot: 1,
# price_cents: 390,
# volume: 10,
# length: 20,
# width: 20,
# weight: 2.5,
# )
# item1.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466002731/1_e8kgiq.jpg'
# item1.save

# item2 = Item.new(
# name: "Light coral terracotta pot",
# description: "The terracotta pot cache is a nice object measuring 13 cm high with a diameter of 13cm. It is a perfect pot for your regular rounded aromatic plantations, do not you think? At Brin Garden, we advise you to keep your original aromatic pot (or your flowering plant, it works too!) That you will position directly in the container pot.",
# category: "Pot",
# sub_category: "Round pot",
# plant_category: "herbs, bush",
# slot: 1,
# price_cents: 590,
# volume: 10,
# length: 13,
# width: 13,
# weight: 2.5,
# )
# item2.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466003239/2_yctrfs.jpg'
# item2.save

# item3 = Item.new(
# name: "Flower black fiber balcony",
# description: "The look very graphic of the rectangular fiber planter can just as easily blend into a green atmosphere or be part of a contemporary decor.",
# category: "Pot",
# sub_category: "Window box",
# plant_category: "flowers",
# slot: 3,
# price_cents: 4900,
# volume: 30,
# length: 60,
# width: 20,
# weight: 5,
# )
# item3.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466003630/4_zn6dgq.jpg'
# item3.save


# item4 = Item.new(
# name: "Black fiberstone pot",
# description: "
# The matt black pot Pax Pots Pottery is designed Fiberstone, a mixture of fiberglass and stone powder. This combination is as elegant as sturdy to stand unflinchingly 4 seasons of weather.",
# category: "Pot",
# sub_category: "Round pot",
# plant_category: "herbs, bush",
# slot: 1,
# price_cents: 12900,
# volume: 20,
# length: 67,
# width: 67,
# weight: 8,
# )
# item4.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466003352/3_itudgn.jpg'
# item4.save

# item5 = Item.new(
# name: "Olivier on stem",
# description: "The olivier is a nice rounded shape in leafy shrub that gives the impression of having been carved. Decorative guaranteed results! And its small size makes it ideal for terraces and balconies.",
# category: "Plant",
# sub_category: "bush",
# plant_category: "bush",
# slot: 1,
# price_cents: 9900,
# volume: 20,
# length: 30,
# width: 30,
# weight: 3,
# )
# item5.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466004334/olijf_hz0jfr.jpg'
# item5.save

# item6 = Item.new(
# name: "Mint herbs",
# description: "Mints are a genus (Mentha) of perennial herbaceous plants of the family Lamiaceae (Labiatae), subfamily Nepetoideae, tribe Menthae, including many species, many of which are grown as aromatic and spice plants, ornamental or medicinal.",
# category: "Plant",
# sub_category: "Herbs",
# plant_category: "Herbs",
# slot: 1,
# price_cents: 1490,
# volume: 5,
# length: 15,
# width: 15,
# weight: 1,
# )
# item6.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/c_scale,w_778/v1466004588/munt_pqqmo7.jpg'
# item6.save


# item7 = Item.new(
# name: "Hibiscus flowers",
# description: "These are plants known since ancient times: it was cultivated in Egypt and Southeast Asia for their ornamental character, but for their edible fruit. Many species also have medicinal properties. Imported to Europe in the twelfth century by the Moors of Spain, some species were subsequently introduced in America in the seventeenth century by slaves.",
# category: "Plant",
# sub_category: "Flower",
# plant_category: "Flower",
# slot: 1,
# price_cents: 3900,
# volume: 10,
# length: 30,
# width: 30,
# weight: 1.8,
# )
# item7.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466005065/Guzmania_Ass_P13_snfzvw.jpg'
# item7.save


# item8 = Item.new(
# name: "The pink flamingo",
# description: "Flamingo (Phoenicopterus roseus) is the species of flamingo most widespread. Formerly Flamingo designated species Phoenicopterus ruber, which was the case here this subspecies Phoenicopterus ruber roseus",
# category: "Deco",
# sub_category: "Accessories",
# plant_category: "",
# slot: 1,
# price_cents: 9900,
# volume: 10,
# length: 60,
# width: 60,
# weight: 1.2,
# )
# item8.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466005415/flamingo_r0zrl1.jpg'
# item8.save

# item9 = Item.new(
# name: "Balcony Swing",
# description: "The swing is a game, usually outdoors, which involves swinging on a board hanging on a porch. A traditional swing consists of a seat suspended from two ropes. They are found in kindergartens, and sometimes in circuses.",
# category: "Deco",
# sub_category: "Accessories",
# plant_category: "",
# slot: 1,
# price_cents: 5900,
# volume: 20,
# length: 20,
# width: 10,
# weight: 2,
# )
# item9.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466005684/schommel_yjqoti.jpg'
# item9.save

# item10 = Item.new(
# name: "Barbecue",
# description: "The barbecue is a cooking appliance. Food is placed on a grid or on a spindle and are exposed to radiation from a heat source. The prepared food is also called 'grilling'. The cooking is normally carried out in the open.",
# category: "Deco",
# sub_category: "Accessories",
# plant_category: "",
# slot: 1,
# price_cents: 12900,
# volume: 40,
# length: 40,
# width: 40,
# weight: 5,
# )
# item10.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466005791/bbq_jh1byn.jpg'
# item10.save


# item11 = Item.new(
# name: "Ground natural wood box",
# description: "The groundbox wicker basket is a nice object measuring 60 cm width.",
# category: "Pot",
# sub_category: "Ground box",
# plant_category: "plant, bush",
# slot: 6,
# price_cents: 7500,
# volume: 30,
# length: 60,
# width: 60,
# weight: 4.5,
# )
# item11.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466671746/groundbox9_b0ujmk.jpg'
# item11.save

# item12 = Item.new(
# name: "Groundbox wicker basket ",
# description: "The groundbox wicker basket is a nice object measuring 20 cm high width a diameter of 13cm. It is a perfect backet for 2 bush plantations. At Brin Garden, we advise you to keep your original aromatic pot (or your flowering plant, it works too!) That you will position directly in the container pot.",
# category: "Pot",
# sub_category: "Ground box",
# plant_category: "plant, bush",
# slot: 2,
# price_cents: 2500,
# volume: 10,
# length: 13,
# width: 20,
# weight: 2.5,
# )
# item12.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466667981/zukeg28anqvc3l7w5g9l.jpg'
# item12.save

# item13 = Item.new(
# name: "Blackgroundbox",
# description: "The look very graphic of the rectangular fiber planter can just as easily blend into a green atmosphere or be part of a contemporary decor.",
# category: "Pot",
# sub_category: "Ground box",
# plant_category: "plant, bush",
# slot: 4,
# price_cents: 4900,
# volume: 30,
# length: 60,
# width: 40,
# weight: 5,
# )
# item13.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466435920/table-de-culture-90-x-60-cm-anthracite_dt2r70.jpg'
# item13.save


# item14 = Item.new(
# name: "Tomato plants",
# description: "It’s easy to grow tomato plants in pots. To get the most from container-grown tomatoes, you need to match the eventual size of your plant tomato plants to the overall size of your container. For instance, smaller varieties are well suited to hanging baskets or window boxes, whereas you might want to choose a sturdier planter or 5-gallon bucket for larger types.",
# category: "Plant",
# sub_category: "herbs",
# slot: 1,
# price_cents: 950,
# volume: 20,
# length: 30,
# width: 30,
# weight: 3,
# )
# item14.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466436921/tomate_ctx3fv.jpg'
# item14.save


# item15 = Item.new(
# name: "White oudoor fiber window box ",
# description: "You can hang the flower box and plant pot from a balcony rail and create a decorative garden, even on a small space.",
# category: "Pot",
# sub_category: "Window box",
# plant_category: "flowers",
# slot: 6,
# price_cents: 5500,
# volume: 30,
# length: 60,
# width: 20,
# weight: 5,
# )
# item15.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466498275/potsmultiple_fclhgc.jpg'
# item15.save


# item16 = Item.new(
# name: "Flower box with holder ",
# description: "You can hang the flower box and plant pot from a balcony rail and create a decorative garden, even on a small space.",
# category: "Pot",
# sub_category: "Window box",
# plant_category: "flowers",
# slot: 2,
# price_cents: 1500,
# volume: 30,
# length: 20,
# width: 10,
# weight: 5,
# )
# item16.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466498275/multiwindowbox_uzjqms.jpg'
# item16.save


# item17 = Item.new(
# name: "Multi color flower box",
# description: "You can hang the flower box and plant pot from a balcony rail and create a decorative garden, even on a small space.",
# category: "Pot",
# sub_category: "Window box",
# plant_category: "flowers",
# slot: 3,
# price_cents: 2000,
# volume: 40,
# length: 40,
# width: 10,
# weight: 5,
# )
# item17.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466498274/colorwindowbox_ozffjy.jpg'
# item17.save


# item18 = Item.new(
# name: "Watering can, outdoor, grey",
# description: "You can store water or a nutrient mixture in the can, so everything is ready when you water your plants.",
# category: "Deco",
# sub_category: "Accessories",
# plant_category: "",
# slot: 1,
# price_cents: 1900,
# volume: 20,
# length: 20,
# width: 10,
# weight: 2,
# )
# item18.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466498274/arrosioir_uvhzer.jpg'
# item18.save

# item19 = Item.new(
# name: "Tray, hanging, black/natural",
# description: "Keep fresh herbs, spices, oil and vinegar close at hand with this hanging tray.",
# category: "Deco",
# sub_category: "Accessories",
# plant_category: "",
# slot: 1,
# price_cents: 2500,
# volume: 20,
# length: 20,
# width: 10,
# weight: 2,
# )
# item19.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466498275/flowerplates_zwdc8k.jpg'
# item19.save

# item20 = Item.new(
# name: "Plant support, black fiber",
# description: "Keep your windowbox's fresh herbs, spices, oil and vinegar close at hand with this hanging tray.",
# category: "Deco",
# sub_category: "Accessories",
# plant_category: "",
# slot: 1,
# price_cents: 2500,
# volume: 20,
# length: 20,
# width: 10,
# weight: 2,
# )
# item20.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466498275/supportwindowbox_hhpymm.jpg'
# item20.save


# item21 = Item.new(
# name: "Plant stand with 5 plant pots, bamboo, white",
# description: "A decorative ladder plant stand allows you to grow several plants together vertically – perfect if you like plants but live in a small space.",
# category: "Deco",
# sub_category: "Accessories",
# plant_category: "",
# slot: 5,
# price_cents: 3500,
# volume: 20,
# length: 90,
# width: 40,
# weight: 3,
# )
# item21.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466500911/plantsstand_tg0ip0.jpg'
# item21.save

# item22 = Item.new(
# name: "Bench, in/outdoor, orange",
# description: "The bench is durable and easy to care for, as it is made of powder-coated steel. ",
# category: "Deco",
# sub_category: "Accessories",
# plant_category: "",
# slot: 5,
# price_cents: 3500,
# volume: 20,
# length: 90,
# width: 40,
# weight: 3,
# )
# item22.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466498274/bancexterior_teskcz.jpg'
# item22.save

# item23 = Item.new(
# name: "Beach chair, foldable light red",
# description: "Enjoy relaxing with this awesome long chair 100% wood rainforest alliance",
# category: "Deco",
# sub_category: "Accessories",
# plant_category: "",
# slot: 1,
# price_cents: 2490,
# volume: 40,
# length: 120,
# width: 40,
# weight: 5,
# )
# item23.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466501748/relax_p5koow.jpg'
# item23.save


# item24 = Item.new(
# name: "Trolley, outdoor, white, eucalyptus brown stained",
# description: "The Pimp My Ride trolley provides an extra storage area which can be moved easily.",
# category: "Deco",
# sub_category: "Accessories",
# plant_category: "",
# slot: 1,
# price_cents: 8900,
# volume: 60,
# length: 81,
# width: 51,
# weight: 5,
# )
# item24.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466498274/bbqdesign_kzmwcy.jpg'
# item24.save

# item25 = Item.new(
# name: "LED solar-powered pendant lamp",
# description: "Adopt this amazing eco environmental globe blue/white for your balcony evenings.",
# category: "Deco",
# sub_category: "Accessories",
# plant_category: "",
# slot: 1,
# price_cents: 700,
# volume: 20,
# length: 15,
# width:10,
# weight: 1,
# )
# item25.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466502517/solarlamp_ushbgz.jpg'
# item25.save

# item26 = Item.new(
# name: "Lemon tree",
# description: "Pimp My Ride trees from Lemon Citrus Tree are not grown from seed, they are grafted from mature trees unto a dwarf root stock. This allows you to see blossoms and fruit as early as one year old! Our trees are very hardy, of the best quality and have a three year warranty!",
# category: "Plant",
# sub_category: "bush",
# plant_category: "bush",
# slot: 1,
# price_cents: 12000,
# volume: 20,
# length: 15,
# width:10,
# weight: 1,
# )
# item26.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466439020/citrus_wl14vw.jpg'
# item26.save

# item27 = Item.new(
# name: "Grapefruit",
# description: "The grapefruit (Citrus × paradisi) is a subtropical citrus tree known for its sour to semi-sweet fruit. Grapefruit is a hybrid originating in Barbados as an accidental cross between two introduced species, sweet orange and pomelo",
# category: "Plant",
# sub_category: "bush",
# plant_category: "bush",
# slot: 1,
# price_cents: 15000,
# volume: 20,
# length: 15,
# width:10,
# weight: 1,
# )
# item27.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466436958/pamplemousse_ojw2vf.jpg'
# item27.save

# item28 = Item.new(
# name: "palmier",
# description: "Pimp My Ride trees from Lemon Citrus Tree are not grown from seed, they are grafted from mature trees unto a dwarf root stock. This allows you to see blossoms and fruit as early as one year old! Our trees are very hardy, of the best quality and have a three year warranty!",
# category: "Plant",
# sub_category: "bush",
# plant_category: "bush",
# slot: 1,
# price_cents: 9500,
# volume: 20,
# length: 15,
# width:10,
# weight: 1,
# )
# item28.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466436938/chrysalidocarpus_rxexvn.jpg'
# item28.save

# item29 = Item.new(
# name: "Buxus tree",
# description: "Pimp My Ride Buxus sempervirens (common box) standards make superb specimen topiary plants. Box topiary standards can be grown in containers/planters or in the ground as specimens plants.",
# category: "Plant",
# sub_category: "bush",
# plant_category: "bush",
# slot: 1,
# price_cents: 11500,
# volume: 20,
# length: 15,
# width:10,
# weight: 1,
# )
# item29.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466437027/buis_ioavfr.jpg'
# item29.save

# item30 = Item.new(
# name: "Bamboo",
# description: "Pimp My Ride Evergreen bamboo plants offer a thick lush hedge that offers total privacy and they take up very little planting area widthwise. The lush green leaves offer an exotic edge to your garden design with tall upright evergreen lines of green, yellow or black canes. This type of planting is particularly useful when delicately screening off the close proximity of neighbours.",
# category: "Plant",
# sub_category: "bush",
# plant_category: "bush",
# slot: 1,
# price_cents: 9500,
# volume: 20,
# length: 15,
# width:10,
# weight: 1,
# )
# item29.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466440709/bamboo_aurtmj.jpg'
# item29.save


# itemX = Item.new(
# name: "",
# description: "",
# category: "Pot",
# sub_category: "Round pot",
# plant_category: "herbs, bush",
# slot: 1,
# price_cents: 129,
# volume: 20,
# length: 67,
# width: 67,
# weight: 8,
# )
# itemX.remote_photo_url = ''
# itemX.save

##########################   Plant  SEED    ###############
#
##E3E4E8">
# herb
# fruit
# flower

# plant1 = Plant.new(
# name: "Tomato plants",
# scientific_name: "Tomato ruby",
# description: "It’s easy to grow tomato plants in pots. To get the most from container-grown tomatoes, you need to match the eventual size of your plant tomato plants to the overall size of your container. For instance, smaller varieties are well suited to hanging baskets or window boxes, whereas you might want to choose a sturdier planter or 5-gallon bucket for larger types.",
# category: "fruit",
# temperature_min: 10,
# temperature_max: 45,
# pluviometry: 1,
# sunshine_amount: 700,
# advises: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
# price_cents: 950,
# slot: 1,
# color: "green",
# size: 120
# )
# plant1.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466514314/tomato_plant_xer9y8.jpg'
# plant1.save

# plant2 = Plant.new(
# name: "Mint herbs",
# scientific_name: "Holywood Chewing gum",
# description: "Mints are a genus (Mentha) of perennial herbaceous plants of the family Lamiaceae (Labiatae), subfamily Nepetoideae, tribe Menthae, including many species, many of which are grown as aromatic and spice plants, ornamental or medicinal.",
# category: "herb",
# temperature_min: 4,
# temperature_max: 25,
# pluviometry: 4,
# sunshine_amount: 3,
# advises: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
# price_cents: 400,
# slot: 1,
# color: "green",
# size: 15
# )
# plant2.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466514487/Peppermint_foo29a.jpg'
# plant2.save

# plant3 = Plant.new(
# name: "Hibiscus flowers",
# description: "These are plants known since ancient times: it was cultivated in Egypt and Southeast Asia for their ornamental character, but for their edible fruit. Many species also have medicinal properties. Imported to Europe in the twelfth century by the Moors of Spain, some species were subsequently introduced in America in the seventeenth century by slaves.",
# category: "flower",
# temperature_min: 0,
# temperature_max: 35,
# pluviometry: 2,
# sunshine_amount: 3,
# advises: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
# price_cents: 500,
# slot: 1,
# color: "red",
# size: 15
# )
# plant3.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466514780/Hibiscus-Red_abxmqk.jpg'
# plant3.save

# plant4 = Plant.new(
# name: "Strawberry plants",
# scientific_name: "Fragaria × ananassa",
# description: "Fresh strawberries grown in gardens or on local farms can be harvested at the peak of ripeness, offering superior flavor, quality, and appearance. We offer three main types — short-day or June-bearing, day-neutral, and alpine strawberries. Choose from disease-free, dormant bare-root plants of the first two types, seeds of the second two types, and certified-organic plugs of day-neutral varieties.",
# category: "fruit",
# temperature_min: 10,
# temperature_max: 35,
# pluviometry: 1,
# sunshine_amount: 3,
# advises: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
# price_cents: 750,
# slot: 1,
# color: "red",
# size: 120
# )
# plant4.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466518236/strawberry-plant_rpjsgg.jpg'
# plant4.save


# plant5 = Plant.new(
# name: "Basil herbs",
# scientific_name: "Basilicus pistus",
# description: "Grow fresh basil herbs at home with zero effort. No green thumb required!",
# category: "herb",
# temperature_min: 4,
# temperature_max: 25,
# pluviometry: 4,
# sunshine_amount: 3,
# advises: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
# price_cents: 600,
# slot: 1,
# color: "green",
# size: 15
# )
# plant5.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466514956/basilum_izbgzl.jpg'
# plant5.save


# plant6 = Plant.new(
# name: "Dill herbs",
# scientific_name: "Anethum graveolens",
# description: "The compact plants has a lot of large, succulent, dark green leaves with purple-bluish tint",
# category: "herb",
# temperature_min: 4,
# temperature_max: 25,
# pluviometry: 4,
# sunshine_amount: 3,
# advises: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
# price_cents: 700,
# slot: 1,
# color: "green",
# size: 15
# )
# plant6.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466515361/dill_lcpjyw.jpg'
# plant6.save

# plant7 = Plant.new(
# name: "Chives herbs",
# scientific_name: "Allium schoenoprasum",
# description: "They are one of the first herbs to pop up in the spring garden, they are in season (and blooming!) right now, and they are pretty much the easiest herb to grow.",
# category: "herb",
# temperature_min: 4,
# temperature_max: 25,
# pluviometry: 4,
# sunshine_amount: 3,
# advises: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
# price_cents: 500,
# slot: 1,
# color: "green",
# size: 15
# )
# plant7.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466516122/chiveherbs_la4kwr.jpg'
# plant7.save


# plant8 = Plant.new(
# name: "Tulip",
# scientific_name: "Tulipus",
# description: "You'll love this fabulous assortment of tulip bulbs, so new they have yet to be named. Every single flower is different - in variety, color and form. Our special tulip breeder has selected many thousands of new seedlings and included the best in this mixture.",
# category: "flower",
# temperature_min: 10,
# temperature_max: 40,
# pluviometry: 2,
# sunshine_amount: 4,
# advises: "This spectacular mix will bloom mid to late spring and are great for cutting.",
# price_cents: 800,
# slot: 1,
# color: "green",
# size: 15
# )
# plant8.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466673130/tulip_o35qn6.jpg'
# plant8.save

# plant9 = Plant.new(
# name: "Sage blue",
# scientific_name: "Salvia azurea",
# description: "The bright blue flowers of Blue Sage bloom for an extended period in late summer. Native to southern and western prairie states, it makes its home in rocky prairies, shaded limestone glades, and open woodlands.",
# category: "flower",
# temperature_min: 10,
# temperature_max: 40,
# pluviometry: 2,
# sunshine_amount: 4,
# advises: "Salvia azurea is tough as nails and makes an excellent choice for dry sites.",
# price_cents: 1250,
# slot: 1,
# color: "green",
# size: 15
# )
# plant9.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466679854/sage_blue_lqv7mp.jpg'
# plant9.save

# plant10 = Plant.new(
# name: "oleander",
# scientific_name: "oleandus",
# description: "Large clusters of large fragrant soft rosy white double flowers, often with one or more petals streaked or flecked with white, are born over a long period on this reliable old favorite.",
# category: "flower",
# temperature_min: 10,
# temperature_max: 35,
# pluviometry: 2,
# sunshine_amount: 3,
# advises: "Oleanders also make excellent container specimens that are easily overwintered indoors in cooler climates.",
# price_cents: 9500,
# slot: 1,
# color: "green",
# size: 15
# )
# plant10.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466436938/chrysalidocarpus_rxexvn.jpg'
# plant10.save


# plant11 = Plant.new(
# name: "Raspberry bush",
# scientific_name: "Raspus",
# description: "Pimp My Ride Dorman Red is a good raspberry for the deep South. Produces good quantities of large, firm, juicy, red fruit, very good either fresh or frozen.",
# category: "fruit",
# temperature_min: 10,
# temperature_max: 35,
# pluviometry: 2,
# sunshine_amount: 3,
# advises: "Thrives in hot temperatures, drought and disease resistant. Ripens mid June. ",
# price_cents: 1050,
# slot: 1,
# color: "green",
# size: 15
# )
# plant11.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466681727/raspberry_tdnt38.jpg'
# plant11.save

# # plant12 = Plant.new(
# # name: "Bamboo",
# # scientific_name: "Bambus",
# # description: "Pimp My Ride Evergreen bamboo plants offer a thick lush hedge that offers total privacy and they take up very little planting area widthwise. The lush green leaves offer an exotic edge to your garden design with tall upright evergreen lines of green, yellow or black canes. This type of planting is particularly useful when delicately screening off the close proximity of neighbours.",
# # category: "Plant",
# # temperature_min: 10,
# # temperature_max: 35,
# # pluviometry: 2,
# # sunshine_amount: 3,
# # advises: "Select a container at least 45cm (18in) in diameter and use a loam-based compost, such as John Innes No 3. Make sure plants never dry out, even in winter.",
# # price_cents: 11500,
# # slot: 1,
# # color: "green",
# # size: 15
# # )
# # plant12.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466440709/bamboo_aurtmj.jpg'
# # plant12.save

# plant8 = Plant.new(
# name: "Hortensia flowers",
# description: "These are plants known since ancient times: it was cultivated in Egypt and Southeast Asia for their ornamental character, but for their edible fruit. Many species also have medicinal properties. Imported to Europe in the twelfth century by the Moors of Spain, some species were subsequently introduced in America in the seventeenth century by slaves.",
# category: "flower",
# temperature_min: 0,
# temperature_max: 35,
# pluviometry: 3,
# sunshine_amount: 3,
# advises: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
# price_cents: 1500,
# slot: 1,
# color: "white",
# size: 15
# )
# plant8.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466504265/hortensia_sj2bua.jpg'
# plant8.save

# plant9 = Plant.new(
# name: "Daisy flowers",
# description: "For a spectacular show during cool weather, plant marguerite daisy. Often confused with Shasta daisy, marguerite is more mounded and shrubby. Different types also come in pink with a bloom that more resembles purple coneflower.",
# category: "flower",
# temperature_min: 0,
# temperature_max: 35,
# pluviometry: 3,
# sunshine_amount: 3,
# advises: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
# price_cents: 1800,
# slot: 1,
# color: "pink, white",
# size: 15
# )
# plant9.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466504265/marguerite_daisy_mu0udh.jpg'
# plant9.save

# plant10 = Plant.new(
# name: " Graminae flowers",
# description: "A charming, deciduous grass that forms a compact, low mound and produces long-lasting, soft, pinkish, brush-like flowers in late summer that resemble squirrel tails. The bright green leaves turn yellow in autumn. It’s a fairly undistinguished plant until the flowers appear, so use it alongside spring bulbs or early-flowering perennials.",
# category: "flower",
# temperature_min: 0,
# temperature_max: 35,
# pluviometry: 3,
# sunshine_amount: 3,
# advises: "Remove dead foliage in spring.",
# price_cents: 1490,
# slot: 1,
# color: "green",
# size: 15
# )
# plant10.remote_photo_url = 'http://res.cloudinary.com/dun7rljns/image/upload/v1466505501/graminae_lah7xo.jpg'
# plant10.save



