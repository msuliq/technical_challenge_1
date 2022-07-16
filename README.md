# Technical Challenge in Rails 7

## Description

* Initial task set out in the challenge is below.
**Scope**

- Backend
    - The system has **users**
        - Users have a **name** and **email**
    - The system has **flats** (apartments)
        - Flats have a **name** and **a location** (coordinates)
        - Users can share flats
    - The system has **neighborhoods**
        - Neighborhoods have a **name** and a **coordinate range** (criteria)
        - A flat **belongs to** a neighborhood if the location matches the criteria
- Frontend (one page)
    - Flats
        - Displays a list/table of Flats with relevant data
        - A flat can be created with name and location, and is inserted dynamically into the list
    - Users
        - Displays a list/table of Users with relevant data
        - A Flat can be removed from a user dynamically

## Download

* To get started with the app, clone the repo and then install the needed gems. You can clone the repo as follows:

```
$ git clone https://github.com/msuliq/technical_challenge_1.git 
$ cd technical_challenge_1/
```

## Dependencies

* To install the gems, you will need the same versions of Ruby and Bundler used to build the sample app, which you can find using the cat and tail commands as follows:

```
$ cat .ruby-version
<Ruby version number>
$ tail -n1 Gemfile.lock
   <Bundler version number>
```

* Next, install the versions of ruby and the bundler gem from the above commands. The Ruby installation is system-dependent. If you are using rvm you can type following commands in the terminal:

```
$ rvm get stable
$ rvm install <Ruby version number>
$ rvm --default use <Ruby version number>
```

* Once Ruby is installed, the bundler gem can be installed using the gem command:

```
$ gem install bundler -v <version number>
```

* Then the rest of the necessary gems can be installed with bundle (taking care to skip any production gems in the development environment):

```
$ bundle _<version number>_ config set --local without 'production'
$ bundle _<version number>_ install
```

* Here you should replace `<version number>` with the actual version number. For example, if `<version number>` is `2.3.11`, then the commands should look like this:

```
$ gem install bundler -v 2.3.11
$ bundle _2.3.11_ config set --local without 'production'
$ bundle _2.3.11_ install
```


## Installation

* Once you have successfully completed above steps, you will need to migrate the database:

```
$ rails db:migrate
```

* Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

* If the test suite passes, you’ll be ready to seed the database with sample users and run the app in a local server:

```
$ rails db:seed
$ bin/dev
```

* Follow the instructions in terminal to view the app. The http address might look like `http://127.0.0.1:3000`.

## Executing program

* The app may be opened in any browser of your preference by navigating to localhost address specified in your terminal.
* All functionality specified in the scope of the challenge has been implemented except for dynamic assigning of neighborhoods to newly created flats based on flat's latitude and longitude falling within the rectangular boundaries specified for the neighborhoods.

## License
All source code is available under the MIT License. See [LICENSE.MD](https://github.com/msuliq/technical_challenge_1/blob/master/LICENSE) for details.
