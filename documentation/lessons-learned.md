# Lessons Learned

The Wayne Enterprises IT Lab provided hands-on experience building and troubleshooting a hybrid Microsoft environment from the ground up. The project reinforced the importance of understanding how identity, networking, endpoint management, security, and access control depend on one another rather than operating as isolated technologies.


## Hybrid Identity Dependencies

One of the most important lessons from the project was how closely on-premises Active Directory, DNS, Microsoft Entra ID, and Microsoft Intune depend on one another in a hybrid environment.

Successful hybrid identity required more than simply synchronizing users. Domain connectivity, DNS configuration, Entra Connect synchronization, device registration, user authentication, and MDM enrollment all needed to function correctly for an endpoint to reach the intended managed state.

This reinforced the value of validating each layer individually when troubleshooting hybrid identity and device-management issues.


## Troubleshooting Before Changing Configuration

The project reinforced the importance of establishing the expected state before making configuration changes. Several exercises demonstrated that an observed symptom does not necessarily indicate a broken configuration.

For example, denied access to a restricted file share was the expected result of correctly applied permissions, while a pending Windows update did not indicate that the Intune update policy had failed.

Validating account state, group membership, policy status, device registration, and connectivity before making changes helped avoid unnecessary remediation.


## Least Privilege and Access Control

Configuring file shares, security groups, standard user accounts, and separate administrative access reinforced the importance of least privilege.

Rather than granting broad access to make resources work, permissions were assigned according to user roles and then tested using different accounts. Successful access and intentional access-denied results were both used to validate that the security model was functioning as designed.

This demonstrated that effective access control requires both careful configuration and validation from the perspective of the users affected by those permissions.


## Planning and Scope Management

Building the lab also demonstrated the importance of managing project scope. As additional technologies and features were introduced, the environment became significantly more complex than originally planned.

Breaking the implementation into phases made it easier to build, test, troubleshoot, and document individual components without losing sight of the overall architecture.

This reinforced the value of defining clear project objectives and completing validated milestones before expanding an environment with additional features.



## From Support to Implementation

A major takeaway from the project was the difference between troubleshooting an existing environment and building one from the ground up.

Implementing Active Directory, DNS, hybrid identity, Intune enrollment, compliance policies, endpoint security, application deployment, and access controls provided a better understanding of the systems that normally sit behind individual support requests.

Building and validating these components helped connect day-to-day troubleshooting concepts with the broader infrastructure and endpoint-management processes that support them.
