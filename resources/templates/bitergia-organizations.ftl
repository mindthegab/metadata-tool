[#ftl]
# ⚠️ BITERGIA FOLKS: DO NOT EDIT THIS FILE!! ⚠️
# We generate this file from a separate data source, and your changes WILL BE OVERWRITTEN AND LOST!
# If you need to make changes, please create an issue and we'll add your changes to the source data set.

[#if organizations?? && organizations?size > 0]
  [#list organizations as organization]
- organization: ${organization.organization_name}
    [#if organization.domains?? && organization.domains?size > 0]
  domains:
      [#list organization.domains as domain]
    - ${domain}
      [/#list]
    [/#if]
  [/#list]
[/#if]
