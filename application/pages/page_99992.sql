prompt --application/pages/page_99992
begin
--   Manifest
--     PAGE: 99992
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
 p_id=>99992
,p_name=>'Rodzaj klienta'
,p_alias=>'RODZAJ-KLIENTA'
,p_page_mode=>'MODAL'
,p_step_title=>'Rodzaj klienta'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(127731345937451402)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'400'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'KACPER.KURAS@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20240115213747'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136622097905252365)
,p_plug_name=>'Wizard Progress'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127841453146451491)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_imp.id(136621132222252364)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(127871633491451517)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136622108181252365)
,p_plug_name=>'Rodzaj klienta'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127841453146451491)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136622290545252365)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127783730784451445)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(136623781874252368)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(136622290545252365)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(136624085886252368)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(136622290545252365)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(127896192632451539)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(136625685514252370)
,p_branch_action=>'f?p=&APP_ID.:99993:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(136624085886252368)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136580989497156122)
,p_name=>'P99992_RODZAJ_KLIENTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(136622108181252365)
,p_prompt=>unistr('Jako kto chcesz si\0119 zarejestrowa\0107')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Firma;firma,Osoba prywatna;prywaciaz'
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge:margin-left-lg:t-Form-fieldContainer--boldDisplay'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(136581315228156126)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>'P99992_RODZAJ_KLIENTA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Nie wybrano rodzaju klienta'
,p_when_button_pressed=>wwv_flow_imp.id(136624085886252368)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(244159927818081012)
,p_name=>'New'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_display_when_cond=>'PREV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(244160018549081013)
,p_event_id=>wwv_flow_imp.id(244159927818081012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99992_RODZAJ_KLIENTA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(244160108714081014)
,p_name=>'Wyjscie'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(136623781874252368)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(244160270357081015)
,p_event_id=>wwv_flow_imp.id(244160108714081014)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp.component_end;
end;
/
