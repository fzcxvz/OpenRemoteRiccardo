FROM mcr.microsoft.com/windows/servercore:ltsc2022

RUN powershell -Command \
    Invoke-WebRequest -Uri https://download.oracle.com/java/17/latest/jdk-17_windows-x64_bin.exe -OutFile C:\jdk-installer.exe; \
    Start-Process C:\jdk-installer.exe -ArgumentList '/s' -Wait; \
    Remove-Item C:\jdk-installer.exe

COPY . C:/app
WORKDIR C:/app
CMD ["java", "-jar", "agent.jar"]
