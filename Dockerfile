FROM mcr.microsoft.com/dotnet/sdk:5.0
EXPOSE 5000/tcp

COPY CoreMvcAppService /app
COPY ./entrypoint.sh /

WORKDIR /app
RUN chmod +x /entrypoint.sh
CMD /bin/bash /entrypoint.sh
