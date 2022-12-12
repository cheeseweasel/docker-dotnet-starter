# Docker Rails Starter

Everything to initialise a new DotNet Core app in a docker environment

Create a new app in the `src` folder by running: `dev/dotnet-init [Web app name]`

Copy contents of `csproj.additional.xml` to the main app's `.csproj`

Ensure the correct app name in the `docker-compose.yml` `command` argument

Ensure correct path for the `node_modules` volume in docker compose
