
# ti-dhome-ui

UI web for ti-dhome

# Managing the UI

Run, stop and clean:

```bash
$ docker-compose up -d
...
$ docker-compose stop
...
$ docker-compose down
```

# How-To

## Create or edit the UI from scratch

1) Create a blank node-js project Dockerfile recipe.

This is current Dockerfile except line "ADD" and "npm install".

2) Run it with mapping folder where project will be created:

```bash
$ docker run -it -v $(pwd)/src/ti-dhome:/opt/ti-dhome kalemena/ti-dhome-ui bash
$$ vue init webpack .
```

Answer questions as you like:

```bash
> ? Generate project in current directory? Yes
> ? Project name ti-dhome
> ? Project description ti-dhome-ui
> ? Author Kalemena
> ? Vue build standalone
> ? Install vue-router? Yes
> ? Use ESLint to lint your code? Yes
> ? Pick an ESLint preset Standard
> ? Setup unit tests with Karma + Mocha? Yes
> ? Setup e2e tests with Nightwatch? No
>
>   vue-cli · Generated "ti-dhome".
>
>   To get started:
>   
>     npm install
>     npm run dev
>   
>   Documentation can be found at https://vuejs-templates.github.io/webpack
```

Outcome is that package.json was modified to add the libraries.

## Editing the web app

Every time you need edit something:

1) Adding some libraries for example:

```bash
$ docker run -it -v $(pwd)/src/ti-dhome:/opt/ti-dhome kalemena/ti-dhome-ui bash
$$ npm install vue-awesome-swiper --save
```

Outcome is that package.json was modified to add the libraries.

2) Edit the files to render from host and check results:

Enable map from 'src' (in docker-compose.yml, volumes is mapped)

```bash
$ docker-compose up -d
```
