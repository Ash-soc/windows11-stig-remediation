# WN11-SO-000205 – LAN Manager Authentication Level

This folder documents the remediation of Windows 11 STIG control WN11-SO-000205, which enforces NTLMv2 authentication.

**Test Environment:** Win11-VM01

---

## Description

This control disables legacy authentication protocols such as LM and NTLM and enforces NTLMv2, reducing credential exposure.

---

## Before Remediation

🖼️ **Before Scan Screenshot**

`before-scan.png`

---

## Risk / Impact

Legacy authentication protocols are vulnerable to replay and downgrade attacks, increasing the risk of credential compromise.

---

## Remediation

LAN Manager authentication level was configured to “Send NTLMv2 response only. Refuse LM & NTLM”.

---

## Validation

🖼️ **After Scan Screenshot**

`after-scan.png`

---

## SOC Interview Explanation

“Disabling legacy authentication reduces credential replay risk and strengthens authentication security across the environment.”

---

## References

- DISA STIG Viewer – Windows 11 STIG
