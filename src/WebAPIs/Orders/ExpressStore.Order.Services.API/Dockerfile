#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY ["src/WebAPIs/Orders/ExpressStore.Order.Services.API/ExpressStore.Order.Services.API.csproj", "src/WebAPIs/Orders/ExpressStore.Order.Services.API/"]
RUN dotnet restore "src/WebAPIs/Orders/ExpressStore.Order.Services.API/ExpressStore.Order.Services.API.csproj"
COPY . .
WORKDIR "/src/src/WebAPIs/Orders/ExpressStore.Order.Services.API"
RUN dotnet build "ExpressStore.Order.Services.API.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "ExpressStore.Order.Services.API.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "ExpressStore.Order.Services.API.dll"]