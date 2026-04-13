# Investigation of Compromised AWS Account

## Possible Causes

- Lack of MFA enabled
- Overly permissive IAM roles
- Exposed credentials (hardcoded or leaked)
- Open security groups allowing public access
- Poor secret management

---

## Indicators of Compromise

- Unusual login activity
- Unknown API calls in CloudTrail
- Unexpected resource creation
- High billing usage
- Access from unknown IP addresses

---

## How to Investigate

1. Check CloudTrail logs for suspicious activity
2. Review IAM roles and permissions
3. Analyze login history
4. Check for exposed keys or credentials
5. Review security group configurations

---

## Mitigation Steps

- Enable MFA for all users
- Rotate all credentials
- Restrict IAM roles (least privilege)
- Close open ports and security groups
- Remove unused users and keys

---

## Conclusion

The compromise likely occurred due to weak access control and poor security practices.  
Proper monitoring, IAM control, and encryption can prevent such incidents.