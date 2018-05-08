# GPCacheDelete
Group Policy Cache Deletion

Occasionally, you will have a Windows Active Directory workstation that ignores policy changes and refuses to update its Group Policy settings, even when you try to force the changes. This script solves that by entirely deleting all locally stored policies and downloading them fresh.

This is meant as a troubleshooting tool, and using it on a regular basis may indicate a problem in your Group Policy central store or other aspects of your AD environment.

# Usage

1. Under an account with local administrator privileges, right-click and run as Admnistrator. 
2. After the first reboot performed by the script, reboot again to have all policies properly applied.

# Limitations

- In environments where computer restart is completely disabled, you will need to perform it manually through your management tools.
- If you do not have local administrator rights, this will only clear out user policies for the currently signed in user.