﻿FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY ["source/APIs/ExpressStore.Services.Core.API/ExpressStore.Services.Core.API.csproj", "source/APIs/ExpressStore.Services.Core.API/"]
RUN dotnet restore "source/APIs/ExpressStore.Services.Core.API/ExpressStore.Services.Core.API.csproj"
COPY . .
WORKDIR "/src/source/APIs/ExpressStore.Services.Core.API"
RUN dotnet build "ExpressStore.Services.Core.API.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "ExpressStore.Services.Core.API.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "ExpressStore.Services.Core.API.dll"]
