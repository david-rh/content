documentation_complete: true

metadata:
    SMEs:
        - JAORMX
        - mrogers950
        - carlosmmatos

reference: https://nvd.nist.gov/800-53/Rev4/impact/moderate

title: 'NIST 800-53 Moderate-Impact Baseline for Red Hat OpenShift'

platform: ocp4

description: |-
    This compliance profile reflects the core set of Moderate-Impact Baseline
    configuration settings for deployment of Red Hat OpenShift Container
    Platform into U.S. Defense, Intelligence, and Civilian agencies.
    Development partners and sponsors include the U.S. National Institute
    of Standards and Technology (NIST), U.S. Department of Defense,
    the National Security Agency, and Red Hat.

    This baseline implements configuration requirements from the following
    sources:

    - NIST 800-53 control selections for Moderate-Impact systems (NIST 800-53)

    For any differing configuration requirements, e.g. password lengths, the stricter
    security setting was chosen. Security Requirement Traceability Guides (RTMs) and
    sample System Security Configuration Guides are provided via the
    scap-security-guide-docs package.

    This profile reflects U.S. Government consensus content and is developed through
    the ComplianceAsCode initiative, championed by the National
    Security Agency. Except for differences in formatting to accommodate
    publishing processes, this profile mirrors ComplianceAsCode
    content as minor divergences, such as bugfixes, work through the
    consensus and release processes.

selections:
    # AC-2, AC-7
    - ocp_idp_no_htpasswd

    - ocp_allowed_registries_for_import
    - ocp_allowed_registries

    # AU
    - audit_profile_set

    # AU-9
    - audit_log_forwarding_enabled

    # RA-5 VULNERABILITY SCANNING
    - compliancesuite_exists

    # SC-28 PROTECTION OF INFORMATION AT REST
    # SC-28 (1) PROTECTION OF INFORMATION AT REST | CRYPTOGRAPHIC PROTECTION
    - api_server_encryption_provider_config
    - api_server_encryption_provider_cipher


    # SC-8: TRANSMISSION CONFIDENTIALITY AND INTEGRITY
    # SC-8(1): TRANSMISSION CONFIDENTIALITY AND INTEGRITY | CRYPTOGRAPHIC OR ALTERNATE PHYSICAL PROTECTION
    - api_server_client_ca
    - api_server_etcd_ca
    - api_server_tls_cert
    - api_server_tls_private_key
    - etcd_peer_cert_file
    - etcd_peer_key_file
    - kubelet_configure_tls_cert
    - kubelet_configure_tls_key
    - routes_protected_by_tls

    # SC-13: CRYPTOGRAPHIC PROTECTION
    - fips_mode_enabled

    # AC-8: SYSTEM USE NOTIFICATION
    - classification_banner