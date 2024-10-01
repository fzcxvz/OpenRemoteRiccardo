FROM mcr.microsoft.com/windows/servercore/iis:windowsservercore-ltsc2022

# Copy your custom configuration
COPY iis-config /inetpub/config

# Set working directory
WORKDIR /inetpub

# Expose ports for HTTP and HTTPS
EXPOSE 80 443

# Start IIS service
CMD ["powershell", "Start-Service", "w3svc"]
