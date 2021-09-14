#image pour le build
FROM mcr.microsoft.com/dotnet/core/sdk:3.1 as build

WORKDIR /app

COPY src/cartservice.csproj .

RUN dotnet restore

COPY src/ .

RUN dotnet publish -c Release -o /out cartservice.csproj

#image pour l'execution
FROM mcr.microsoft.com/dotnet/core/runtime:3.1 

WORKDIR /app

COPY --from=build /out .
ENV ASPNETCORE_URLS http://*:7070
CMD ["dotnet", "cartservice.dll"]
