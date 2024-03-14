prompt --application/shared_components/files/icons_all_css
begin
--   Manifest
--     APP STATIC FILES: 120
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>8358547342345319
,p_default_application_id=>120
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WS151783'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E646F646174656B207B0D0A20206261636B67726F756E642D696D6167653A2075726C2827234150505F494D414745532369636F6E732F6E75742E73766727293B0D0A202066696C7465723A20696E766572742831303025292073657069612831303025';
wwv_flow_imp.g_varchar2_table(2) := '2920736174757261746528322529206875652D726F746174652832393164656729206272696768746E65737328313038252920636F6E74726173742831303125293B0D0A20206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0D';
wwv_flow_imp.g_varchar2_table(3) := '0A20206261636B67726F756E642D73697A653A20636F6E7461696E3B0D0A20206261636B67726F756E642D636F6C6F723A20726F79616C626C75653B0D0A7D0D0A0D0A2E7372756261207B0D0A20206261636B67726F756E642D696D6167653A2075726C';
wwv_flow_imp.g_varchar2_table(4) := '2827234150505F494D414745532369636F6E732F73637265772E73766727293B0D0A202066696C7465723A20696E7665727428313030252920736570696128313030252920736174757261746528322529206875652D726F746174652832393164656729';
wwv_flow_imp.g_varchar2_table(5) := '206272696768746E65737328313038252920636F6E74726173742831303125293B0D0A20206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0D0A20206261636B67726F756E642D73697A653A20636F6E7461696E3B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(6) := '0D0A';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(127720131418436604)
,p_file_name=>'icons/all.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
