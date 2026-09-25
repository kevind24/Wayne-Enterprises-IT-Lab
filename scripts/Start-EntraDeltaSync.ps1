# Wayne Enterprises IT Lab
# Initiates a Microsoft Entra Connect delta synchronization cycle.

Import-Module ADSync
Start-ADSyncSyncCycle -PolicyType Delta


