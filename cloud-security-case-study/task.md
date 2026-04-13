# Cloud Security Task - Investigating a Compromised AWS Account

## Scenario

You are a cloud security engineer investigating a potentially compromised AWS account. Suspicious activity has been detected, including unusual login attempts and unexpected resource usage.

---

## Objective

- Identify signs of compromise
- Analyze logs and access patterns
- Detect misconfigurations
- Suggest mitigation steps

---

## Services Used

- AWS CloudTrail (for API activity logs)
- AWS CloudWatch (for monitoring and alerts)
- IAM (for access control review)

---

## Tasks

### 1. Check Login Activity

- Review login attempts in CloudTrail
- Identify unusual IP addresses or locations

---

### 2. Analyze API Calls

- Look for unexpected actions such as:
  - creation of new users
  - deletion of resources
  - unusual EC2 activity

---

### 3. Review IAM Roles

- Identify overly permissive roles
- Check for unused or suspicious users

---

### 4. Check Security Configurations

- Look for:
  - open security groups (0.0.0.0/0)
  - public S3 buckets

---

### 5. Monitor Alerts

- Check CloudWatch logs for:
  - failed login attempts
  - unusual spikes in activity

---

## Expected Outcome

- Identify potential compromise indicators
- Detect security misconfigurations
- Recommend corrective actions

---

## Mitigation Steps

- Enable MFA for all users
- Rotate all credentials
- Restrict IAM permissions (least privilege)
- Close unnecessary open ports
- Enable logging and monitoring

---

## Conclusion

This task demonstrates how cloud monitoring and IAM controls can help detect and respond to security incidents effectively.