if Rails.env.development?

  toscana = Restaurant.new(name: "Toscana", photo_url: "http://images.miamiandbeaches.com/images/109783_4637_full.jpg")
  toscana.build_address line_1: "3 Bourbon St", city: "Peabody", state: "MA", zip: "01960"
  toscana.save


shrimp_scampi=toscana.dishes.create! name: "Shrimp Scampi", photo_url: "https://static01.nyt.com/images/2016/05/28/dining/28COOKING-CLASSIC-SHRIMP-SCAMPI1/28COOKING-CLASSIC-SHRIMP-SCAMPI1-videoSixteenByNineJumbo1600.jpg"
cf=toscana.dishes.create! name: "Chicken Fajitas", photo_url: "https://static01.nyt.com/images/2016/05/28/dining/28COOKING-CLASSIC-SHRIMP-SCAMPI1/28COOKING-CLASSIC-SHRIMP-SCAMPI1-videoSixteenByNineJumbo1600.jpg"
ts=toscana.dishes.create! name: "Taco Salad", photo_url: "https://static01.nyt.com/images/2016/05/28/dining/28COOKING-CLASSIC-SHRIMP-SCAMPI1/28COOKING-CLASSIC-SHRIMP-SCAMPI1-videoSixteenByNineJumbo1600.jpg"
ss=toscana.dishes.create! name: "Salisbury Steak", photo_url: "https://static01.nyt.com/images/2016/05/28/dining/28COOKING-CLASSIC-SHRIMP-SCAMPI1/28COOKING-CLASSIC-SHRIMP-SCAMPI1-videoSixteenByNineJumbo1600.jpg"
hbc=toscana.dishes.create! name: "Honey Baked Chicken", photo_url: "https://static01.nyt.com/images/2016/05/28/dining/28COOKING-CLASSIC-SHRIMP-SCAMPI1/28COOKING-CLASSIC-SHRIMP-SCAMPI1-videoSixteenByNineJumbo1600.jpg"
gpc=toscana.dishes.create! name: "Grill Pan Chicken", photo_url: "https://static01.nyt.com/images/2016/05/28/dining/28COOKING-CLASSIC-SHRIMP-SCAMPI1/28COOKING-CLASSIC-SHRIMP-SCAMPI1-videoSixteenByNineJumbo1600.jpg"
bcs=toscana.dishes.create! name: "Blue Cheese Salad", photo_url: "https://static01.nyt.com/images/2016/05/28/dining/28COOKING-CLASSIC-SHRIMP-SCAMPI1/28COOKING-CLASSIC-SHRIMP-SCAMPI1-videoSixteenByNineJumbo1600.jpg"
fs=toscana.dishes.create! name: "Frest Salmon", photo_url: "https://static01.nyt.com/images/2016/05/28/dining/28COOKING-CLASSIC-SHRIMP-SCAMPI1/28COOKING-CLASSIC-SHRIMP-SCAMPI1-videoSixteenByNineJumbo1600.jpg"
ncbs=toscana.dishes.create! name: "Ham and Cheese Barley Salad", photo_url: "https://static01.nyt.com/images/2016/05/28/dining/28COOKING-CLASSIC-SHRIMP-SCAMPI1/28COOKING-CLASSIC-SHRIMP-SCAMPI1-videoSixteenByNineJumbo1600.jpg"
ctbg=toscana.dishes.create! name: "Crisp-Tender Baked Garlic Chicken", photo_url: "https://static01.nyt.com/images/2016/05/28/dining/28COOKING-CLASSIC-SHRIMP-SCAMPI1/28COOKING-CLASSIC-SHRIMP-SCAMPI1-videoSixteenByNineJumbo1600.jpg"
opc=toscana.dishes.create! name: "One Pan Chicken", photo_url: "https://static01.nyt.com/images/2016/05/28/dining/28COOKING-CLASSIC-SHRIMP-SCAMPI1/28COOKING-CLASSIC-SHRIMP-SCAMPI1-videoSixteenByNineJumbo1600.jpg"


    anthony = User.new email: "jescbece@gmail.com", password: "jamescambece@gmail.com", username: "acambece", bio: "I am here, hear me roar!", photo_url: "https://i.pinimg.com/avatars/acambece_1411605440_280.jpg"
    anthony.skip_confirmation!
    anthony.save!

    gluten_free_tag = DietaryTag.create! name: "Gluten Free"

    shrimp_scampi.dietary_tags << gluten_free_tag
    anthony.dietary_tags << gluten_free_tag


end
