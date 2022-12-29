#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY ["src/WebAPIs/Localizations/ExpressStore.Services.Localizations.API/ExpressStore.Services.Localizations.API.csproj", "src/WebAPIs/Localizations/ExpressStore.Services.Localizations.API/"]
RUN dotnet restore "src/WebAPIs/Localizations/ExpressStore.Services.Localizations.API/ExpressStore.Services.Localizations.API.csproj"
COPY . .
WORKDIR "/src/src/WebAPIs/Localizations/ExpressStore.Services.Localizations.API"
RUN dotnet build "ExpressStore.Services.Localizations.API.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "ExpressStore.Services.Localizations.API.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "ExpressStore.Services.Localizations.API.dll"]