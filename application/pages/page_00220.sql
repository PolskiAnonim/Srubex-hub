prompt --application/pages/page_00220
begin
--   Manifest
--     PAGE: 00220
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
 p_id=>220
,p_name=>unistr('\015Aruby pasuj\0105ce do dodatk\00F3w')
,p_alias=>unistr('\015ARUBY-PASUJ\0104CE-DO-DODATK\00D3W')
,p_step_title=>unistr('\015Aruby pasuj\0105ce do dodatk\00F3w')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(64799221816860008)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_last_updated_by=>'WLASCICIEL'
,p_last_upd_yyyymmddhh24miss=>'20240114112034'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(127303699848792894)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127792658721451452)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(21537423727562520)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(127897691758451540)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(311473435344874251)
,p_plug_name=>unistr('\015Aruby')
,p_region_name=>'sr'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127779121151451441)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       ''<a href="'' || apex_page.get_url(p_page => 305, p_items =>''P305_ID_SRUBY'', p_values => s.ID_SRUBY) || ''"><span class="fa fa-dynamic-content" title="Dodatkowe informacje"> </span></a>'' AS Informacje, ',
unistr('       s.ID_SRUBY AS Usu\0144,'),
'       s.ID_SRUBY,',
unistr('       NAZWA_SRUBY || '' Kl. '' || KLASA_WYTRZYMALOSCI || '' Materia\0142: '' ||'),
unistr(' MATERIAL || '' '' || KOLOR || '' \0141eb: '' || RODZAJ_LBA || '' Gniazdo: '' || GNIAZDO AS \015Aruba,'),
'       CENA',
'  from SRUBA s JOIN sruba_dodatek sd ON sd.id_sruby=s.id_sruby WHERE id_dodatku=:P220_ID_DODATKU;'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\015Aruby')
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(134062316410674705)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JAKUB.WIECZOREK@STUDENT.PUT.POZNAN.PL'
,p_internal_uid=>134062316410674705
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134062606310674708)
,p_db_column_name=>'ID_SRUBY'
,p_display_order=>10
,p_column_identifier=>'C'
,p_column_label=>'Id Sruby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134062517001674707)
,p_db_column_name=>unistr('USU\0143')
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Usu\0144')
,p_column_link=>'javascript:void(null)'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-note" aria-hidden="true"></span>'
,p_column_link_attr=>unistr('data-id=#USU\0143#')
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134062465614674706)
,p_db_column_name=>'INFORMACJE'
,p_display_order=>30
,p_column_identifier=>'A'
,p_column_label=>'Informacje'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(184739789232587004)
,p_db_column_name=>unistr('\015ARUBA')
,p_display_order=>50
,p_column_identifier=>'G'
,p_column_label=>unistr('\015Aruba')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134062933849674711)
,p_db_column_name=>'CENA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cena'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(134076842671675982)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1340769'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('USU\0143:INFORMACJE:\015ARUBA:CENA:')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64830925190915838)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(311473435344874251)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Dodaj now\0105 \015Brub\0119 pasuj\0105c\0105 do dodatku')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.:221:P221_ID_DODATKU:&P220_ID_DODATKU.'
,p_button_condition=>'P220_ID_DODATKU'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64742887796268150)
,p_name=>'P220_ID_DODATKU'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(311473435344874251)
,p_prompt=>'Dodatek'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT nazwa_dodatku, id_dodatku FROM dodatek ORDER BY nazwa_dodatku;'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Wybierz dodatek-'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64876524512374901)
,p_name=>'P220_ID_SRUBY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(311473435344874251)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64835250073915844)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(311473435344874251)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64835708366915845)
,p_event_id=>wwv_flow_imp.id(64835250073915844)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(311473435344874251)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64876641408374902)
,p_name=>'usun'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-note'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64876721779374903)
,p_event_id=>wwv_flow_imp.id(64876641408374902)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Jeste\015B pewny?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64876898067374904)
,p_event_id=>wwv_flow_imp.id(64876641408374902)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P220_ID_SRUBY'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64876956491374905)
,p_event_id=>wwv_flow_imp.id(64876641408374902)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'DELETE FROM sruba_dodatek WHERE id_dodatku=:P220_ID_DODATKU AND id_sruby=:P220_ID_SRUBY;'
,p_attribute_02=>'P220_ID_DODATKU,P220_ID_SRUBY'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64877018513374906)
,p_event_id=>wwv_flow_imp.id(64876641408374902)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(311473435344874251)
);
wwv_flow_imp.component_end;
end;
/
