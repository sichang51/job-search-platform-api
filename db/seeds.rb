# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Company.create(co_name: "Microsoft", co_logo: "https://static.vecteezy.com/system/resources/previews/027/127/592/original/microsoft-logo-microsoft-icon-transparent-free-png.png", co_location: "Redmond, WA", co_description: "Microsoft is the largest vendor of computer software in the world. It is also a leading provider of cloud computing services, video games, computer and gaming hardware, search and other online services. Microsoft's corporate headquarters is located in Redmond, Wash., and it has offices in more than 60 countries.")

# Company.create(co_name: "Amazon", co_logo: "https://cdn.logojoy.com/wp-content/uploads/20230629132639/current-logo-600x338.png", co_location: "Seattle, WA", co_description: "Amazon.com, online retailer, manufacturer of electronic book readers, and Web services provider that became the iconic example of electronic commerce. Its headquarters are in Seattle, Washington.")

# Company.create(co_name: "Apple", co_logo: "https://cdn.freebiesupply.com/images/large/2x/apple-logo-transparent.png", co_location: "Cupertino, CA", co_description: "Apple Inc (Apple) designs, manufactures, and markets smartphones, tablets, personal computers, and wearable devices. The company offers software applications and related services, accessories, and third-party digital content. Apple’s product portfolio includes iPhone, iPad, Mac, iPod, Apple Watch, and Apple TV. It also provides advertising services, payment services, cloud services, and various consumer and professional software applications.")

# Job.create(company_id: 1, job_title: "Software Engineer", job_description: "As a Software Engineer, you will work alongside a brilliant technical team across building data pipelines to pull millions of trend and demand data-points from across the web, making sense of the data we collect by brainstorming and implementing new architectures, enhancing the scalability and efficiency of our machine learning systems, implementing slick new designs for our website at each new drop & creating novel text-messaging interfaces to communicate with our team.", job_url: "https://www.microsoft.com", job_type: "Full-Time", job_yrs_exp: "5 - 7 years", job_location: "Redmond, WA", job_salary_range: "$100,000 - $125,000")

# Job.create(company_id: 2, job_title: "Software Engineer - Full Stack", job_description: "We are a small team looking for a full stack developer that wants to build, learn, and take ownership of their work. Someone who learns quickly and eagerly. Someone who builds stuff and makes sure it does what it's supposed to do. Someone who fixes things. Who uses the right technology for the job at hand. And communicates effectively and understands the business and purpose of what they are building.", job_url: "https://www.amazon.com", job_type: "Full-Time", job_yrs_exp: "3 - 5 years", job_location: "San Jose, CA", job_salary_range: "$95,000 - $100,000")

# Job.create(company_id: 3, job_title: "Frontend Web Engineeer", job_description: "We are seeking a talented Web Developer to join our team and play a crucial role in building the next generation of intelligent airport systems. As a Web Developer, you will be responsible for designing, developing, and maintaining the web-based components of HALO. Collaborating closely with our software engineers and cross-functional teams, you will contribute to creating an exceptional user experience for clients across the aviation industry. ", job_url: "https://www.apple.com", job_type: "Part-Time", job_yrs_exp: "2 - 4 years", job_location: "Los Angeles, CA", job_salary_range: "$85,000 - $98,000")

User.create(
  user_name: "testsimon",
  user_email: "simon@test.com",
  user_phn_num: "555-555-5555",
  user_bio: "Several years in sales analytics, currently working at...",
  user_linkedin_url: "https://www.linkedin.com/test",
  user_twitter_handle: "@toobusy",
  user_website_url: "https://www.profile.com",
  user_resume_url: "https://www.resumetest.com",
  user_github_url: "https://www.githubtest.com",
  user_photo_url: "https://www.phototest.com",
)

User.create(
  user_name: "chucknorris",
  user_email: "chuck@test.com",
  user_phn_num: "111-111-1111",
  user_bio: "All arrays Chuck Norris declares are of infinite size, because Chuck Norris knows no bounds.  Chuck Norris finished World of Warcraft.",
  user_linkedin_url: "https://www.linkedin.com/testchuck",
  user_twitter_handle: "@destroyerofworlds",
  user_website_url: "https://www.profile.com/chuck",
  user_resume_url: "https://www.resumetest.com/chuck",
  user_github_url: "https://www.githubtest.com/chuck",
  user_photo_url: "https://www.phototest.com/chuck",
)
