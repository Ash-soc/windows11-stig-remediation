# WN11-SO-000205 – LAN Manager Authentication Level

This folder documents the remediation of Windows 11 STIG control **WN11-SO-000205**, which enforces NTLMv2-only authentication and disables legacy LM and NTLM protocols.

**Test Environment:**  
Win11-VM01 (Windows 11 Virtual Machine)

---

## 🔎 Description

This control enforces the following policy:

```

Send NTLMv2 response only. Refuse LM & NTLM

```

Legacy authentication protocols such as LM and NTLM are vulnerable to replay, downgrade, and pass-the-hash attacks.

Enforcing NTLMv2 strengthens authentication security and reduces credential exposure across the environment.

---

## ⚠️ Risk / Impact

If legacy protocols are permitted:

- Attackers can replay captured authentication hashes  
- Downgrade attacks may force weaker authentication methods  
- Credential compromise risk increases  
- Lateral movement becomes easier within compromised networks  

Disabling LM and NTLM significantly reduces these risks.

---

## 🔍 Detection

The control was identified as non-compliant during:

- DISA Windows 11 STIG compliance scan  
- Tenable vulnerability assessment  
- Local Security Policy review  

The LAN Manager authentication level was not configured to meet STIG baseline requirements.

---

## 🛠️ Remediation

The policy was configured via:

```

Local Security Policy
→ Local Policies
→ Security Options
→ Network security: LAN Manager authentication level

```

Set to:

```

Send NTLMv2 response only. Refuse LM & NTLM

```

Automated remediation script available in:

```

Remediation.ps1

```

---

## ✅ Validation

Validation was performed through:

1️⃣ Policy verification in Local Security Policy  
2️⃣ Registry inspection of:

```

HKLM\SYSTEM\CurrentControlSet\Control\Lsa

```

Required value:

```

LmCompatibilityLevel = 5

```

A follow-up compliance scan confirmed the control is compliant.

---
> “Enforcing NTLMv2-only authentication prevents legacy credential negotiation and reduces exposure to replay and pass-the-hash attacks. From a SOC perspective, this strengthens authentication posture and limits lateral movement opportunities.”

---

## 📚 References

- DISA Windows 11 STIG  
  https://public.cyber.mil/stigs/

- Microsoft Authentication Policy Documentation  
  https://learn.microsoft.com/en-us/windows/security/threat-protection/security-policy-settings/network-security-lan-manager-authentication-level
---

