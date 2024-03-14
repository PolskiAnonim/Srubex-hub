prompt --application/pages/page_00305
begin
--   Manifest
--     PAGE: 00305
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>8358547342345319
,p_default_application_id=>120
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WS151783'
);
wwv_flow_imp_page.create_page(
 p_id=>305
,p_name=>'sr_details'
,p_alias=>'SR-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Informacje o \015Brubie')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(62444942272771816)
,p_step_template=>wwv_flow_imp.id(127720327755451391)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'KACPER.KURAS@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20240110111029'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32856797010771725)
,p_plug_name=>'Sruba'
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_SRUBY,',
'       NAZWA_SRUBY,',
'       DLUGOSC_GWINTU,',
'       RODZAJ_GWINTU,',
'       DLUGOSC_TRZPIENIA,',
'       KLASA_WYTRZYMALOSCI,',
'       KOLOR,',
'       (SELECT d.nazwa_dostawcy FROM dostawca d WHERE d.id_dostawcy=s.id_dostawcy) AS DOSTAWCA,',
'       MATERIAL,',
'       RODZAJ_LBA,',
'       WYSOKOSC_LBA,',
'       GNIAZDO,',
'       CENA',
'  from SRUBA s'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36853944120116141)
,p_button_sequence=>5
,p_button_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_button_name=>'Dodatki'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_image_alt=>unistr('Pasuj\0105ce dodatki')
,p_button_redirect_url=>'f?p=&APP_ID.:310:&SESSION.::&DEBUG.:310:P310_ID_SRUBY:&P305_ID_SRUBY.'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(184762461454605255)
,p_button_sequence=>15
,p_button_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_button_name=>'Certyfikaty'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_image_alt=>'Wydane certyfikaty'
,p_button_redirect_url=>'f?p=&APP_ID.:330:&SESSION.::&DEBUG.:330:P330_ID_SRUBY:&P305_ID_SRUBY.'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36646708095312203)
,p_name=>'P305_ID_SRUBY'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_item_source_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_source=>'ID_SRUBY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36646813896312204)
,p_name=>'P305_NAZWA_SRUBY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_item_source_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_prompt=>'Nazwa Sruby'
,p_source=>'NAZWA_SRUBY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36646986973312205)
,p_name=>'P305_DLUGOSC_GWINTU'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_item_source_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_prompt=>'Dlugosc Gwintu'
,p_source=>'DLUGOSC_GWINTU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36647076999312206)
,p_name=>'P305_RODZAJ_GWINTU'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>75
,p_item_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_item_source_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_prompt=>'Rodzaj Gwintu'
,p_source=>'RODZAJ_GWINTU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36647101887312207)
,p_name=>'P305_DLUGOSC_TRZPIENIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>85
,p_item_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_item_source_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_prompt=>'Dlugosc Trzpienia'
,p_source=>'DLUGOSC_TRZPIENIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36647253903312208)
,p_name=>'P305_KLASA_WYTRZYMALOSCI'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>95
,p_item_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_item_source_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_prompt=>'Klasa Wytrzymalosci'
,p_source=>'KLASA_WYTRZYMALOSCI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36647346590312209)
,p_name=>'P305_KOLOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>105
,p_item_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_item_source_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_prompt=>'Kolor'
,p_source=>'KOLOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36647592770312211)
,p_name=>'P305_MATERIAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>115
,p_item_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_item_source_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_prompt=>'Material'
,p_source=>'MATERIAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36647660508312212)
,p_name=>'P305_RODZAJ_LBA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>125
,p_item_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_item_source_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_prompt=>'Rodzaj Lba'
,p_source=>'RODZAJ_LBA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36647747671312213)
,p_name=>'P305_WYSOKOSC_LBA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>135
,p_item_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_item_source_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_prompt=>'Wysokosc Lba'
,p_source=>'WYSOKOSC_LBA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36647819413312214)
,p_name=>'P305_GNIAZDO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>145
,p_item_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_item_source_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_prompt=>'Gniazdo'
,p_source=>'GNIAZDO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36851496425116116)
,p_name=>'P305_DOSTAWCA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_item_source_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_prompt=>'Dostawca'
,p_source=>'DOSTAWCA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36851523292116117)
,p_name=>'P305_CENA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>155
,p_item_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_item_source_plug_id=>wwv_flow_imp.id(32856797010771725)
,p_prompt=>'Cena'
,p_source=>'CENA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36646691749312202)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(32856797010771725)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form sr_details'
,p_internal_uid=>36646691749312202
);
wwv_flow_imp.component_end;
end;
/
