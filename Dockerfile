FROM microsoft/aspnetcore:2.0.5
ARG source
WORKDIR /app
EXPOSE 80
COPY ${source:-/publish} .
ENTRYPOINT ["dotnet", "Api.dll"]
