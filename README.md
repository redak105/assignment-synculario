# Synculario

At [Synculario](http://www.syncular.io/), we build a team of developers who **aspire to become A-players one day.**

With our internal mentors and leaders, we help developers learn and grow. Not only professionally (hard skills), but also personally. We give feedback. We experiment. We learn from our mistakes during a weekly retrospective.

We build exciting startups and products.

To join our team, we need to validate your current skillset and mindset.

## Areas we will be evaluating

1. **Architecture** (components, infrastructure, stack)
1. **Project structure** (file/folder organization)
1. **Complexity** (easier to understand code is better)
1. **Coding style**
1. **Programming language and platform features** utilization
1. **Documentation** (inline, readme, etc.)
1. **Testing approach** (unit/integration/end2end tests)
1. **Resolution** for all the challenges you faced

NOTE: No need to write tests for every single function (which is obviously time consuming), but **please have at least 1-2 tests** to demonstrate you can set it up properly. Follow common sense and best practices.

## Recommendations

In general, we are huge fans of:

* Infrastructure-as-a-code
* Zero down time - having no single point of failure
* Standardization - as much as possible
* Re-usability

Please, take it into consideration when submitting your assignment.

Now, without further ado, please look at the assignment:


# Assignment for Synculario

This assignment is good for the following roles:

* **Full-stack web developer**
  * Backend dev
  * Frontend dev
* **Mobile app developer**
  * iOS dev
  * Android dev
* **Data engineer / scientist**

# Expectations

You may use language and stack of your choice.

Our preferred stack is based on Javascript (React, nodejs), Swift (iOS), Java (Android), Python and R for data engineering and analysis.

Recommended data storage is Reddis. Should there be a good reason, feel free to experiment with another storage.

In general, the outcome of your work should be a simple MVP. You shouldn't spend too much time on it. Be efficient. 

**IMPORTANT: If needed, decrease the scope of your work (explain it in README), but do not compromise the quality of your outcome.**

# City Bike

We will use IoT data provided by City Bike.

**[Citi Bike](https://www.citibikenyc.com/)** is New York City’s bike share system, and the largest in the nation. Citi Bike launched in May 2013 and has become an essential part of our transportation network. It's fun, efficient and affordable – not to mention healthy and good for the environment.

Citi Bike, like other bike share systems, consists of a fleet of specially designed, sturdy and durable bikes that are locked into a network of docking stations throughout the city. The bikes can be unlocked from one station and returned to any other station in the system, making them ideal for one-way trips. People use bike share to commute to work or school, run errands, get to appointments or social engagements, and more.

Citi Bike is available for use 24 hours/day, 7 days/week, 365 days/year, and riders have access to thousands of bikes at hundreds of stations across Manhattan, Brooklyn, Queens and Jersey City.

### City Bike System Data 

Where do Citi Bikers ride? When do they ride? How far do they go? Which stations are most popular? What days of the week are most rides taken on? You can find answers in a public data set provided by City Bike.

This data is provided according to the [NYCBS Data Use Policy](https://www.citibikenyc.com/data-sharing-policy).

https://www.citibikenyc.com/system-data

### Data set

Please, download all data files from the current year. You can identify month and year from the file prefix: **YYYYMM**

* JC-**201801**-citibike-tripdata.csv.zip
* JC-**201802**-citibike-tripdata.csv.zip
* JC-**201803**-citibike-tripdata.csv.zip
* JC-**201804**-citibike-tripdata.csv.zip
* ...

https://s3.amazonaws.com/tripdata/index.html

### Local data store

Now, import data to your local data store - Redis.

# Assignment

### @Mobile app developer

We expect you will:

* Build a simple iOS or Android app (choose one)
* Build a basic API (backend for the app)
* Import the data to a Reddis data storage

Feature set for the mobile app is defined by yourself. Create whatever you want using the data you have. [#KISS](https://en.wikipedia.org/wiki/KISS_principle)

**This should be a simple MVP.** Feel free to use templates, plugins, ... whatever to make it work ASAP.

Don't forget to use containers, package managers, etc. Make it reusable. Make it nice.

### @Full-stack web developer

We expect you will:

* Build a simple web frontend (use React or Angular)
* Build backend for the website (nodejs)
* Import the data to a Reddis data storage

Feature set for the frontend website is defined by yourself. Create whatever you want using the data you have. [#KISS](https://en.wikipedia.org/wiki/KISS_principle)

**This should be a simple MVP.** Feel free to use templates, plugins, ... whatever to make it work ASAP.

Don't forget to use containers, package managers, etc. Make it reusable. Do it like a pro.

### @Data engineer / Data scientist

We expect you will

* Import data from the data set
* Analyze the data using Python or R

Find something interesting in the data set and visualize it.

Feel free to use Jupyter.

# Submission

Once you have finished, please, send us an email to **tech@syncular.io**

### @Mobile & @Full-stack developers:

1. URL to git repository (GitHub or BitBucket) - **one or more repos,** based on what exactly you were working on
1. Instructions how can we run the Docker container - to run the APIs
1. Instructions how to run the mobile app or frontend web

### @Data engineers:

1. Instructions where can we find the outcome of your analysis
1. URL to scripts that got you the results (git repo or Jupyter)

**IMPORTANT: If needed, decrease the scope of your work (explain it in README), but do not compromise the quality of your outcome.**

Good luck in your endeavor and remember...

> "No one in the brief history of computing has ever written a piece of perfect software. It's unlikely that you'll be the first." - Andy Hunt

:-) 

[~Synculario](http://www.syncular.io/)
