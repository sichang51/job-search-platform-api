# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Company.create(co_name: "Microsoft", co_logo: "https://static.vecteezy.com/system/resources/previews/027/127/592/original/microsoft-logo-microsoft-icon-transparent-free-png.png", co_location: "Redmond, WA", co_description: "Microsoft is the largest vendor of computer software in the world. It is also a leading provider of cloud computing services, video games, computer and gaming hardware, search and other online services. Microsoft's corporate headquarters is located in Redmond, Wash., and it has offices in more than 60 countries.")

Company.create(co_name: "Amazon", co_logo: "https://cdn.logojoy.com/wp-content/uploads/20230629132639/current-logo-600x338.png", co_location: "Seattle, WA", co_description: "Amazon.com, online retailer, manufacturer of electronic book readers, and Web services provider that became the iconic example of electronic commerce. Its headquarters are in Seattle, Washington.")

Company.create(co_name: "Apple", co_logo: "https://cdn.freebiesupply.com/images/large/2x/apple-logo-transparent.png", co_location: "Cupertino, CA", co_description: "Apple Inc (Apple) designs, manufactures, and markets smartphones, tablets, personal computers, and wearable devices. The company offers software applications and related services, accessories, and third-party digital content. Apple’s product portfolio includes iPhone, iPad, Mac, iPod, Apple Watch, and Apple TV. It also provides advertising services, payment services, cloud services, and various consumer and professional software applications.")
