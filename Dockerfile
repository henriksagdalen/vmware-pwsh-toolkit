# Pull the long term supported stable powershell image from mcr.microsoft.com
FROM mcr.microsoft.com/dotnet/sdk:8.0

# Disable telemetry 
ENV POWERSHELL_TELEMETRY_OPTOUT=1 \
    # List the modules to install
    MODULES="VMware.PowerCLI \
            PowerVCF \
            PowerValidatedSolutions \
            VMware.CloudFoundation.Reporting \
            VMware.CloudFoundation.CertificateManagement \
            VMware.CloudFoundation.LoggingManagement \
            VMware.CloudFoundation.PasswordManagement \
            VMware.CloudFoundation.PowerManagement"


# Install modules
RUN pwsh -Command "Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted"
RUN pwsh -Command "foreach (\$module in \$env:MODULES.Split(' ')){Install-Module -Name \$module -Scope CurrentUser -Force -AllowClobber | Out-Null}"

# Set the default shell
CMD ["pwsh"]