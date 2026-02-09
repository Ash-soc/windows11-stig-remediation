# WN11-AU-000070 – Audit Logon Failures

This folder documents the remediation of Windows 11 STIG control **WN11-AU-000070**, which requires auditing of failed logon attempts.

---

## 🔎 Description

This control ensures that failed logon attempts are recorded in the Windows Security Event Log.

When enabled, the system generates event logs (such as Event ID 4625) whenever an authentication attempt fails. These logs are critical for monitoring, detection, and incident response activities.

---

## 🖼️ Before Remediation

At the time of assessment, auditing for failed logon attempts was not fully enabled in accordance with STIG requirements.

---

## ⚠️ Risk / Impact

Without audit logging for failed logon attempts:

- Brute-force attacks may go undetected  
- Password spraying activity may not be identified  
- Suspicious authentication patterns cannot be investigated  
- Incident response teams lose critical forensic visibility  

Lack of authentication logging significantly reduces an organisation’s ability to detect early-stage compromise attempts.

---

## 🛠️ Remediation Steps

Audit logon failures were enabled using Local Security Policy.

**Path:**  
Local Security Policy → Advanced Audit Policy Configuration →  
Audit Policies → Logon/Logoff →  
**Audit Logon** → Configure → Failure: Enabled

The policy was updated to ensure failed authentication attempts are recorded in the Security log.

---

## ✅ Validation

After enabling the audit policy, the configuration was verified to confirm compliance.


A test failed logon attempt was performed to confirm that **Event ID 4625** was successfully generated in the Security Event Log.

---

> “Failed logon events are a key early indicator of malicious activity. Monitoring Event ID 4625 allows SOC analysts to detect brute-force, password spraying, and credential abuse attempts. Without this visibility, authentication-based attacks could progress undetected.”

---

## 📚 References

- DISA STIG Viewer – Windows 11 STIG  
- Microsoft Documentation – Windows Security Auditing  
- NIST SP 800-61 Computer Security Incident Handling Guide
