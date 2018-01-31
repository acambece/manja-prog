if Rails.env.development?

    toscana = Restraunt.new(name: "Toscana", photo_url: "http://images.miamiandbeaches.com/images/109783_4637_full.jpg")
    toscana.build_address line_1: "3 Bourbon St", city: "Peabody", state: "MA", zip: "01960"
    toscana.save!

    shrimp_scampi = toscana.dishes.create! name: "Shrimp Scampi", photo_url: "https://static01.nyt.com/images/2016/05/28/dining/28COOKING-CLASSIC-SHRIMP-SCAMPI1/28COOKING-CLASSIC-SHRIMP-SCAMPI1-videoSixteenByNineJumbo1600.jpg"

    anthony = User.new email: "jamescambece@gmail.com", password: "jamescambece@gmail.com", username: "acambece", bio: "I am here, hear me roar!", photo_url: "https://i.pinimg.com/avatars/acambece_1411605440_280.jpg"
    anthony.skip_confirmation!
    anthony.save!

    gluten_free_tag = DietaryTag.create! name: "Gluten Free"

    shrimp_scampi.dietary_tags << gluten_free_tag
    anthony.dietary_tags << gluten_free_tag


end