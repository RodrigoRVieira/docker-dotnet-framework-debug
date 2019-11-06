FROM microsoft/dotnet-framework:4.7.2-runtime

LABEL Author="Rodrigo Riccitelli Vieira"
LABEL Version="0.1"
LABEL Description="This image is .Net Framework 4.7.2 based with Sysinternals Suite embedded for debugging and troubleshooting purposes"

ADD https://download.sysinternals.com/files/SysinternalsSuite.zip /SysinternalsSuite/SysinternalsSuite.zip

RUN powershell -Command "expand-archive -Path 'C:\SysinternalsSuite\SysinternalsSuite.zip' -DestinationPath 'C:\SysinternalsSuite'"

RUN del C:\SysinternalsSuite\SysinternalsSuite.zip