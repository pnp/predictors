#
# Module manifest for module 'M365CLI.PowerShell.Predictor'
#
# Generated by: Anoop Tatti
#
# Generated on: 22/09/2022
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'CLI.Microsoft365.PowerShell.Predictor.psm1'

# Version number of this module.
ModuleVersion = '1.0.0'

# Supported PSEditions
CompatiblePSEditions = 'Core'

# ID used to uniquely identify this module
GUID = '11e99a0f-60a5-4d60-a3d5-05d0e3ff5884'

# Author of this module
Author = 'Microsoft 365 Patterns and Practices'

# Company or vendor of this module
CompanyName = 'Microsoft 365 Patterns and Practices'

# Copyright statement for this module
# Copyright = '(c) PnP. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft 365 CLI PowerShell Predictor - Module providing recommendations for cmdlets comprised in the Microsoft 365 CLI PowerShell module - This module requires PowerShell 7.2 and PSReadLine 2.2.2.'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '7.2'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# ClrVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
  RequiredModules = @(@{ModuleName = 'PSReadLine'; ModuleVersion = '2.2.2'; })

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @('Update-CLIMircosoft365Predictions')

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @('Set-CLIMicrosoft365PredictorSearch')

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'SharePoint','M365','CLI','PnP','PowerShell','Predictor','Recommendation','Prediction'

        # A URL to the license for this module.
        # LicenseUri = ''

        # A URL to the main website for this project.
        # Decide once the code is moved to the PnP M365 CLI GitHub repo
         ProjectUri = 'https://github.com/anoopt/CLI.Microsoft365.PowerShell.Predictor'

        # A URL to an icon representing this module.
        IconUri = 'https://raw.githubusercontent.com/pnp/media/40e7cd8952a9347ea44e5572bb0e49622a102a12/parker/ms/300w/parker-ms-300.png'

        # ReleaseNotes of this module
        ReleaseNotes = '
        
        v1.0.0
        - Moved code to the PnP repo
        
        v0.0.5
        - Changed search to search in command only from the entire command with parameters
        
        v0.0.4
        - Changed default search to Contains from StartsWith
        - Added code related to null checks

        v0.0.2
        - Added project URL
        
        v0.0.1
        Initial release with the following features:
        - Provide predictions for CLI for Microsoft 365 cmdlets in PowerShell
        - Set-CLIMicrosoft365PredictorSearch cmdlet to set the search string for the predictor
        - Update-CLIMircosoft365Predictions function to update the predictor with the latest cmdlets
        '

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

