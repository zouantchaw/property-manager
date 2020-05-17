# Property Manager: Landlord App

This web application was created to for Landlords. List your properties, add tenants looking for homes, and manage them all in one place!

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Installing

Fork and clone this repository to your local machine. Save it somewhere it'll be easy to find, like on your Desktop. Then you want to open your terminal application:

If you saved the file in your Desktop type this in your Terminal
```
cd Desktop/property-manager 
```

If you saved the file in another folder, follow the same path procedure. From here you can go to USAGE.

### Usage 

At this step you should already be in your terminal and in the project directory. If not go back to INSTALLING.

In the terminal follow these steps:

Step 1 enter:
```
bundle install
```

Step 2 enter:
```
rake db:migrate
```

Step 3 enter:
```
rake db:seed
```

Step 4 enter:
```
shotgun
```
After step 4 you should have activated a local server. You should see 4 lines of messages. The most important line is the last line. You'll need the last 4 digits in this case it's "9393":

```
 Listening on 127.0.0.1:9393, CTRL+C to stop
```

Open a web browser and in the url go to http://localhost:9393
If your last 4 digit numbers are different, just fill it into the url without the existing numbers ^ above. 

If you completed every step, then you should see the app render on your browser. Sign up for an account and have fun!

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/zouantchaw/project_countries_cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/zouantchaw/project_countries_cli/blob/master/CODE_OF_CONDUCT.md).

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Code of Conduct

Everyone interacting in the NytBestsellersCli project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/zouantchaw/project_countries_cli/blob/master/CODE_OF_CONDUCT.md).