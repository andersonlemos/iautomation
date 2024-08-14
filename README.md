# IAutomation

A simple IA Automation Project using docker + n8n + redis + postgres

## Introduction

The IAutomation is a [GUI APPLICATION](https://en.wikipedia.org/wiki/Graphical_user_interface) (aka Graphical user interface) to emulate locally n8n cloud application.

## Project Structure
>
> - `.env` - Generic credentials and environment configurations.
> - `compose.yml` - All container configurations
> - `init-data.sh` - Contains script to create the first user database for tests.
> - `makefile` - Contains a very simple structure for running and stop containers.
>
### Dependencies

|library|version|
|---|---|---|
|docker|[27.1.2](https://docs.docker.com/get-docker/)|
|compose|[2.29.1-desktop.1](https://docs.docker.com/compose/install/)|
|make|[GNU Make 4.3](https://www.gnu.org/software/make/)|
|---|---|---|

**NOTE:** *The project was written in docker and using compose, so you will need to [install](https://docs.docker.com/get-docker/)on your system.*

## On Unix based systems

### Running the application

Commands to run the application:

- Use `make up`  to start th containers.

Example:

```bash
make up
```

or in the project's root folder:

```bash
docker compose --file compose.yml up
```

## Stop the containers

To stop the containers use commands:

```bash
make down
```

or in the project's root folder:

```bash
docker compose --file compose.yml down --remove-orphans
```

After executing the commands above, the container will be working and shows log in terminal without previous configurations.
