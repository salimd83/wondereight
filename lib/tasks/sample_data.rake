namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    work1 = Work.create!(
      title: "Baker and More",
      photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/baker-and-more.jpg")),
      photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/baker-and-more.jpg")),
      photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/baker-and-more/baker-and-more-main.jpg")),
      caption: "Baker and More / <em>Restaurant Branding</em>",
      description: "
      <p>We were asked to create the identity of a new coffee shop in town serving delicious buns, signature coffee, tea, macarons and breakfast.</p>
      <p>The main challenge was to make Baker & More stand out in a wide range of commercial coffee shops and to attract a different, higher class of customers.</p>
      <p>The results were a trendy yet classy looking coffee shop. We focused on the materials used rather on the graphic visuals, like jute/burlap bags, wooden containers, nice tableware, etc. to help convey the unicity and genuineness of the place.</p>
      ",
      client: "ME Retail Group",
      task: "Total Brand Creation",
      region: "UAE",
      created: "2012",
      category: "Restaurants",
      website: "http://bakerandmore.com"
    )

    6.times do |n|
      work1.workgalleries.create!(
        photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/#{work1.title.parameterize}/img-#{n+2}.jpg"))
      )
    end

    work2 = Work.create!(
      title: "Origami",
      photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/origami.jpg")),
      photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/origami.jpg")),
      photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/origami/origami-main.jpg")),
      caption: "Origami / <em>Restaurant Branding</em>",
      description: "<p>A new concept was hitting the streets of Beirut combining a Kids Academy and a Class A Kitchen / restaurant. The clients entrusted us with the creation of an identity that clearly communicates the contrast and unicity of the place.</p>
        <p>The challenge in this case was bringing out the fun in chic. The academy consists of theater classes, workshops, art courses and a dancing audio while the restaurant targets class A customers. The choice of name was really pivotal to the brand as it helped in communicating both liveliness and sophistication. </p>
        <p>The result was a brand that attracts curious children and their posh parents. We were able to reach that goal through applying the concept of folding on the different applications at hand.</p>",
      client: "Cool Five",
      task: "Total Brand Creation",
      region: "Lebanon",
      created: "2012",
      category: "Restaurants",
    )

    8.times do |n|
      work2.workgalleries.create!(
        photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/#{work2.title.parameterize}/img-#{n+2}.jpg"))
      )
    end

    work3 = Work.create!(
      title: "Aspasuc",
      photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/aspasuc.jpg")),
      photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/aspasuc.jpg")),
      photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/aspasuc/aspasuc-main.jpg")),
      caption: "Aspasuc / <em>Website Design</em>",
      description: " ",
      client: "MANYFOOD",
      task: "WEBSITE DESIGN",
      region: "LEBANON",
      created: "2011",
      category: "Website",
      website: "http://aspasuc.com"
    )

    2.times do |n|
      work3.workgalleries.create!(
        photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/#{work3.title.parameterize}/img-#{n+2}.jpg"))
      )
    end

    work4 = Work.create!(
      title: "Cozmo Cafe",
      photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/cozmo-cafe.jpg")),
      photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/cozmo-cafe.jpg")),
      photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/cozmo-cafe/cozmo-cafe-main.jpg")),
      caption: "Cozmo Cafe / <em>Restaurant Branding</em>",
      description: "<p>Cozmo Cafe is modern eatery emulating the cosmopolitan Lebanese capital harboring it and coloring the Beirut seaside promenade with a dynamic identity, mixing trendy industrial urbanism and stylish elegance in the posh setting of an exclusive yacht club.</p>",
      client: "Boubess Group",
      task: "Total Brand Creation",
      region: "Lebanon",
      created: "2011",
      category: "Restaurants",
    )

    6.times do |n|
      work4.workgalleries.create!(
        photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/#{work4.title.parameterize}/img-#{n+2}.jpg"))
      )
    end

    work5 = Work.create!(
      title: "Falafel Aboulziz",
      photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/falafel-aboulziz.jpg")),
      photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/falafel-aboulziz.jpg")),
      photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/falafel-aboulziz/falafel-aboulziz-main.jpg")),
      caption: "Falafel Aboulziz / <em>Restaurant Branding</em>",
      description: "<p>When FAZ asked us to create a falafel shop for franchising - falafel being a culture-anchored food - we made sure that we both share the same vision before we accepted the challenge: To create a brand that respects both a genuine falafel shop and a loyal falafel consumer.</p>
<p>This meant designing a brand enough for duplication, but without affecting the image expected by the falafel consumers, which is no image! 'So designing without design?' was the first reaction among our team members...</p>",
      client: "HOSMAN",
      task: "Total Brand Creation",
      region: "Lebanon",
      created: "2012",
      category: "Restaurants",
    )

    7.times do |n|
      work5.workgalleries.create!(
        photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/#{work5.title.parameterize}/img-#{n+2}.jpg"))
      )
    end

    work6 = Work.create!(
      title: "Uptown 966",
      photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/uptown-966.jpg")),
      photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/uptown-966.jpg")),
      photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/uptown-966/uptown-966-main.jpg")),
      caption: "Uptown 966 / <em>Restaurant Branding</em>",
      description: "<p>The client came to W8 for help in creating a new concept in a star location in KSA. The location used to host a winning concept with a success story in the area, and this was the challenge we were excited to take: Gaining client's acceptance with expectations already set to 'high'.</p>
<p>Although the offering was the same as the previous concept, we created a completely new experience that leaves you with a familiar feeling at the end of your visit.</p>",
      client: "AL MAWAED",
      task: "Total Brand Creation",
      region: "KSA",
      created: "2011",
      category: "Restaurants",
      website: "http://uptown966.com",
    )

    3.times do |n|
      work6.workgalleries.create!(
        photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/#{work6.title.parameterize}/img-#{n+2}.jpg"))
      )
    end

    work7 = Work.create!(
      title: "Classic Burger Joint",
      photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/classic-burger-joint.jpg")),
      photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/classic-burger-joint.jpg")),
      photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/classic-burger-joint/classic-burger-main.jpg")),
      caption: "Classic Burger Joint / <em>Restaurant Branding</em>",
      description: "<p>The concept is all in the name: It's a classic burger joint, and hamburgers is all 'they' do! The challenge was to create the most simple, straight to the point identity and architecture, while reflecting a unique and genuine experience.</p>
<p>From the name to the waiter's name tag, we kept the simplicity flowing in every aspect of the communication. The thorough research we conducted (that involved traveling to London, Paris, New York and other American states!) and our love of Hamburgers have contributed largely in the success of the brand, and especially in the restaurant's architecture.</p>",
      client: "MINISTRY OF FOOD",
      task: "Total Brand Creation",
      region: "Lebanon",
      created: "2010",
      category: "Restaurants",
      website: "http://classicburgerjoint.com",
    )

    9.times do |n|
      work7.workgalleries.create!(
        photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/#{work7.title.parameterize}/img-#{n+2}.jpg"))
      )
    end

    work8 = Work.create!(
      title: "Atibaia",
      photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/atibaia.jpg")),
      photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/atibaia.jpg")),
      photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/atibaia/atibaia-main.jpg")),
      caption: "Atibaia / <em>Brand & Packaging Design</em>",
      description: "<p>Atibaia is a refined and distinguished Lebanese wine with lots of character and aromas. We were approached by the client to create an identity that focuses on the locality of the wine but speaks to international tastes. We went for a bold yet minimalistic label design, working closely on all the details with the client to bring forth the delicate and intense persona of Atibaia's wine.</p>",
      client: "ETS. MASSOUD",
      task: "Packaging Design",
      region: "Lebanon",
      created: "2012",
      category: "Branding",
      website: "http://atibaiawine.com"
    )

    6.times do |n|
      work8.workgalleries.create!(
        photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/#{work8.title.parameterize}/img-#{n+2}.jpg"))
      )
    end

    work9 = Work.create!(
      title: "Tomatomatic Pizza",
      photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/tomatomatic-pizza.jpg")),
      photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/tomatomatic-pizza.jpg")),
      photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/tomatomatic-pizza/tomatomatic-pizza-main.jpg")),
      caption: "Tomatomatic Pizza / <em>Restaurant Branding</em>",
      description: "",
      client: "MINISTRY OF FOOD",
      task: "Total Brand Creation",
      region: "Lebanon",
      created: "2011",
      category: "Restaurants",
      website: "http://www.tomatomatic.com",
    )

    6.times do |n|
      work9.workgalleries.create!(
        photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/#{work9.title.parameterize}/img-#{n+2}.jpg"))
      )
    end

    work10 = Work.create!(
      title: "Castania",
      photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/castania.jpg")),
      photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/castania.jpg")),
      photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/castania/castania-main.jpg")),
      caption: "Castania / <em>Brand & Packaging Design</em>",
      description: " ",
      client: "Castani",
      task: "Total Brand Creation",
      region: "GCC",
      created: "2010",
      category: "Branding",
      website: "http://www.castanianuts.com"
    )

    3.times do |n|
      work10.workgalleries.create!(
        photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/#{work10.title.parameterize}/img-#{n+2}.jpg"))
      )
    end

    work11 = Work.create!(
      title: "The Met",
      photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/the-met.jpg")),
      photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/the-met.jpg")),
      photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/the-met/the-met-main.jpg")),
      caption: "The Met / <em>Restaurant Branding</em>",
      description: " ",
      client: "BOUBESS",
      task: "Total Brand Creation",
      region: "Lebanon",
      created: "2010",
      category: "Restaurants",
    )

    5.times do |n|
      work11.workgalleries.create!(
        photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/#{work11.title.parameterize}/img-#{n+2}.jpg"))
      )
    end

    work12 = Work.create!(
      title: "Roger's Diner",
      photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/rogers-diner.jpg")),
      photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/rogers-diner.jpg")),
      photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/rogers-diner/rogers-diner-main.jpg")),
      caption: "Roger's Diner / <em>Restaurant Branding</em>",
      description: "<p>Just another diner? Not quite. With more than 2,084 different American Diner concepts out there, good food and a prime location aren't enough anymore. If you want to stand out, your new diner has to have a story, a theme, from head to toe... or as we say 'from the name to the nametag'. We started with a long research to find a theme that is unique and that will be accepted by the local culture in Qatar. Between motorcycle gangs and aviation, the latter won the most votes.</p>
        <p>We applied the theme from the name (Rogers), to the architecture (wing-shaped bar, engine fans and reactor lights), down to the very last detail on the waiter's outfits andname tags (Air man, sergeant, officer...).</p>",
      client: "IMC QATAR",
      task: "Total Brand Creation",
      region: "Qatar",
      created: "2010",
      category: "Retaurants",
    )

    6.times do |n|
      work12.workgalleries.create!(
        photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/rogers-diner/img-#{n+2}.jpg"))
      )
    end

    work13 = Work.create!(
      title: "Hoover Lebanon",
      photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/hoover-lebanon.jpg")),
      photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/hoover-lebanon.jpg")),
      photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/hoover-lebanon/hoover-lebanon-main.jpg")),
      caption: "Hoover Lebanon / <em>Full-Fledged Campaign</em>",
      description: "",
      client: "HEALD CO",
      task: "Full-Fledged Campaign",
      region: "Lebanon",
      created: "2012",
      category: "Branding",
      website: "http://www.healco.com/hoover.html"
    )

    6.times do |n|
      work13.workgalleries.create!(
        photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/#{work13.title.parameterize}/img-#{n+2}.jpg"))
      )
    end

    work14 = Work.create!(
      title: "Dunlop Lebanon",
      photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/dunlop-lebanon.jpg")),
      photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/dunlop-lebanon.jpg")),
      photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/dunlop-lebanon/dunlop-lebanon-main.jpg")),
      caption: "Dunlop Lebanon / <em>Full-Fledged Campaign</em>",
      description: "",
      client: "HEALD CO",
      task: "Full-Fledged Campaign",
      region: "Lebanon",
      created: "2012",
      category: "Branding",
    )

    5.times do |n|
      work14.workgalleries.create!(
        photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/#{work14.title.parameterize}/img-#{n+2}.jpg"))
      )
    end

    work15 = Work.create!(
      title: "IDM",
      photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/idm.jpg")),
      photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/idm.jpg")),
      photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/idm/idm-main.jpg")),
      caption: "IDM / <em>Total Brand Creation</em>",
      description: "<p>IDM, the biggest Internet Service Provider in Lebanon had an image problem: All its competing Internet service providers had roughly the same look and communication strategy. We had to show that IDM was different. The birth of 'Skoodo' brought internet technology from outer space! The character created a strong bond between internet users and the brand, and combined the brand with the service. Skoodo quickly became the brand ambassador and appeared in a 6-month campaign covering outdoor media, radio, TV, YouTube, direct marketing events (as a real mascot), BDL and promotional ite ad another challenge, they were launching a new service (ADSL) and so were all other ISPs, who where going to offer the same service at the same price. We had to sell the ADSL service as a brand, not only as a service. W8 created IDM ADSL, linking the service to the brand and differentiating it from all other ADSL services. Although competition was fierce and even disloyal in some cases, W8's communication strategy and brand image kept IDM in its #1 position as ISP in Lebanon and increased its brand awareness by 10 folds, keeping marketing budgets affordable.</p>",
      client: "IDM",
      task: "total Brand Creation",
      region: "Lebanon",
      created: "2009",
      category: "Branding",
      website: "http://idm.net.lb"
    )

    6.times do |n|
      work15.workgalleries.create!(
        photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/#{work15.title.parameterize}/img-#{n+2}.jpg"))
      )
    end

    work16 = Work.create!(
      title: "Cafe Hamra",
      photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/cafe-hamra.jpg")),
      photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/cafe-hamra.jpg")),
      photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/cafe-hamra/cafe-hamra-main.jpg")),
      caption: "Cafe Hamra / <em>Restaurant Branding</em>",
      description: "<p>The idea behind the restaurant is to revive the Hamra of the 70s while addressing the younger generation. After 3 months of research on the history and pop culture of the 70s, we dug up ancient footage and photography and 'urbanized' it! For the launching campaign of the restaurant, a typical Lebanese cast was chosen, showing that both the father (70s) and his son (2010) enjoy the same experience, 40 years apart... A lot of branding detail went into the interior decoration too, from airbrushed urban maps on the ceiling to uniquely designed frames reflecting the 70s era.</p>",
      client: "BOUBESS GROUP",
      task: "Total Brand Creation",
      region: "Lebanon",
      created: "2010",
      category: "Restaurants",
    )

    6.times do |n|
      work16.workgalleries.create!(
        photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/#{work16.title.parameterize}/img-#{n+2}.jpg"))
      )
    end

    work17 = Work.create!(
      title: "WokBox",
      photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/wokbox.jpg")),
      photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/wokbox.jpg")),
      photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/wokbox/wokbox-main.jpg")),
      caption: "WokBox / <em>Restaurant Re-branding</em>",
      description: "",
      client: "WOK BOX MIDDLE EAST",
      task: "Franchise Localization",
      region: "Lebanon",
      created: "2011",
      category: "Branding",
      website: "http://wokbox-lb.com"
    )

    6.times do |n|
      work17.workgalleries.create!(
        photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/#{work17.title.parameterize}/img-#{n+2}.jpg"))
      )
    end

    # work18 = Work.create!(
    #   title: "Alaia",
    #   photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/alaia.jpg")),
    #   photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/alaia.jpg")),
    #   photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/alaia/alaia-main.jpg")),
    #   caption: "Alaia / <em>Brand & Packaging Design</em>",
    #   description: "<p>BEY's business, based on sound human values and principles, is Libya's number one FMCG distributor and had more than 80% of the shelf space. When the time came for them to create their own brands they commissioned WonderEight to do it: Creating brands through private labeling. This project's experience was thrilling as W8 were there from the beginning, it's like assisting to the Big Bang, creating a mother brand (Alaya) and three subbrands (Alaya, Masoud and Formula) for more than twenty different products is also opening to the worldwide markets, and the challenge was to adapt new products to their culture. This is where WonderEight's multi-cultural skills came into play. Libyan consumers were looking for something new they could also relate to. Knowing that there is no one single product for everyone, WonderEight worked hard to keep Bey's motto: bringing the best and most relevant products to people, wherever they are and whatever their needs, with a deep understanding of the local nature of food: Bey's products are tailored to suit tastes and habits wherever you are.</p>",
    #   client: "HB GROUP",
    #   task: "total Brand Creation",
    #   region: "Libya",
    #   created: "2008",
    #   category: "Branding",
    # )

    # 3.times do |n|
    #   work18.workgalleries.create!(
    #     photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/#{work18.title.parameterize}/img-#{n+2}.jpg"))
    #   )
    # end

    work19 = Work.create!(
      title: "Bob's Easy Diner",
      photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/bobs-easy-diner.jpg")),
      photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/bobs-easy-diner.jpg")),
      photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/bobs-easy-diner/bobs-easy-diner-main.jpg")),
      caption: "Bob's Easy Diner / <em>Restaurant Re-Branding</em>",
      description: "<p>BOB's was our first baby in the restaurants branding family, and it was about time to give it an uplift. 7 years after its launch, BOB's Easy Diner has grown enough to deserve a more mature image. We made sure to keep the brand values, but to create something that stands out from the local competition.</p>",
      client: "BOUBESS GROUP",
      task: "Rebranding",
      region: "Lebanon",
      created: "2012",
      category: "Restaurant",
    )

    5.times do |n|
      work19.workgalleries.create!(
        photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/bobs-easy-diner/img-#{n+2}.jpg"))
      )
    end

    work20 = Work.create!(
      title: "Sacotel",
      photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/sacotel.jpg")),
      photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/sacotel.jpg")),
      photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/sacotel/sacotel-main.jpg")),
      caption: "Sacotel / <em>Website</em>",
      description: "<p>We were asked to create the website of Sacotel, the exclusive agent and distributor in Lebanon for major brands such as Panasonic from Japan, Urmet, Elkron, Aprimatic from Italy, and FDI Matelec from France. SACOTEL SAL has known a constant and steady growth expanding its line of business and weight on the markets it operates.</p>
        <p>The main challenge was to ensure an equal presentation of all their brands along with the creation of an online shop where suppliers and consumers could purchase products.</p>
        <p>The result was an easy to use interface, slick and neat with all major sections presented in a clear way on the homepage.</p>
        <p>We focused on a smooth and simple user-experience rather than flashy animations and graphics. The end result was an attractive and professional looking interface, offering quick access to information and products.</p>",
      client: "Hosri Group",
      task: "Web Design",
      region: "Lebanon",
      created: "2011",
      category: "Website",
      website: "http://sacotel.com"
    )

    3.times do |n|
      work20.workgalleries.create!(
        photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/sacotel/img-#{n+2}.jpg"))
      )
    end

    work21 = Work.create!(
      title: "Anahar",
      photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/anahar.jpg")),
      photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/anahar.jpg")),
      photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/anahar/anahar-main.jpg")),
      caption: "Anahar / <em>Website</em>",
      description: "<p>An Nahar is a leading Arabic-language daily newspaper published in Lebanon.</p>
      <p>An Nahar news app is one of the first Arabic news apps to be designed for Windows 8.</p>
      <p>WonderEight worked on the creation of this app since its very early stages as part of its</p>",
      client: "Microsoft",
      task: "Windows 8 App Design",
      region: "Lebanon",
      created: "2012",
      category: "Website",
    )

    3.times do |n|
      work21.workgalleries.create!(
        photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/anahar/img-#{n+2}.jpg"))
      )
    end

    work22 = Work.create!(
      title: "Ma2too3a",
      photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/ma2too3a.jpg")),
      photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/ma2too3a.jpg")),
      photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/ma2too3a/ma2too3a-main.jpg")),
      caption: "Ma2too3a / <em>Website</em>",
      description: "<p>ma2too3a! is a crowd sourced mobile application that offers real time location based news and traffic updates. It was deployed on the 5th of August, 2012 for iOS and later on for Android and windows devices. ma2too3a! allows any user to inform others about the whereabouts of traffic jams, and news such as protests, armed combat, or road blockage instantly.</p>
      <p>We were asked to adapt an originally iOS based app to the new Microsoft design language.</p>
      <p>After studying the main features and experience of the app we came up with a smooth and slick interface offering direct access to all the important features of the app.</p>",
      client: "Microsoft",
      task: "Windows 8 App Design",
      region: "Lebanon",
      created: "2012",
      category: "Website",
    )

    2.times do |n|
      work22.workgalleries.create!(
        photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/ma2too3a/img-#{n+2}.jpg"))
      )
    end

    work23 = Work.create!(
      title: "Picon",
      photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/picon.jpg")),
      photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/picon.jpg")),
      photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/picon/picon-main.jpg")),
      caption: "Picon / <em>Illustration</em>",
      description: "",
      client: "Picon",
      task: "Illustration",
      region: "Lebanon",
      created: "",
      category: "Illustration",
    )

    1.times do |n|
      work23.workgalleries.create!(
        photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/picon/img-#{n+2}.jpg"))
      )
    end

    work24 = Work.create!(
      title: "Disney",
      photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/disney.jpg")),
      #photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/disney.jpg")),
      #photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/disney/disney-main.jpg")),
      caption: "Disney / <em>Illustration</em>",
      description: "",
      client: "Disney",
      task: "Illustration",
      region: "Lebanon",
      created: "",
      category: "Illustration",
    )

    # 2.times do |n|
    #   work19.workgalleries.create!(
    #     photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/picon/img-#{n+2}.jpg"))
    #   )
    # end

    work24 = Work.create!(
      title: "Dolsy",
      photo: File.open(File.join(Rails.root, "app/assets/images/portfolio/dolsy.jpg")),
      #photo_over: File.open(File.join(Rails.root, "app/assets/images/portfolio/hover/disney.jpg")),
      #photo_main: File.open(File.join(Rails.root, "app/assets/images/portfolio/details/disney/disney-main.jpg")),
      caption: "Dolsy / <em>Illustration</em>",
      description: "",
      client: "Dolsy",
      task: "Illustration",
      region: "Lebanon",
      created: "",
      category: "Illustration",
    )
  end
end
