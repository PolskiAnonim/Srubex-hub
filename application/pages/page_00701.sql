prompt --application/pages/page_00701
begin
--   Manifest
--     PAGE: 00701
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
 p_id=>701
,p_name=>'Dod_kl'
,p_alias=>'DOD-KL'
,p_page_mode=>'MODAL'
,p_step_title=>'Klient'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(25684233891869746)
,p_step_template=>wwv_flow_imp.id(127720327755451391)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'JAKUB.WIECZOREK@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20231230121611'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(25634712124513242)
,p_branch_name=>'711'
,p_branch_action=>'f?p=&APP_ID.:711:&SESSION.::&DEBUG.:711:P711_ID_KLIENTA:&P701_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P701_TYP'
,p_branch_condition_text=>'o'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(25634915665513244)
,p_branch_name=>'721'
,p_branch_action=>'f?p=&APP_ID.:721:&SESSION.::&DEBUG.:721:P721_ID_KLIENTA:&P701_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P701_TYP'
,p_branch_condition_text=>'f'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25634123683513236)
,p_name=>'P701_TYP'
,p_item_sequence=>20
,p_prompt=>'Typ klienta'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Osoby prywatne;o,Firmy;f'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Wybierz-'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25634267506513237)
,p_name=>'P701_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25634589705513240)
,p_name=>'Edycja'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P701_ID'
,p_condition_element=>'P701_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25634604593513241)
,p_event_id=>wwv_flow_imp.id(25634589705513240)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P701_TYP'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'CASE ',
'WHEN SUBSTR(:P701_ID,1,1)=''P'' THEN ''o''',
'ELSE ''f'' END FROM DUAL'))
,p_attribute_07=>'P701_TYP'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29533740004908384)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>29533740004908384
);
wwv_flow_imp.component_end;
end;
/
