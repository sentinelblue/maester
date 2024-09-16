#
# Module manifest for module 'Maester'
#
# Generated by: Maester
#
# Generated on: 04/16/2024
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'Maester.psm1'

# Version number of this module.
ModuleVersion = '0.1.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = '502a7fe7-b1ae-4bf5-98db-00831b14ed6f'

# Author of this module
Author = 'Maester Team'

# Company or vendor of this module
CompanyName = 'Maester Team'

# Copyright statement for this module
Copyright = 'Maester Team. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Maester is an automation framework to assess and monitor your Microsoft 365 security configuration.'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

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
<# Requires Pester 5.5.0 but that is not declared here due to potential conflicts with the version of Pester that is
   pre-installed with Windows. See <https://pester.dev/docs/introduction/installation/#windows>. Pester will be updated
   if necessary by Install-MaesterTests.
#>
RequiredModules = @( @{ModuleName = 'Microsoft.Graph.Authentication'; GUID = '883916f2-9184-46ee-b1f8-b6a2fb784cee'; ModuleVersion = '2.2.0'; }
                     @{ModuleName = 'Pester'; GUID = 'a699dea5-2c73-4616-a270-1f7abb777e71'; ModuleVersion = '0.0.0'; } )

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
FunctionsToExport = 'Add-MtTestResultDetail', 'Clear-MtGraphCache', 'Connect-Maester',
               'Disconnect-Maester', 'Get-MtAuthenticationMethodPolicyConfig', 'Get-MtRoleMember',
               'Get-MtConditionalAccessPolicy', 'Get-MtGraphScope', 'Get-MtGroupMember',
               'Get-MtHtmlReport', 'Get-MtLicenseInformation',
               'Get-MtUserAuthenticationMethod', 'Get-MtUserAuthenticationMethodInfoByType',
               'Get-MtUser', 'Get-MtRole',
               'Get-MtSession',
               'Install-MaesterTests', 'Invoke-Maester', 'Invoke-MtGraphRequest',
               'Send-MtMail', 'Send-MtTeamsMessage', 'Test-MtAppManagementPolicyEnabled',
               'Test-MtCaAllAppsExists', 'Test-MtCaApplicationEnforcedRestriction',
               'Test-MtCaBlockLegacyExchangeActiveSyncAuthentication',
               'Test-MtCaBlockLegacyOtherAuthentication',
               'Test-MtCaBlockUnknownOrUnsupportedDevicePlatform',
               'Test-MtCaDeviceComplianceAdminsExists',
               'Test-MtCaDeviceComplianceExists', 'Test-MtCaEmergencyAccessExists',
               'Test-MtCaEnforceNonPersistentBrowserSession',
               'Test-MtCaEnforceSignInFrequency',
               'Test-MtCaExclusionForDirectorySyncAccount',
               'Test-MtCaLicenseUtilization', 'Test-MtCaMfaForAdmin',
               'Test-MtCaMfaForAdminManagement', 'Test-MtCaMfaForAllUsers',
               'Test-MtCaGroupsRestricted',
               'Test-MtCaGap',
               'Test-MtCaMfaForGuest', 'Test-MtCaMfaForRiskySignIn',
               'Test-MtCaRequirePasswordChangeForHighUserRisk',
               'Test-MtCaSecureSecurityInfoRegistration', 'Test-MtCisaDiagnosticSettings',
               'Test-MtCaWIFBlockLegacyAuthentication', 'Test-MtCisaBlockLegacyAuth',
               'Test-MtCisaBlockHighRiskUser', 'Test-MtCisaBlockHighRiskSignIn',
               'Test-MtCisaNotifyHighRisk', 'Test-MtCisaPhishResistant',
               'Test-MtCisaMfa', 'Test-MtCisaAuthenticatorContext',
               'Test-MtCisaMethodsMigration', 'Test-MtCisaWeakFactor',
               'Test-MtCisaPrivilegedPhishResistant', 'Test-MtCisaManagedDevice',
               'Test-MtCisaManagedDeviceRegistration', 'Test-MtCisaAppRegistration',
               'Test-MtCisaAppUserConsent', 'Test-MtCisaAppAdminConsent',
               'Test-MtCisaAppGroupOwnerConsent', 'Test-MtCisaPasswordExpiration',
               'Test-MtCisaGlobalAdminCount', 'Test-MtCisaGlobalAdminRatio',
               'Test-MtCisaCloudGlobalAdmin', 'Test-MtCisaPermanentRoleAssignment',
               'Test-MtCisaUnmanagedRoleAssignment', 'Test-MtCisaRequireActivationApproval',
               'Test-MtCisaAssignmentNotification', 'Test-MtCisaActivationNotification',
               'Test-MtCisaGuestUserAccess', 'Test-MtCisaGuestInvitation',
               'Test-MtCisaCrossTenantInboundDefault',
               'Test-MtCisaAutoExternalForwarding', 'Test-MtCisaSmtpAuthentication',
               'Test-MtCisaContactSharing', 'Test-MtCisaCalendarSharing',
               'Test-MtCisaExternalSenderWarning', 'Test-MtCisaAntiSpamAllowList',
               'Test-MtCisaAntiSpamSafeList', 'Test-MtCisaMailboxAuditing',
               'Test-MtCisaSpfRestriction', 'Test-MtCisaSpfDirective', 'Test-MtCisaDkim',
               'Test-MtCisaDmarcRecordExist', 'Test-MtCisaDmarcRecordReject',
               'Test-MtCisaDmarcAggregateCisa', 'Test-MtCisaDmarcReport',
               'Test-MtCisaDlp', 'Test-MtCisaDlpPii', 'Test-MtCisaDlpAlternate',
               'Test-MtCisaDlpBaselineRule', 'Test-MtCisaAttachmentFilter',
               'Test-MtCisaAttachmentFileType', 'Test-MtCisaEmailFilterAlternative',
               'Test-MtCisaBlockExecutable', 'Test-MtCisaMalwareAction', 'Test-MtCisaMalwareZap',
               'Test-MtCisaImpersonation', 'Test-MtCisaImpersonationTip', 'Test-MtCisaMailboxIntelligence',
               'Test-MtCisaSpamFilter', 'Test-MtCisaSpamAction', 'Test-MtCisaSpamBypass',
               'Test-MtCisaSpamAlternative', 'Test-MtCisaSafeLink', 'Test-MtCisaSafeLinkDownloadScan',
               'Test-MtCisaSafeLinkClickTracking', 'Test-MtCisaExoAlert', 'Test-MtCisaExoAlertSiem',
               'Test-MtCisaAuditLog', 'Test-MtCisaAuditLogPremium', 'Test-MtCisaAuditLogRetention',
               'Get-MtExo', 'Clear-MtExoCache', 'Test-MtCisaSpoSharing',
               'Test-MtCisaSpoSharingAllowedDomains',
               'Test-MtCisCloudAdmin',
               'Test-MtCisGlobalAdminCount',
               'Test-MtCis365PublicGroup',
               'Test-MtCisCalendarSharing',
               'Test-MtCisSharedMailboxSignIn',
               'Test-MtCisPasswordExpiry',
               'Test-MtCisCustomerLockBox',
               'Test-MtConditionalAccessWhatIf',
               'Test-MtConnection',
               'Test-MtEidscaControl',
               'Test-MtPimAlertsExists', 'Test-MtPrivPermanentDirectoryRole',
               'Update-MaesterTests', 'Compare-MtTestResult',  'Get-MailAuthenticationRecord',
               'ConvertFrom-MailAuthenticationRecordSpf', 'ConvertFrom-MailAuthenticationRecordMx',
               'ConvertFrom-MailAuthenticationRecordDmarc', 'ConvertFrom-MailAuthenticationRecordDkim',
               'Resolve-SpfRecord', 'Clear-MtDnsCache'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = 'Invoke-MtMaester', 'Connect-MtGraph', 'Connect-MtMaester',
               'Disconnect-MtGraph', 'Disconnect-MtMaester'

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
        Tags = 'Microsoft','365','Cloud','Test','Pester','Entra','AzureAD','Automation','Regression','DevOps','EntraID'

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/maester365/maester/blob/main/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://maester.dev'

        # A URL to an icon representing this module.
        IconUri = 'https://maester.dev/img/logo.svg'

        # ReleaseNotes of this module
        ReleaseNotes = 'https://github.com/maester365/maester/releases'

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

 } # End of PrivateData hashtable

# HelpInfo URI of this module
HelpInfoURI = 'https://maester.dev/docs/commands/'

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

