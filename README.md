# vmware-pwsh-toolkit

This repository is used for building a container image comprising of a powershell runtime with a variety of installed modules aimed at simplifying administration and automation of VMware infrastructure. 

## Base image

This image is using mcr.microsoft.com/dotnet/sdk:8.0. This is the LTS version of the Powershell image.
Head over to the official documentation to learn more:
[learn.microsoft.com/powershell-in-docker](https://learn.microsoft.com/en-us/powershell/scripting/install/powershell-in-docker?view=powershell-7.5)

## Powershell modules installed

The following modules are installed from PSGallery:
* [VMware.PowerCLI](https://www.powershellgallery.com/packages/VMware.PowerCLI/13.3.0.24145081)
* [PowerVCF](https://www.powershellgallery.com/packages/PowerVCF/2.4.1.1000)
* [PowerValidatedSolutions](https://www.powershellgallery.com/packages/PowerValidatedSolutions/2.12.3.1000)
* [VMware.CloudFoundation.Reporting](https://www.powershellgallery.com/packages/VMware.CloudFoundation.Reporting/2.6.3.1001)
* [VMware.CloudFoundation.CertificateManagement](https://www.powershellgallery.com/packages/VMware.CloudFoundation.CertificateManagement/1.5.5.1001)
* [VMware.CloudFoundation.LoggingManagement](https://www.powershellgallery.com/packages/VMware.CloudFoundation.LoggingManagement/1.0.1.1000)
* [VMware.CloudFoundation.PasswordManagement](https://www.powershellgallery.com/packages/VMware.CloudFoundation.PasswordManagement/1.9.0.1008)
* [VMware.CloudFoundation.PowerManagement](https://www.powershellgallery.com/packages/VMware.CloudFoundation.PowerManagement/1.5.0.1000)
