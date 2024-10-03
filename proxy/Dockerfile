FROM mcr.microsoft.com/windows/servercore/iis:windowsservercore-ltsc2022

#custom config
COPY iis-config /inetpub/config

#working dir
WORKDIR /inetpub

EXPOSE 80 443
#iis service
CMD ["powershell", "Start-Service", "w3svc"]
