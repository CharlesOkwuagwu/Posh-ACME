@{

RootModule = 'Posh-ACME.psm1'
ModuleVersion = '4.4.0'
GUID = 'f14adab4-278e-4dcb-b843-421fa5a5e688'
Author = 'Ryan Bolger'
Copyright = '(c) 2018 Ryan Bolger. All rights reserved.'
Description = @'
ACME protocol client for obtaining certificates using Let''s Encrypt (or other ACME compliant CA)
This is a custom build intended allow compatibility with .NET 4.6.1. It should not be used with PowerShell Core and you should only attempt to use RSA based key options.
'@
CompatiblePSEditions = @('Desktop','Core')
PowerShellVersion = '5.1'
DotNetFrameworkVersion = '4.6.1'

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = @(
    'lib\BC.Crypto.1.8.8.dll'
    'System.Net.Http'
)

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = 'Posh-ACME.Format.ps1xml'

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @(
    'Complete-PAOrder'
    'Export-PAAccountKey'
    'Get-KeyAuthorization'
    'Get-PAAccount'
    'Get-PAAuthorization'
    'Get-PACertificate'
    'Get-PAOrder'
    'Get-PAPlugin'
    'Get-PAPluginArgs'
    'Get-PAServer'
    'Install-PACertificate'
    'Invoke-HttpChallengeListener'
    'New-PAAccount'
    'New-PACertificate'
    'New-PAOrder'
    'Publish-Challenge'
    'Remove-PAAccount'
    'Remove-PAOrder'
    'Remove-PAServer'
    'Revoke-PAAuthorization'
    'Save-Challenge'
    'Send-ChallengeAck'
    'Set-PAAccount'
    'Set-PAOrder'
    'Set-PAServer'
    'Submit-ChallengeValidation'
    'Submit-OrderFinalize'
    'Submit-Renewal'
    'Unpublish-Challenge'
)

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @(
    'Get-PAAuthorizations'
)

PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'LetsEncrypt','ssl','tls','certificates','acme'

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/rmbolger/Posh-ACME/blob/main/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/rmbolger/Posh-ACME'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = @'
## 4.4.0 (2021-05-03)

* Added new DNS plugins
  * [Constellix](https://constellix.com/)
  * [All-Inkl](https://all-inkl.com/) (Thanks @astaerk)
  * [Easyname](https://www.easyname.com/) (Thanks @codemanat)
* Added `Folder` property to Get-PAOrder output
* Added `KeyFile` parameter to New-PAOrder to allow importing an existing private key
'@

    }

}

}
