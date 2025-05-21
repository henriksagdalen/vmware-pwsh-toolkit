# Pull the LTS stable release powershell image from mcr.microsoft.com
FROM mcr.microsoft.com/dotnet/sdk:8.0

# Disable telemetry 
ENV POWERSHELL_TELEMETRY_OPTOUT=1 \
    # List of modules to install
    MODULES="VMware.PowerCLI \
            PowerVCF \
            PowerValidatedSolutions"


# Install modules
RUN pwsh -Command "Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted"
RUN pwsh -Command "foreach (\$module in \$env:MODULES.Split(' ')){Install-Module -Name \$module -Scope CurrentUser -Force -AllowClobber}"

# Default shell
CMD ["pwsh"]