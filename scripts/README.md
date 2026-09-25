# PowerShell Scripts

This directory contains PowerShell scripts and administrative commands used to support, validate, and troubleshoot the Wayne Enterprises IT Lab.

The examples focus on practical Windows administration, Active Directory, networking, identity, and endpoint-management tasks performed during the project.

## Active Directory Users

The following command was run on `BAT-DC01` to retrieve Active Directory users and their account names:

```powershell
Get-ADUser -Filter * | Select-Object Name, SamAccountName
```

## Active Directory Computers

The following command was run on `BAT-DC01` to retrieve computer objects registered in Active Directory:

```powershell
Get-ADComputer -Filter * | Select-Object Name
```

## Endpoint Network Configuration

The following command was run on `BAT-WIN11-BRUCE` to inspect the workstation's network configuration, including its IPv4 address, default gateway, and DNS server:

```powershell
Get-NetIPConfiguration
```

## DNS Resolution

The following command was run on `BAT-WIN11-BRUCE` to verify DNS resolution of the domain controller:

```powershell
Resolve-DnsName BAT-DC01
```

## Microsoft Entra Connect Synchronization

Microsoft Entra Connect synchronization was manually triggered from `BAT-DC01` using:

```powershell
Import-Module ADSync
Start-ADSyncSyncCycle -PolicyType Delta
```

The reusable synchronization commands are also available in `Start-EntraDeltaSync.ps1`.
