prompt --application/shared_components/security/app_access_control/pracownik_r
begin
--   Manifest
--     ACL ROLE: pracownik_r
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>8358547342345319
,p_default_application_id=>120
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WS151783'
);
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(21993464872815908)
,p_static_id=>'PRACOWNIK_R'
,p_name=>'pracownik_r'
);
wwv_flow_imp.component_end;
end;
/
