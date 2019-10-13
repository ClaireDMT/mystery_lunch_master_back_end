# Mystery Lunch test

Mystery Lunch bot is designed as a scaffold for coding challenge to be extended by others.

To prepare your enviroment you can choose either install ruby 2.5.1 and postgresql 10.5

If you don't want to trash your computer and install everything manually, there is a possibility to run it on Docker container. In Adjust we do not use containers, but it's just a convenient way to load project in couple of minutes!

### To run the project with Docker:
* Install docker (for mac: https://docs.docker.com/docker-for-mac/install/ )
* Install docker-compose https://docs.docker.com/compose/install/

Then when unzip the project
```sh
$ cd mystery-lunch
```
Create .env file and copy data from .env.example

To build the container run once
```
$ docker-compose build
```

To run the container

```
docker-compose up
```

In your terminal open second terminal window and navigate to the project (`cd mystery-lunch`)

On that terminal window :
* create the database:
```
$ docker-compose exec adjust_challenge rails db:create
```

*  run the migration
```
$ docker-compose exec adjust_challenge rails db:migrate
```
* populate predefined seed
```
docker-compose exec adjust_challenge rails db:seed
```

And that's done. You can run other rails or rake commands (`bundle install`, `bundle rails c`, etc.) on that terminal window with just using the  same beggining (`docker-compose exec adjust_challenge`) e.g:
```
docker-compose exec adjust_challenge bundle rails c
```

visit [http://localhost:3000](http://localhost:3000)


if you want to stop the services in the same window as run the above commands you can run

```
$ docker-compose stop
```

The first window where you run `docker-compose up` should now be killed. In
this window while running the application you can see the logs as well and the errors.
Or you can stop within first terminal window with `ctrl+c` command.

That's it, you are good to go solve the challenge.

If you decided to install everything manually the steps are the same, you just need to run commands without the `docker-compose` and `docker-compose exec adjust_challenge`.

