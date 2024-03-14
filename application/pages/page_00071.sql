prompt --application/pages/page_00071
begin
--   Manifest
--     PAGE: 00071
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
 p_id=>71
,p_name=>'Osoby prywatne'
,p_alias=>'OSOBY-PRYWATNE'
,p_step_title=>'Osoby prywatne'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(25684233891869746)
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
,p_last_upd_yyyymmddhh24miss=>'20240109233226'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144573354159077431)
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
 p_id=>wwv_flow_imp.id(216614593764229911)
,p_plug_name=>'Osoby prywatne'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127779121151451441)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_KLIENTA,',
'    ''<a href="'' || apex_page.get_url(p_page => 711, p_items =>''P711_ID_KLIENTA'', p_values => ID_KLIENTA) || ''"><span class="fa fa-edit" title="Edycja"> </span></a>'' AS EDYCJA,',
'       IMIE,',
'       NAZWISKO,',
'       NR_TELEFONU,',
'       EMAIL,',
'       ADRES',
'  from OSOBY_PRYWATNE'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Osoby prywatne'
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
 p_id=>wwv_flow_imp.id(113876982143013110)
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
,p_internal_uid=>113876982143013110
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113877056014013111)
,p_db_column_name=>'ID_KLIENTA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id Klienta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190337224905366228)
,p_db_column_name=>'EDYCJA'
,p_display_order=>20
,p_column_identifier=>'G'
,p_column_label=>'Edycja'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113877128471013112)
,p_db_column_name=>'IMIE'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Imie'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113877213084013113)
,p_db_column_name=>'NAZWISKO'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Nazwisko'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113877307821013114)
,p_db_column_name=>'NR_TELEFONU'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Nr Telefonu'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113877411877013115)
,p_db_column_name=>'EMAIL'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113877505856013116)
,p_db_column_name=>'ADRES'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Adres'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(113906542227016699)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1139066'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDYCJA:IMIE:NAZWISKO:NR_TELEFONU:EMAIL:ADRES:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24126245750062979)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(216614593764229911)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj nowego klienta'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:711:&SESSION.::&DEBUG.:5,711::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24127123079062980)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(216614593764229911)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24127614308062980)
,p_event_id=>wwv_flow_imp.id(24127123079062980)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(216614593764229911)
);
wwv_flow_imp.component_end;
end;
/
