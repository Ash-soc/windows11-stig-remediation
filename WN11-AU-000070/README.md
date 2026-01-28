# WN11-AU-000070 – Audit Logon Failures

This folder documents the remediation of Windows 11 STIG control WN11-AU-000070, which enables auditing of failed logon attempts.

**Test Environment:** Win11-VM01

---

## Description

This control ensures failed logon attempts are recorded in the Windows Security event log for monitoring and investigation.

---

## Before Remediation

🖼️ **Before Scan Screenshot**

`before-scan.png`

---

## Risk / Impact

Without audit logging, brute-force and password spraying attacks may go undetected.

---

## Remediation

Audit logon failures were enabled using audit policy configuration.

---

## Validation

🖼️ **After Scan Screenshot**

`after-scan.png`

---

## SOC Interview Explanation

“Failed logon events are a key indicator of malicious activity and are commonly used in SOC detections.”

---

## References

- DISA STIG Viewer – Windows 11 STIG
