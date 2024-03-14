prompt --application/shared_components/files/icons_questionmark_svg
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
wwv_flow_imp.g_varchar2_table(1) := '3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D2269736F2D383835392D31223F3E0D0A3C212D2D2055706C6F6164656420746F3A20535647205265706F2C207777772E7376677265706F2E636F6D2C2047656E657261746F723A';
wwv_flow_imp.g_varchar2_table(2) := '20535647205265706F204D6978657220546F6F6C73202D2D3E0D0A3C21444F435459504520737667205055424C494320222D2F2F5733432F2F4454442053564720312E312F2F454E222022687474703A2F2F7777772E77332E6F72672F47726170686963';
wwv_flow_imp.g_varchar2_table(3) := '732F5356472F312E312F4454442F73766731312E647464223E0D0A3C7376672066696C6C3D2223303030303030222076657273696F6E3D22312E31222069643D22436170615F312220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F3230';
wwv_flow_imp.g_varchar2_table(4) := '30302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B22200D0A092076696577426F783D22302030203331382E323933203331382E3239332220786D6C3A73706163653D2270726573';
wwv_flow_imp.g_varchar2_table(5) := '65727665223E0D0A3C673E0D0A093C7061746820643D224D3135392E3134382C30632D35322E3639362C302D39352E3534342C33392E3332362D39352E3534342C38372E3636326834372E37333663302D32322E3030372C32312E3433382D33392E3932';
wwv_flow_imp.g_varchar2_table(6) := '372C34372E3830382D33392E3932370D0A09096332362E3336372C302C34372E3830342C31372E39322C34372E3830342C33392E39323776362E39323963302C32332E33392D31302E3239322C33342E33312D32352E3931352C35302E383133632D3230';
wwv_flow_imp.g_varchar2_table(7) := '2E3337312C32312E3533312D34352E3734342C34382E3336352D34352E3734342C3130352E3839390D0A09096834372E37343563302D33382E3532342C31352E3134342D35342E3536382C33322E3639322D37332E31326331372E3336382D31382E3334';
wwv_flow_imp.g_varchar2_table(8) := '372C33382E39362D34312E3139322C33382E39362D38332E353932762D362E393239433235342E3638392C33392E3332362C3231312E3834352C302C3135392E3134382C307A0D0A0909222F3E0D0A093C7265637420783D223133342E3437352220793D';
wwv_flow_imp.g_varchar2_table(9) := '223237372E393936222077696474683D2234392E39363822206865696768743D2234302E323937222F3E0D0A3C2F673E0D0A3C2F7376673E';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(119071233329919152)
,p_file_name=>'icons/questionMark.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/