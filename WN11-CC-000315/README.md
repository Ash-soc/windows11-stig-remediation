# WN11-CC-000315 – Always Install with Elevated Privileges

This folder contains guidance and remediation for **Windows 11 STIG control WN11-CC-000315**, which ensures that the Windows Installer feature **"Always install with elevated privileges"** is disabled. Disabling this setting prevents MSI installer packages from running with administrative permissions unless explicitly authorized.

---

## Table of Contents
- [Description](#description)
- [Risk / Impact](#risk--impact)
- [Detection](#detection)
- [Remediation](#remediation)
- [Validation](#validation)
- [References](#references)

---

## Description
This STIG ensures that the **Windows Installer setting "Always install with elevated privileges"** is disabled on Windows 11 systems.  

Disabling this prevents MSI installer packages from running with administrative permissions unless explicitly authorized.

<details>
<summary>Initial Compliance Scan Screenshot</summary>

<img width="940" height="359" src="https://github.com/user-attachments/assets/f4970bf1-4bb9-47e9-8c5e-4840e1ee338a" alt="Initial Scan Screenshot" />

</details>

---

## Risk / Impact
Enabling this setting introduces a **local privilege escalation risk**, allowing attackers or unprivileged users to:  

- Install malicious software with administrative rights  
- Potentially **compromise the system fully**

---

## Detection
This finding was identified using a **DISA STIG audit scan** in **Tenable.io** against a Windows 11 virtual machine.

---

## Remediation
To remediate, set the registry value `AlwaysInstallElevated` to `0` under:

```reg
HKLM\Software\Policies\Microsoft\Windows\Installer
````

This disables elevated MSI installations for all users.

---

## Validation

A follow-up STIG scan in **Tenable.io** confirmed that the setting is now **remediated** and passes the control.

<details>
<summary>Passed Scan Screenshot</summary>

<img width="1057" height="394" src="https://github.com/user-attachments/assets/eb2bc6d5-dc11-405e-92ee-4c3f79555872" alt="Passed Scan Screenshot" />

</details>

---

## References

* [DISA STIG Viewer – Windows 11 STIG](https://www.stigviewer.com/stigs/microsoft-windows-11-security-technical-implementation-guide)
* [Tenable.io Documentation](https://www.tenable.com/products/tenable-io)

```

