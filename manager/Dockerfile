# Use Windows Server Core as the base image
FROM mcr.microsoft.com/windows/servercore:ltsc2022

# Install Java (you may replace the URL with the latest JDK version)
RUN powershell -Command \
    Invoke-WebRequest -Uri https://download.oracle.com/java/17/latest/jdk-17_windows-x64_bin.exe -OutFile C:\jdk-installer.exe; \
    Start-Process C:\jdk-installer.exe -ArgumentList '/s' -Wait; \
    Remove-Item C:\jdk-installer.exe

# Set environment variables for Java
ENV JAVA_HOME="C:\Program Files\Java\jdk-17"
ENV PATH="$PATH;$JAVA_HOME\bin"

# Copy the application files
COPY . C:/app

# Set working directory
WORKDIR C:/app

# Start the OpenRemote Manager
CMD ["java", "-jar", "openremote-manager.jar"]
