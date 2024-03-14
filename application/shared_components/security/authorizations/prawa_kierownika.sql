prompt --application/shared_components/security/authorizations/prawa_kierownika
begin
--   Manifest
--     SECURITY SCHEME: Prawa kierownika
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>8358547342345319
,p_default_application_id=>120
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WS151783'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(21994860619838061)
,p_name=>'Prawa kierownika'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'kierownik_r'
,p_attribute_02=>'A'
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_imp.component_end;
end;
/
