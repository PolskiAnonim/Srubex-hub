prompt --application/pages/page_00721
begin
--   Manifest
--     PAGE: 00721
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
 p_id=>721
,p_name=>'Dod_firm'
,p_alias=>'DOD-FIRM'
,p_page_mode=>'MODAL'
,p_step_title=>'Firma'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(25684233891869746)
,p_step_template=>wwv_flow_imp.id(127720327755451391)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'JAKUB.WIECZOREK@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20231230121611'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51336946554512057)
,p_plug_name=>'Firma'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(127831620256451483)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'FIRMY'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51340588740512061)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127783730784451445)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25689996470880881)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(51340588740512061)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_image_alt=>'Anuluj'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25690399697880881)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(51340588740512061)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_image_alt=>unistr('Usu\0144')
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P721_ID_KLIENTA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25690727472880882)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(51340588740512061)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Zapisz zmiany'
,p_button_position=>'NEXT'
,p_button_condition=>'P721_ID_KLIENTA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25691165788880882)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(51340588740512061)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj'
,p_button_position=>'NEXT'
,p_button_condition=>'P721_ID_KLIENTA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25632415976513219)
,p_name=>'P721_NAZWA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(51336946554512057)
,p_item_source_plug_id=>wwv_flow_imp.id(51336946554512057)
,p_prompt=>'Nazwa'
,p_source=>'NAZWA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>64
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25632516890513220)
,p_name=>'P721_NIP'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(51336946554512057)
,p_item_source_plug_id=>wwv_flow_imp.id(51336946554512057)
,p_prompt=>'NIP'
,p_source=>'NIP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>13
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25632661957513221)
,p_name=>'P721_ROZMIAR_FIRMY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(51336946554512057)
,p_item_source_plug_id=>wwv_flow_imp.id(51336946554512057)
,p_prompt=>'Rozmiar Firmy'
,p_source=>'ROZMIAR_FIRMY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30532958903392028)
,p_name=>'P721_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(51336946554512057)
,p_item_source_plug_id=>wwv_flow_imp.id(51336946554512057)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>64
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51317591691394085)
,p_name=>'P721_ID_KLIENTA'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51336946554512057)
,p_item_source_plug_id=>wwv_flow_imp.id(51336946554512057)
,p_source=>'ID_KLIENTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51317916262394088)
,p_name=>'P721_NR_TELEFONU'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(51336946554512057)
,p_item_source_plug_id=>wwv_flow_imp.id(51336946554512057)
,p_prompt=>'Nr Telefonu'
,p_source=>'NR_TELEFONU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>13
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51318015050394089)
,p_name=>'P721_ADRES'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(51336946554512057)
,p_item_source_plug_id=>wwv_flow_imp.id(51336946554512057)
,p_prompt=>'Adres'
,p_source=>'ADRES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>64
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25692159906880884)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25689996470880881)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25692626009880885)
,p_event_id=>wwv_flow_imp.id(25692159906880884)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25689205691880880)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(51336946554512057)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Dod_firm'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>25689205691880880
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25691763887880884)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>25691763887880884
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25688883267880879)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(51336946554512057)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Dod_os_pryw'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>25688883267880879
);
wwv_flow_imp.component_end;
end;
/
