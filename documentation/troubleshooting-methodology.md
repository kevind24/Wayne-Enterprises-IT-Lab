# Troubleshooting Methodology

## Overview

The Wayne Enterprises IT Lab uses a structured troubleshooting methodology designed to identify root causes while minimizing unnecessary changes to the environment.

The general troubleshooting process is:

1. Identify and reproduce the reported symptom.
2. Establish the expected or known-good state.
3. Determine which layer of the environment is affected.
4. Gather diagnostic information before making changes.
5. Identify the most likely root cause.
6. Apply the smallest appropriate remediation.
7. Validate that normal functionality has been restored.
8. Document the issue, root cause, and resolution.

## Troubleshooting Scenarios

### DNS Resolution

Validated internal DNS resolution for the BATCAVE.LOCAL domain.

A DNS failure was simulated by querying an external DNS server for the internal BAT-DC01 hostname. The external DNS server returned a non-existent domain response because it had no knowledge of the private BATCAVE.LOCAL namespace.

The workstation's configured DNS server was verified as BAT-DC01 at 192.168.10.10, and successful internal name resolution was confirmed.

**Key lesson:** Domain-joined systems must use the internal Active Directory DNS server to reliably locate internal domain resources.

### Domain Authentication

A domain authentication failure was created by temporarily disabling the Bruce Wayne Active Directory account.

Authentication attempts returned an account restriction error. The account state was inspected in Active Directory Users and Computers, the disabled account was identified as the root cause, and the account was re-enabled.

Successful authentication was then restored.

**Key lesson:** Account status, credentials, lockout state, and authentication restrictions should be verified before troubleshooting more complex domain connectivity issues.

### File Share Permissions

Access to the restricted IT file share was tested using Bruce Wayne's standard user account.

Authentication succeeded, but access to the share was denied. Active Directory group membership was reviewed and confirmed that Bruce belonged to Standard Users rather than IT Administrators.

The denied access was determined to be expected behavior rather than a configuration failure.

**Key lesson:** Authentication and authorization are separate troubleshooting layers. A user can authenticate successfully while still being correctly denied access to a resource.

### Intune Enrollment

The enrollment state of BAT-WIN11-BRUCE was reviewed without intentionally removing the device from management.

The device was confirmed as:

- Domain joined
- Microsoft Entra joined
- Primary Refresh Token (PRT) available
- Managed by Microsoft Intune
- Compliant

These checks established the expected healthy state and identified the major components that should be investigated when troubleshooting automatic Intune enrollment.

**Key lesson:** Hybrid enrollment troubleshooting should verify domain membership, Entra registration, user authentication/PRT status, MDM configuration, and Intune management state before attempting device re-enrollment.

### Application Deployment

Microsoft Company Portal deployment was reviewed through Intune.

The application was assigned as required and reported as successfully installed on BAT-WIN11-BRUCE. Intune deployment information was reviewed to identify where installation status, assignments, check-in information, and deployment errors would be investigated during an application deployment failure.

**Key lesson:** Application deployment troubleshooting should begin with assignment scope, device check-in status, installation state, and reported error information before reinstalling software manually.

### Windows Update

The Wayne Enterprises Windows Update Ring was confirmed as successfully applied to BAT-WIN11-BRUCE through Intune.

Windows Update reported a pending Microsoft Windows Malicious Software Removal Tool update. The update was installed successfully, confirming that the endpoint could detect, download, and install Microsoft updates.

**Key lesson:** A pending update does not by itself indicate an update-management failure. Policy deployment status and endpoint update behavior should both be validated before remediation.

## Troubleshooting Principles

Throughout the lab, troubleshooting followed several core principles:

- Verify the problem before changing configuration.
- Separate authentication, authorization, networking, identity, and endpoint-management issues.
- Use known-good baselines for comparison.
- Make the smallest change necessary to correct the problem.
- Avoid weakening security controls simply to eliminate an error.
- Validate functionality after remediation.
- Preserve working configurations when a failure can be safely simulated instead.
