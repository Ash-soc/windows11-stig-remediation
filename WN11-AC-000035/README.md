# WN11-AC-000035 – Minimum Password Length

This folder documents the remediation of Windows 11 STIG control **WN11-AC-000035**, which enforces a minimum password length of 14 characters.

**Test Environment:** Win11-VM01  

---

## 🔎 Description

This control ensures that user account passwords meet a minimum length requirement of 14 characters.

Longer passwords significantly increase resistance to brute-force and password guessing attacks by expanding the total possible character combinations.

---

## 🖼️ Before Remediation

At the time of assessment, the minimum password length policy was not configured to meet the STIG requirement.

---

## ⚠️ Risk / Impact

Short passwords are easier to crack using brute-force or dictionary-based attacks.  

If compromised, attackers may gain unauthorised access to:
- User accounts  
- Privileged accounts  
- Sensitive systems and data  

Weak password policies increase the overall attack surface of the environment.

---

## 🛠️ Remediation Steps

The minimum password length was configured to **14 characters** using Local Security Policy.

**Path:**  
Local Security Policy → Account Policies → Password Policy → Minimum password length

The policy was updated to enforce the required 14-character minimum.

---

## ✅ Validation

After applying the policy change, the configuration was verified to ensure compliance with the STIG requirement.


A follow-up scan confirmed the control is now compliant.

---

> “Enforcing a 14-character minimum password length increases the computational effort required for brute-force attacks. This reduces the likelihood of successful credential compromise and strengthens overall account security posture.”

---

## 📚 References

- DISA STIG Viewer – Windows 11 STIG  
- NIST SP 800-63 Digital Identity Guidelines
