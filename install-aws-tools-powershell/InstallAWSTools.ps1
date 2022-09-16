# This script checks and installs aws.tools.installer and aws.tools.common modules

# Create a list of all modules installed and then identify if the required modules are already installed.
$ListofModulesInstalled = (Get-InstalledModule).Name
# https://www.powershellgallery.com/packages/AWS.Tools.Installer/1.0.2.4
Write-Host "Checking if AWS.Tools.Installer is installed on this instance."
    if ($ListofModulesInstalled -contains "AWS.Tools.Installer")
    { 
        Write-Host "AWS.Tools.Installer module exists."
    }else { 
        Write-Host "AWS.Tools.Installer module does not exist and needs to be installed."
        Install-Module -Name AWS.Tools.Installer -Force
        Write-Host "AWS.Tools.Installer was installed successfully."
    }
# https://www.powershellgallery.com/packages/AWS.Tools.Common/4.1.50
Write-Host "Checking if AWS.Tools.Common is installed on this instance."
    if ($ListofModulesInstalled -contains "AWS.Tools.Common")
    { 
        Write-Host "AWS.Tools.Common module exists."
    }else { 
        Write-Host "AWS.Tools.Common module does not exist and needs to be installed."
        Install-Module -Name AWS.Tools.Common -Force
        Write-Host "AWS.Tools.Common was installed successfully."
    }