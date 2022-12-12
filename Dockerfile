#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

#Depending on the operating system of the host machines(s) that will build or run the containers, the image specified in the FROM statement may need to be changed.
#For more information, please see https://aka.ms/containercompat

# FROM mcr.microsoft.com/dotnet/aspnet:7.0-alpine AS base
# WORKDIR /app
FROM mcr.microsoft.com/dotnet/sdk:7.0-alpine AS build

WORKDIR /src

# RUN apt-get update \
#     && apt-get install -y --no-install-recommends \
#         postgresql-client \
#         inotify-tools \
#         build-essentials \
#     && rm -rf /var/lib/apt/lists/*
# 
# RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - \
#   && apt-get install -y nodejs
# 
RUN apk update && apk add nodejs-current npm
# RUN corepack enable && corepack prepare yarn@stable --activate

# RUN apk update && apk install -y curl apt-transport-https wget && \
#   curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
#   echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
#   apt-get update && apt-get install -y yarn

EXPOSE 80
EXPOSE 443

# COPY ["WebApplication1/WebApplication1.csproj", "WebApplication1/"]
# RUN dotnet restore "WebApplication1/WebApplication1.csproj"
# COPY . .
# WORKDIR "/src/WebApplication1"
# RUN dotnet build "WebApplication1.csproj" -c Release -o /app/build

# FROM build AS publish
# RUN dotnet publish "WebApplication1.csproj" -c Release -o /app/publish

# FROM base AS final
# WORKDIR /app
# COPY --from=publish /app/publish .
# ENTRYPOINT ["dotnet", "WebApplication1.dll"]
