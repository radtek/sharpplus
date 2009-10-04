// $ANTLR 3.2 10 04, 2009 23:19:32 C.g 2009-10-05 01:05:07
unit CParser;

interface

uses Classes, SysUtils, Dialogs, JclContainerIntf, 
 
     Antlr, AntlrTree;

    const T__29=29;
    const T__28=28;
    const T__27=27;
    const T__26=26;
    const FloatTypeSuffix=16;
    const T__25=25;
    const T__24=24;
    const T__23=23;
    const LETTER=11;
    const EOF=-1;
    const T__93=93;
    const T__94=94;
    const T__91=91;
    const T__92=92;
    const STRING_LITERAL=9;
    const T__90=90;
    const FLOATING_POINT_LITERAL=10;
    const COMMENT=20;
    const T__99=99;
    const T__98=98;
    const T__97=97;
    const T__96=96;
    const T__95=95;
    const T__80=80;
    const T__81=81;
    const T__82=82;
    const T__83=83;
    const LINE_COMMENT=21;
    const IntegerTypeSuffix=14;
    const CHARACTER_LITERAL=8;
    const T__85=85;
    const T__84=84;
    const T__87=87;
    const T__86=86;
    const T__89=89;
    const T__88=88;
    const WS=19;
    const T__71=71;
    const T__72=72;
    const T__70=70;
    const LINE_COMMAND=22;
    const T__76=76;
    const T__75=75;
    const T__74=74;
    const T__73=73;
    const DECIMAL_LITERAL=7;
    const EscapeSequence=12;
    const T__79=79;
    const T__78=78;
    const T__77=77;
    const T__68=68;
    const T__69=69;
    const T__66=66;
    const T__67=67;
    const T__64=64;
    const T__65=65;
    const T__62=62;
    const T__63=63;
    const Exponent=15;
    const T__61=61;
    const T__60=60;
    const HexDigit=13;
    const T__55=55;
    const T__56=56;
    const T__57=57;
    const T__58=58;
    const T__51=51;
    const T__52=52;
    const T__53=53;
    const T__54=54;
    const IDENTIFIER=4;
    const T__59=59;
    const HEX_LITERAL=5;
    const T__50=50;
    const T__42=42;
    const T__43=43;
    const T__40=40;
    const T__41=41;
    const T__46=46;
    const T__47=47;
    const T__44=44;
    const T__45=45;
    const T__48=48;
    const T__49=49;
    const OCTAL_LITERAL=6;
    const T__100=100;
    const T__30=30;
    const T__31=31;
    const T__32=32;
    const T__33=33;
    const T__34=34;
    const T__35=35;
    const T__36=36;
    const T__37=37;
    const T__38=38;
    const T__39=39;
    const UnicodeEscape=18;
    const OctalEscape=17;              
type
  TCParser = class(TAntlrParser)
  public
    tokenNames:TStrings;
    FOLLOW_external_declaration_in_translation_unit85:IBitSet;
    FOLLOW_function_definition_in_external_declaration121:IBitSet;
    FOLLOW_declaration_in_external_declaration126:IBitSet;
    FOLLOW_declaration_specifiers_in_function_definition148:IBitSet;
    FOLLOW_declarator_in_function_definition151:IBitSet;
    FOLLOW_declaration_in_function_definition157:IBitSet;
    FOLLOW_compound_statement_in_function_definition160:IBitSet;
    FOLLOW_compound_statement_in_function_definition167:IBitSet;
    FOLLOW_23_in_declaration195:IBitSet;
    FOLLOW_declaration_specifiers_in_declaration197:IBitSet;
    FOLLOW_init_declarator_list_in_declaration205:IBitSet;
    FOLLOW_24_in_declaration207:IBitSet;
    FOLLOW_declaration_specifiers_in_declaration213:IBitSet;
    FOLLOW_init_declarator_list_in_declaration215:IBitSet;
    FOLLOW_24_in_declaration218:IBitSet;
    FOLLOW_storage_class_specifier_in_declaration_specifiers235:IBitSet;
    FOLLOW_type_specifier_in_declaration_specifiers243:IBitSet;
    FOLLOW_type_qualifier_in_declaration_specifiers257:IBitSet;
    FOLLOW_init_declarator_in_init_declarator_list279:IBitSet;
    FOLLOW_25_in_init_declarator_list282:IBitSet;
    FOLLOW_init_declarator_in_init_declarator_list284:IBitSet;
    FOLLOW_declarator_in_init_declarator297:IBitSet;
    FOLLOW_26_in_init_declarator300:IBitSet;
    FOLLOW_initializer_in_init_declarator302:IBitSet;
    FOLLOW_set_in_storage_class_specifier0:IBitSet;
    FOLLOW_31_in_type_specifier341:IBitSet;
    FOLLOW_32_in_type_specifier346:IBitSet;
    FOLLOW_33_in_type_specifier351:IBitSet;
    FOLLOW_34_in_type_specifier356:IBitSet;
    FOLLOW_35_in_type_specifier361:IBitSet;
    FOLLOW_36_in_type_specifier366:IBitSet;
    FOLLOW_37_in_type_specifier371:IBitSet;
    FOLLOW_38_in_type_specifier376:IBitSet;
    FOLLOW_39_in_type_specifier381:IBitSet;
    FOLLOW_struct_or_union_specifier_in_type_specifier386:IBitSet;
    FOLLOW_enum_specifier_in_type_specifier391:IBitSet;
    FOLLOW_type_id_in_type_specifier396:IBitSet;
    FOLLOW_IDENTIFIER_in_type_id414:IBitSet;
    FOLLOW_struct_or_union_in_struct_or_union_specifier447:IBitSet;
    FOLLOW_IDENTIFIER_in_struct_or_union_specifier449:IBitSet;
    FOLLOW_40_in_struct_or_union_specifier452:IBitSet;
    FOLLOW_struct_declaration_list_in_struct_or_union_specifier454:IBitSet;
    FOLLOW_41_in_struct_or_union_specifier456:IBitSet;
    FOLLOW_struct_or_union_in_struct_or_union_specifier461:IBitSet;
    FOLLOW_IDENTIFIER_in_struct_or_union_specifier463:IBitSet;
    FOLLOW_set_in_struct_or_union0:IBitSet;
    FOLLOW_struct_declaration_in_struct_declaration_list490:IBitSet;
    FOLLOW_specifier_qualifier_list_in_struct_declaration502:IBitSet;
    FOLLOW_struct_declarator_list_in_struct_declaration504:IBitSet;
    FOLLOW_24_in_struct_declaration506:IBitSet;
    FOLLOW_type_qualifier_in_specifier_qualifier_list519:IBitSet;
    FOLLOW_type_specifier_in_specifier_qualifier_list523:IBitSet;
    FOLLOW_struct_declarator_in_struct_declarator_list537:IBitSet;
    FOLLOW_25_in_struct_declarator_list540:IBitSet;
    FOLLOW_struct_declarator_in_struct_declarator_list542:IBitSet;
    FOLLOW_declarator_in_struct_declarator555:IBitSet;
    FOLLOW_44_in_struct_declarator558:IBitSet;
    FOLLOW_constant_expression_in_struct_declarator560:IBitSet;
    FOLLOW_44_in_struct_declarator567:IBitSet;
    FOLLOW_constant_expression_in_struct_declarator569:IBitSet;
    FOLLOW_45_in_enum_specifier587:IBitSet;
    FOLLOW_40_in_enum_specifier589:IBitSet;
    FOLLOW_enumerator_list_in_enum_specifier591:IBitSet;
    FOLLOW_41_in_enum_specifier593:IBitSet;
    FOLLOW_45_in_enum_specifier598:IBitSet;
    FOLLOW_IDENTIFIER_in_enum_specifier600:IBitSet;
    FOLLOW_40_in_enum_specifier602:IBitSet;
    FOLLOW_enumerator_list_in_enum_specifier604:IBitSet;
    FOLLOW_41_in_enum_specifier606:IBitSet;
    FOLLOW_45_in_enum_specifier611:IBitSet;
    FOLLOW_IDENTIFIER_in_enum_specifier613:IBitSet;
    FOLLOW_enumerator_in_enumerator_list624:IBitSet;
    FOLLOW_25_in_enumerator_list627:IBitSet;
    FOLLOW_enumerator_in_enumerator_list629:IBitSet;
    FOLLOW_IDENTIFIER_in_enumerator642:IBitSet;
    FOLLOW_26_in_enumerator645:IBitSet;
    FOLLOW_constant_expression_in_enumerator647:IBitSet;
    FOLLOW_set_in_type_qualifier0:IBitSet;
    FOLLOW_pointer_in_declarator676:IBitSet;
    FOLLOW_direct_declarator_in_declarator679:IBitSet;
    FOLLOW_pointer_in_declarator684:IBitSet;
    FOLLOW_IDENTIFIER_in_direct_declarator699:IBitSet;
    FOLLOW_48_in_direct_declarator710:IBitSet;
    FOLLOW_declarator_in_direct_declarator712:IBitSet;
    FOLLOW_49_in_direct_declarator714:IBitSet;
    FOLLOW_declarator_suffix_in_direct_declarator728:IBitSet;
    FOLLOW_50_in_declarator_suffix742:IBitSet;
    FOLLOW_constant_expression_in_declarator_suffix744:IBitSet;
    FOLLOW_51_in_declarator_suffix746:IBitSet;
    FOLLOW_50_in_declarator_suffix756:IBitSet;
    FOLLOW_51_in_declarator_suffix758:IBitSet;
    FOLLOW_48_in_declarator_suffix768:IBitSet;
    FOLLOW_parameter_type_list_in_declarator_suffix770:IBitSet;
    FOLLOW_49_in_declarator_suffix772:IBitSet;
    FOLLOW_48_in_declarator_suffix782:IBitSet;
    FOLLOW_identifier_list_in_declarator_suffix784:IBitSet;
    FOLLOW_49_in_declarator_suffix786:IBitSet;
    FOLLOW_48_in_declarator_suffix796:IBitSet;
    FOLLOW_49_in_declarator_suffix798:IBitSet;
    FOLLOW_52_in_pointer809:IBitSet;
    FOLLOW_type_qualifier_in_pointer811:IBitSet;
    FOLLOW_pointer_in_pointer814:IBitSet;
    FOLLOW_52_in_pointer820:IBitSet;
    FOLLOW_pointer_in_pointer822:IBitSet;
    FOLLOW_52_in_pointer827:IBitSet;
    FOLLOW_parameter_list_in_parameter_type_list838:IBitSet;
    FOLLOW_25_in_parameter_type_list841:IBitSet;
    FOLLOW_53_in_parameter_type_list843:IBitSet;
    FOLLOW_parameter_declaration_in_parameter_list856:IBitSet;
    FOLLOW_25_in_parameter_list859:IBitSet;
    FOLLOW_parameter_declaration_in_parameter_list861:IBitSet;
    FOLLOW_declaration_specifiers_in_parameter_declaration874:IBitSet;
    FOLLOW_declarator_in_parameter_declaration877:IBitSet;
    FOLLOW_abstract_declarator_in_parameter_declaration879:IBitSet;
    FOLLOW_IDENTIFIER_in_identifier_list892:IBitSet;
    FOLLOW_25_in_identifier_list895:IBitSet;
    FOLLOW_IDENTIFIER_in_identifier_list897:IBitSet;
    FOLLOW_specifier_qualifier_list_in_type_name910:IBitSet;
    FOLLOW_abstract_declarator_in_type_name912:IBitSet;
    FOLLOW_pointer_in_abstract_declarator924:IBitSet;
    FOLLOW_direct_abstract_declarator_in_abstract_declarator926:IBitSet;
    FOLLOW_direct_abstract_declarator_in_abstract_declarator932:IBitSet;
    FOLLOW_48_in_direct_abstract_declarator945:IBitSet;
    FOLLOW_abstract_declarator_in_direct_abstract_declarator947:IBitSet;
    FOLLOW_49_in_direct_abstract_declarator949:IBitSet;
    FOLLOW_abstract_declarator_suffix_in_direct_abstract_declarator953:IBitSet;
    FOLLOW_abstract_declarator_suffix_in_direct_abstract_declarator957:IBitSet;
    FOLLOW_50_in_abstract_declarator_suffix969:IBitSet;
    FOLLOW_51_in_abstract_declarator_suffix971:IBitSet;
    FOLLOW_50_in_abstract_declarator_suffix976:IBitSet;
    FOLLOW_constant_expression_in_abstract_declarator_suffix978:IBitSet;
    FOLLOW_51_in_abstract_declarator_suffix980:IBitSet;
    FOLLOW_48_in_abstract_declarator_suffix985:IBitSet;
    FOLLOW_49_in_abstract_declarator_suffix987:IBitSet;
    FOLLOW_48_in_abstract_declarator_suffix992:IBitSet;
    FOLLOW_parameter_type_list_in_abstract_declarator_suffix994:IBitSet;
    FOLLOW_49_in_abstract_declarator_suffix996:IBitSet;
    FOLLOW_assignment_expression_in_initializer1008:IBitSet;
    FOLLOW_40_in_initializer1013:IBitSet;
    FOLLOW_initializer_list_in_initializer1015:IBitSet;
    FOLLOW_25_in_initializer1017:IBitSet;
    FOLLOW_41_in_initializer1020:IBitSet;
    FOLLOW_initializer_in_initializer_list1031:IBitSet;
    FOLLOW_25_in_initializer_list1034:IBitSet;
    FOLLOW_initializer_in_initializer_list1036:IBitSet;
    FOLLOW_assignment_expression_in_argument_expression_list1053:IBitSet;
    FOLLOW_25_in_argument_expression_list1056:IBitSet;
    FOLLOW_assignment_expression_in_argument_expression_list1058:IBitSet;
    FOLLOW_multiplicative_expression_in_additive_expression1072:IBitSet;
    FOLLOW_54_in_additive_expression1076:IBitSet;
    FOLLOW_multiplicative_expression_in_additive_expression1078:IBitSet;
    FOLLOW_55_in_additive_expression1082:IBitSet;
    FOLLOW_multiplicative_expression_in_additive_expression1084:IBitSet;
    FOLLOW_cast_expression_in_multiplicative_expression1098:IBitSet;
    FOLLOW_52_in_multiplicative_expression1102:IBitSet;
    FOLLOW_cast_expression_in_multiplicative_expression1104:IBitSet;
    FOLLOW_56_in_multiplicative_expression1108:IBitSet;
    FOLLOW_cast_expression_in_multiplicative_expression1110:IBitSet;
    FOLLOW_57_in_multiplicative_expression1114:IBitSet;
    FOLLOW_cast_expression_in_multiplicative_expression1116:IBitSet;
    FOLLOW_48_in_cast_expression1129:IBitSet;
    FOLLOW_type_name_in_cast_expression1131:IBitSet;
    FOLLOW_49_in_cast_expression1133:IBitSet;
    FOLLOW_cast_expression_in_cast_expression1135:IBitSet;
    FOLLOW_unary_expression_in_cast_expression1140:IBitSet;
    FOLLOW_postfix_expression_in_unary_expression1151:IBitSet;
    FOLLOW_58_in_unary_expression1156:IBitSet;
    FOLLOW_unary_expression_in_unary_expression1158:IBitSet;
    FOLLOW_59_in_unary_expression1163:IBitSet;
    FOLLOW_unary_expression_in_unary_expression1165:IBitSet;
    FOLLOW_unary_operator_in_unary_expression1170:IBitSet;
    FOLLOW_cast_expression_in_unary_expression1172:IBitSet;
    FOLLOW_60_in_unary_expression1177:IBitSet;
    FOLLOW_unary_expression_in_unary_expression1179:IBitSet;
    FOLLOW_60_in_unary_expression1184:IBitSet;
    FOLLOW_48_in_unary_expression1186:IBitSet;
    FOLLOW_type_name_in_unary_expression1188:IBitSet;
    FOLLOW_49_in_unary_expression1190:IBitSet;
    FOLLOW_primary_expression_in_postfix_expression1203:IBitSet;
    FOLLOW_50_in_postfix_expression1217:IBitSet;
    FOLLOW_expression_in_postfix_expression1219:IBitSet;
    FOLLOW_51_in_postfix_expression1221:IBitSet;
    FOLLOW_48_in_postfix_expression1235:IBitSet;
    FOLLOW_49_in_postfix_expression1237:IBitSet;
    FOLLOW_48_in_postfix_expression1251:IBitSet;
    FOLLOW_argument_expression_list_in_postfix_expression1253:IBitSet;
    FOLLOW_49_in_postfix_expression1255:IBitSet;
    FOLLOW_61_in_postfix_expression1269:IBitSet;
    FOLLOW_IDENTIFIER_in_postfix_expression1271:IBitSet;
    FOLLOW_62_in_postfix_expression1285:IBitSet;
    FOLLOW_IDENTIFIER_in_postfix_expression1287:IBitSet;
    FOLLOW_58_in_postfix_expression1301:IBitSet;
    FOLLOW_59_in_postfix_expression1315:IBitSet;
    FOLLOW_set_in_unary_operator0:IBitSet;
    FOLLOW_IDENTIFIER_in_primary_expression1373:IBitSet;
    FOLLOW_constant_in_primary_expression1378:IBitSet;
    FOLLOW_48_in_primary_expression1383:IBitSet;
    FOLLOW_expression_in_primary_expression1385:IBitSet;
    FOLLOW_49_in_primary_expression1387:IBitSet;
    FOLLOW_set_in_constant0:IBitSet;
    FOLLOW_assignment_expression_in_expression1462:IBitSet;
    FOLLOW_25_in_expression1465:IBitSet;
    FOLLOW_assignment_expression_in_expression1467:IBitSet;
    FOLLOW_conditional_expression_in_constant_expression1480:IBitSet;
    FOLLOW_lvalue_in_assignment_expression1491:IBitSet;
    FOLLOW_assignment_operator_in_assignment_expression1493:IBitSet;
    FOLLOW_assignment_expression_in_assignment_expression1495:IBitSet;
    FOLLOW_conditional_expression_in_assignment_expression1500:IBitSet;
    FOLLOW_unary_expression_in_lvalue1512:IBitSet;
    FOLLOW_set_in_assignment_operator0:IBitSet;
    FOLLOW_logical_or_expression_in_conditional_expression1584:IBitSet;
    FOLLOW_76_in_conditional_expression1587:IBitSet;
    FOLLOW_expression_in_conditional_expression1589:IBitSet;
    FOLLOW_44_in_conditional_expression1591:IBitSet;
    FOLLOW_conditional_expression_in_conditional_expression1593:IBitSet;
    FOLLOW_logical_and_expression_in_logical_or_expression1606:IBitSet;
    FOLLOW_77_in_logical_or_expression1609:IBitSet;
    FOLLOW_logical_and_expression_in_logical_or_expression1611:IBitSet;
    FOLLOW_inclusive_or_expression_in_logical_and_expression1624:IBitSet;
    FOLLOW_78_in_logical_and_expression1627:IBitSet;
    FOLLOW_inclusive_or_expression_in_logical_and_expression1629:IBitSet;
    FOLLOW_exclusive_or_expression_in_inclusive_or_expression1642:IBitSet;
    FOLLOW_79_in_inclusive_or_expression1645:IBitSet;
    FOLLOW_exclusive_or_expression_in_inclusive_or_expression1647:IBitSet;
    FOLLOW_and_expression_in_exclusive_or_expression1660:IBitSet;
    FOLLOW_80_in_exclusive_or_expression1663:IBitSet;
    FOLLOW_and_expression_in_exclusive_or_expression1665:IBitSet;
    FOLLOW_equality_expression_in_and_expression1678:IBitSet;
    FOLLOW_63_in_and_expression1681:IBitSet;
    FOLLOW_equality_expression_in_and_expression1683:IBitSet;
    FOLLOW_relational_expression_in_equality_expression1695:IBitSet;
    FOLLOW_set_in_equality_expression1698:IBitSet;
    FOLLOW_relational_expression_in_equality_expression1704:IBitSet;
    FOLLOW_shift_expression_in_relational_expression1717:IBitSet;
    FOLLOW_set_in_relational_expression1720:IBitSet;
    FOLLOW_shift_expression_in_relational_expression1730:IBitSet;
    FOLLOW_additive_expression_in_shift_expression1743:IBitSet;
    FOLLOW_set_in_shift_expression1746:IBitSet;
    FOLLOW_additive_expression_in_shift_expression1752:IBitSet;
    FOLLOW_labeled_statement_in_statement1767:IBitSet;
    FOLLOW_compound_statement_in_statement1772:IBitSet;
    FOLLOW_expression_statement_in_statement1777:IBitSet;
    FOLLOW_selection_statement_in_statement1782:IBitSet;
    FOLLOW_iteration_statement_in_statement1787:IBitSet;
    FOLLOW_jump_statement_in_statement1792:IBitSet;
    FOLLOW_IDENTIFIER_in_labeled_statement1803:IBitSet;
    FOLLOW_44_in_labeled_statement1805:IBitSet;
    FOLLOW_statement_in_labeled_statement1807:IBitSet;
    FOLLOW_89_in_labeled_statement1812:IBitSet;
    FOLLOW_constant_expression_in_labeled_statement1814:IBitSet;
    FOLLOW_44_in_labeled_statement1816:IBitSet;
    FOLLOW_statement_in_labeled_statement1818:IBitSet;
    FOLLOW_90_in_labeled_statement1823:IBitSet;
    FOLLOW_44_in_labeled_statement1825:IBitSet;
    FOLLOW_statement_in_labeled_statement1827:IBitSet;
    FOLLOW_40_in_compound_statement1849:IBitSet;
    FOLLOW_declaration_in_compound_statement1851:IBitSet;
    FOLLOW_statement_list_in_compound_statement1854:IBitSet;
    FOLLOW_41_in_compound_statement1857:IBitSet;
    FOLLOW_statement_in_statement_list1868:IBitSet;
    FOLLOW_24_in_expression_statement1880:IBitSet;
    FOLLOW_expression_in_expression_statement1885:IBitSet;
    FOLLOW_24_in_expression_statement1887:IBitSet;
    FOLLOW_91_in_selection_statement1898:IBitSet;
    FOLLOW_48_in_selection_statement1900:IBitSet;
    FOLLOW_expression_in_selection_statement1902:IBitSet;
    FOLLOW_49_in_selection_statement1904:IBitSet;
    FOLLOW_statement_in_selection_statement1906:IBitSet;
    FOLLOW_92_in_selection_statement1921:IBitSet;
    FOLLOW_statement_in_selection_statement1923:IBitSet;
    FOLLOW_93_in_selection_statement1930:IBitSet;
    FOLLOW_48_in_selection_statement1932:IBitSet;
    FOLLOW_expression_in_selection_statement1934:IBitSet;
    FOLLOW_49_in_selection_statement1936:IBitSet;
    FOLLOW_statement_in_selection_statement1938:IBitSet;
    FOLLOW_94_in_iteration_statement1949:IBitSet;
    FOLLOW_48_in_iteration_statement1951:IBitSet;
    FOLLOW_expression_in_iteration_statement1953:IBitSet;
    FOLLOW_49_in_iteration_statement1955:IBitSet;
    FOLLOW_statement_in_iteration_statement1957:IBitSet;
    FOLLOW_95_in_iteration_statement1962:IBitSet;
    FOLLOW_statement_in_iteration_statement1964:IBitSet;
    FOLLOW_94_in_iteration_statement1966:IBitSet;
    FOLLOW_48_in_iteration_statement1968:IBitSet;
    FOLLOW_expression_in_iteration_statement1970:IBitSet;
    FOLLOW_49_in_iteration_statement1972:IBitSet;
    FOLLOW_24_in_iteration_statement1974:IBitSet;
    FOLLOW_96_in_iteration_statement1979:IBitSet;
    FOLLOW_48_in_iteration_statement1981:IBitSet;
    FOLLOW_expression_statement_in_iteration_statement1983:IBitSet;
    FOLLOW_expression_statement_in_iteration_statement1985:IBitSet;
    FOLLOW_expression_in_iteration_statement1987:IBitSet;
    FOLLOW_49_in_iteration_statement1990:IBitSet;
    FOLLOW_statement_in_iteration_statement1992:IBitSet;
    FOLLOW_97_in_jump_statement2003:IBitSet;
    FOLLOW_IDENTIFIER_in_jump_statement2005:IBitSet;
    FOLLOW_24_in_jump_statement2007:IBitSet;
    FOLLOW_98_in_jump_statement2012:IBitSet;
    FOLLOW_24_in_jump_statement2014:IBitSet;
    FOLLOW_99_in_jump_statement2019:IBitSet;
    FOLLOW_24_in_jump_statement2021:IBitSet;
    FOLLOW_100_in_jump_statement2026:IBitSet;
    FOLLOW_24_in_jump_statement2028:IBitSet;
    FOLLOW_100_in_jump_statement2033:IBitSet;
    FOLLOW_expression_in_jump_statement2035:IBitSet;
    FOLLOW_24_in_jump_statement2037:IBitSet;
    FOLLOW_declaration_specifiers_in_synpred2_C108:IBitSet;
    FOLLOW_declaration_specifiers_in_synpred4_C108:IBitSet;
    FOLLOW_declarator_in_synpred4_C111:IBitSet;
    FOLLOW_declaration_in_synpred4_C113:IBitSet;
    FOLLOW_40_in_synpred4_C116:IBitSet;
    FOLLOW_declaration_specifiers_in_synpred5_C148:IBitSet;
    FOLLOW_declaration_specifiers_in_synpred8_C197:IBitSet;
    FOLLOW_type_specifier_in_synpred12_C243:IBitSet;
    FOLLOW_type_specifier_in_synpred35_C523:IBitSet;
    FOLLOW_pointer_in_synpred45_C676:IBitSet;
    FOLLOW_direct_declarator_in_synpred45_C679:IBitSet;
    FOLLOW_declarator_suffix_in_synpred47_C728:IBitSet;
    FOLLOW_48_in_synpred50_C768:IBitSet;
    FOLLOW_parameter_type_list_in_synpred50_C770:IBitSet;
    FOLLOW_49_in_synpred50_C772:IBitSet;
    FOLLOW_48_in_synpred51_C782:IBitSet;
    FOLLOW_identifier_list_in_synpred51_C784:IBitSet;
    FOLLOW_49_in_synpred51_C786:IBitSet;
    FOLLOW_type_qualifier_in_synpred52_C811:IBitSet;
    FOLLOW_pointer_in_synpred53_C814:IBitSet;
    FOLLOW_52_in_synpred54_C809:IBitSet;
    FOLLOW_type_qualifier_in_synpred54_C811:IBitSet;
    FOLLOW_pointer_in_synpred54_C814:IBitSet;
    FOLLOW_52_in_synpred55_C820:IBitSet;
    FOLLOW_pointer_in_synpred55_C822:IBitSet;
    FOLLOW_declarator_in_synpred58_C877:IBitSet;
    FOLLOW_abstract_declarator_in_synpred59_C879:IBitSet;
    FOLLOW_direct_abstract_declarator_in_synpred62_C926:IBitSet;
    FOLLOW_abstract_declarator_suffix_in_synpred65_C957:IBitSet;
    FOLLOW_48_in_synpred78_C1129:IBitSet;
    FOLLOW_type_name_in_synpred78_C1131:IBitSet;
    FOLLOW_49_in_synpred78_C1133:IBitSet;
    FOLLOW_cast_expression_in_synpred78_C1135:IBitSet;
    FOLLOW_60_in_synpred83_C1177:IBitSet;
    FOLLOW_unary_expression_in_synpred83_C1179:IBitSet;
    FOLLOW_lvalue_in_synpred104_C1491:IBitSet;
    FOLLOW_assignment_operator_in_synpred104_C1493:IBitSet;
    FOLLOW_assignment_expression_in_synpred104_C1495:IBitSet;
    FOLLOW_declaration_in_synpred136_C1851:IBitSet;
    

    // delegates
    // delegators
    

    public 
      type TSymbols_scope=class(TInterfacedObject) 
        types:IJclStrSet;
      end;
    public
      Symbols_stack:IJclStack ;

        

        constructor CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState);
        destructor Destroy;override;
        
    function GetTokenNames():TStrings;override;
    function GetGrammarFileName():String;override;
    procedure InitBitsets;
  public

    function isTypeName(name:string):boolean; 



    // $ANTLR start "translation_unit"
    // C.g:39:1: translation_unit : ( external_declaration )+ ;
    function translation_unit():Integer;
    // $ANTLR end translation_unit


    // $ANTLR start "external_declaration"
    // C.g:47:1: external_declaration options {k=1; } : ( ( ( declaration_specifiers )? declarator ( declaration )* ''{'' )=> function_definition | declaration );
    function external_declaration():Integer;
    // $ANTLR end external_declaration


    // $ANTLR start "function_definition"
    // C.g:67:1: function_definition : ( declaration_specifiers )? declarator ( ( declaration )+ compound_statement | compound_statement ) ;
    function function_definition():Integer;
    // $ANTLR end function_definition

    public 
      type 
        Tdeclaration_scope=class(TInterfacedObject) 
        isTypedef:boolean;
        end;
    public
        declaration_stack:IJclStack;


    // $ANTLR start "declaration"
    // C.g:78:1: declaration : ( ''typedef'' ( declaration_specifiers )? init_declarator_list '';'' | declaration_specifiers ( init_declarator_list )? '';'' );
    function declaration():Integer;
    // $ANTLR end declaration


    // $ANTLR start "declaration_specifiers"
    // C.g:90:1: declaration_specifiers : ( storage_class_specifier | type_specifier | type_qualifier )+ ;
    function declaration_specifiers():Integer;
    // $ANTLR end declaration_specifiers


    // $ANTLR start "init_declarator_list"
    // C.g:97:1: init_declarator_list : init_declarator ( '','' init_declarator )* ;
    function init_declarator_list():Integer;
    // $ANTLR end init_declarator_list


    // $ANTLR start "init_declarator"
    // C.g:101:1: init_declarator : declarator ( ''='' initializer )? ;
    function init_declarator():Integer;
    // $ANTLR end init_declarator


    // $ANTLR start "storage_class_specifier"
    // C.g:105:1: storage_class_specifier : ( ''extern'' | ''static'' | ''auto'' | ''register'' );
    function storage_class_specifier():Integer;
    // $ANTLR end storage_class_specifier


    // $ANTLR start "type_specifier"
    // C.g:112:1: type_specifier : ( ''void'' | ''char'' | ''short'' | ''int'' | ''long'' | ''float'' | ''double'' | ''signed'' | ''unsigned'' | struct_or_union_specifier | enum_specifier | type_id );
    function type_specifier():Integer;
    // $ANTLR end type_specifier


    // $ANTLR start "type_id"
    // C.g:127:1: type_id : {...}? IDENTIFIER ;
    function type_id():Integer;
    // $ANTLR end type_id


    // $ANTLR start "struct_or_union_specifier"
    // C.g:132:1: struct_or_union_specifier options {k=3; } : ( struct_or_union ( IDENTIFIER )? ''{'' struct_declaration_list ''}'' | struct_or_union IDENTIFIER );
    function struct_or_union_specifier():Integer;
    // $ANTLR end struct_or_union_specifier


    // $ANTLR start "struct_or_union"
    // C.g:142:1: struct_or_union : ( ''struct'' | ''union'' );
    function struct_or_union():Integer;
    // $ANTLR end struct_or_union


    // $ANTLR start "struct_declaration_list"
    // C.g:147:1: struct_declaration_list : ( struct_declaration )+ ;
    function struct_declaration_list():Integer;
    // $ANTLR end struct_declaration_list


    // $ANTLR start "struct_declaration"
    // C.g:151:1: struct_declaration : specifier_qualifier_list struct_declarator_list '';'' ;
    function struct_declaration():Integer;
    // $ANTLR end struct_declaration


    // $ANTLR start "specifier_qualifier_list"
    // C.g:155:1: specifier_qualifier_list : ( type_qualifier | type_specifier )+ ;
    function specifier_qualifier_list():Integer;
    // $ANTLR end specifier_qualifier_list


    // $ANTLR start "struct_declarator_list"
    // C.g:159:1: struct_declarator_list : struct_declarator ( '','' struct_declarator )* ;
    function struct_declarator_list():Integer;
    // $ANTLR end struct_declarator_list


    // $ANTLR start "struct_declarator"
    // C.g:163:1: struct_declarator : ( declarator ( '':'' constant_expression )? | '':'' constant_expression );
    function struct_declarator():Integer;
    // $ANTLR end struct_declarator


    // $ANTLR start "enum_specifier"
    // C.g:168:1: enum_specifier options {k=3; } : ( ''enum'' ''{'' enumerator_list ''}'' | ''enum'' IDENTIFIER ''{'' enumerator_list ''}'' | ''enum'' IDENTIFIER );
    function enum_specifier():Integer;
    // $ANTLR end enum_specifier


    // $ANTLR start "enumerator_list"
    // C.g:175:1: enumerator_list : enumerator ( '','' enumerator )* ;
    function enumerator_list():Integer;
    // $ANTLR end enumerator_list


    // $ANTLR start "enumerator"
    // C.g:179:1: enumerator : IDENTIFIER ( ''='' constant_expression )? ;
    function enumerator():Integer;
    // $ANTLR end enumerator


    // $ANTLR start "type_qualifier"
    // C.g:183:1: type_qualifier : ( ''const'' | ''volatile'' );
    function type_qualifier():Integer;
    // $ANTLR end type_qualifier


    // $ANTLR start "declarator"
    // C.g:188:1: declarator : ( ( pointer )? direct_declarator | pointer );
    function declarator():Integer;
    // $ANTLR end declarator


    // $ANTLR start "direct_declarator"
    // C.g:193:1: direct_declarator : ( IDENTIFIER | ''('' declarator '')'' ) ( declarator_suffix )* ;
    function direct_declarator():Integer;
    // $ANTLR end direct_declarator


    // $ANTLR start "declarator_suffix"
    // C.g:207:1: declarator_suffix : ( ''['' constant_expression '']'' | ''['' '']'' | ''('' parameter_type_list '')'' | ''('' identifier_list '')'' | ''('' '')'' );
    function declarator_suffix():Integer;
    // $ANTLR end declarator_suffix


    // $ANTLR start "pointer"
    // C.g:215:1: pointer : ( ''*'' ( type_qualifier )+ ( pointer )? | ''*'' pointer | ''*'' );
    function pointer():Integer;
    // $ANTLR end pointer


    // $ANTLR start "parameter_type_list"
    // C.g:221:1: parameter_type_list : parameter_list ( '','' ''...'' )? ;
    function parameter_type_list():Integer;
    // $ANTLR end parameter_type_list


    // $ANTLR start "parameter_list"
    // C.g:225:1: parameter_list : parameter_declaration ( '','' parameter_declaration )* ;
    function parameter_list():Integer;
    // $ANTLR end parameter_list


    // $ANTLR start "parameter_declaration"
    // C.g:229:1: parameter_declaration : declaration_specifiers ( declarator | abstract_declarator )* ;
    function parameter_declaration():Integer;
    // $ANTLR end parameter_declaration


    // $ANTLR start "identifier_list"
    // C.g:233:1: identifier_list : IDENTIFIER ( '','' IDENTIFIER )* ;
    function identifier_list():Integer;
    // $ANTLR end identifier_list


    // $ANTLR start "type_name"
    // C.g:237:1: type_name : specifier_qualifier_list ( abstract_declarator )? ;
    function type_name():Integer;
    // $ANTLR end type_name


    // $ANTLR start "abstract_declarator"
    // C.g:241:1: abstract_declarator : ( pointer ( direct_abstract_declarator )? | direct_abstract_declarator );
    function abstract_declarator():Integer;
    // $ANTLR end abstract_declarator


    // $ANTLR start "direct_abstract_declarator"
    // C.g:246:1: direct_abstract_declarator : ( ''('' abstract_declarator '')'' | abstract_declarator_suffix ) ( abstract_declarator_suffix )* ;
    function direct_abstract_declarator():Integer;
    // $ANTLR end direct_abstract_declarator


    // $ANTLR start "abstract_declarator_suffix"
    // C.g:250:1: abstract_declarator_suffix : ( ''['' '']'' | ''['' constant_expression '']'' | ''('' '')'' | ''('' parameter_type_list '')'' );
    function abstract_declarator_suffix():Integer;
    // $ANTLR end abstract_declarator_suffix


    // $ANTLR start "initializer"
    // C.g:257:1: initializer : ( assignment_expression | ''{'' initializer_list ( '','' )? ''}'' );
    function initializer():Integer;
    // $ANTLR end initializer


    // $ANTLR start "initializer_list"
    // C.g:262:1: initializer_list : initializer ( '','' initializer )* ;
    function initializer_list():Integer;
    // $ANTLR end initializer_list


    // $ANTLR start "argument_expression_list"
    // C.g:268:1: argument_expression_list : assignment_expression ( '','' assignment_expression )* ;
    function argument_expression_list():Integer;
    // $ANTLR end argument_expression_list


    // $ANTLR start "additive_expression"
    // C.g:272:1: additive_expression : ( multiplicative_expression ) ( ''+'' multiplicative_expression | ''-'' multiplicative_expression )* ;
    function additive_expression():Integer;
    // $ANTLR end additive_expression


    // $ANTLR start "multiplicative_expression"
    // C.g:276:1: multiplicative_expression : ( cast_expression ) ( ''*'' cast_expression | ''/'' cast_expression | ''%'' cast_expression )* ;
    function multiplicative_expression():Integer;
    // $ANTLR end multiplicative_expression


    // $ANTLR start "cast_expression"
    // C.g:280:1: cast_expression : ( ''('' type_name '')'' cast_expression | unary_expression );
    function cast_expression():Integer;
    // $ANTLR end cast_expression


    // $ANTLR start "unary_expression"
    // C.g:285:1: unary_expression : ( postfix_expression | ''++'' unary_expression | ''--'' unary_expression | unary_operator cast_expression | ''sizeof'' unary_expression | ''sizeof'' ''('' type_name '')'' );
    function unary_expression():Integer;
    // $ANTLR end unary_expression


    // $ANTLR start "postfix_expression"
    // C.g:294:1: postfix_expression : primary_expression ( ''['' expression '']'' | ''('' '')'' | ''('' argument_expression_list '')'' | ''.'' IDENTIFIER | ''->'' IDENTIFIER | ''++'' | ''--'' )* ;
    function postfix_expression():Integer;
    // $ANTLR end postfix_expression


    // $ANTLR start "unary_operator"
    // C.g:306:1: unary_operator : ( ''&'' | ''*'' | ''+'' | ''-'' | ''~'' | ''!'' );
    function unary_operator():Integer;
    // $ANTLR end unary_operator


    // $ANTLR start "primary_expression"
    // C.g:315:1: primary_expression : ( IDENTIFIER | constant | ''('' expression '')'' );
    function primary_expression():Integer;
    // $ANTLR end primary_expression


    // $ANTLR start "constant"
    // C.g:321:1: constant : ( HEX_LITERAL | OCTAL_LITERAL | DECIMAL_LITERAL | CHARACTER_LITERAL | STRING_LITERAL | FLOATING_POINT_LITERAL );
    function constant():Integer;
    // $ANTLR end constant


    // $ANTLR start "expression"
    // C.g:332:1: expression : assignment_expression ( '','' assignment_expression )* ;
    function expression():Integer;
    // $ANTLR end expression


    // $ANTLR start "constant_expression"
    // C.g:336:1: constant_expression : conditional_expression ;
    function constant_expression():Integer;
    // $ANTLR end constant_expression


    // $ANTLR start "assignment_expression"
    // C.g:340:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );
    function assignment_expression():Integer;
    // $ANTLR end assignment_expression


    // $ANTLR start "lvalue"
    // C.g:345:1: lvalue : unary_expression ;
    function lvalue():Integer;
    // $ANTLR end lvalue


    // $ANTLR start "assignment_operator"
    // C.g:349:1: assignment_operator : ( ''='' | ''*='' | ''/='' | ''%='' | ''+='' | ''-='' | ''<<='' | ''>>='' | ''&='' | ''^='' | ''|='' );
    function assignment_operator():Integer;
    // $ANTLR end assignment_operator


    // $ANTLR start "conditional_expression"
    // C.g:363:1: conditional_expression : logical_or_expression ( ''?'' expression '':'' conditional_expression )? ;
    function conditional_expression():Integer;
    // $ANTLR end conditional_expression


    // $ANTLR start "logical_or_expression"
    // C.g:367:1: logical_or_expression : logical_and_expression ( ''||'' logical_and_expression )* ;
    function logical_or_expression():Integer;
    // $ANTLR end logical_or_expression


    // $ANTLR start "logical_and_expression"
    // C.g:371:1: logical_and_expression : inclusive_or_expression ( ''&&'' inclusive_or_expression )* ;
    function logical_and_expression():Integer;
    // $ANTLR end logical_and_expression


    // $ANTLR start "inclusive_or_expression"
    // C.g:375:1: inclusive_or_expression : exclusive_or_expression ( ''|'' exclusive_or_expression )* ;
    function inclusive_or_expression():Integer;
    // $ANTLR end inclusive_or_expression


    // $ANTLR start "exclusive_or_expression"
    // C.g:379:1: exclusive_or_expression : and_expression ( ''^'' and_expression )* ;
    function exclusive_or_expression():Integer;
    // $ANTLR end exclusive_or_expression


    // $ANTLR start "and_expression"
    // C.g:383:1: and_expression : equality_expression ( ''&'' equality_expression )* ;
    function and_expression():Integer;
    // $ANTLR end and_expression


    // $ANTLR start "equality_expression"
    // C.g:386:1: equality_expression : relational_expression ( ( ''=='' | ''!='' ) relational_expression )* ;
    function equality_expression():Integer;
    // $ANTLR end equality_expression


    // $ANTLR start "relational_expression"
    // C.g:390:1: relational_expression : shift_expression ( ( ''<'' | ''>'' | ''<='' | ''>='' ) shift_expression )* ;
    function relational_expression():Integer;
    // $ANTLR end relational_expression


    // $ANTLR start "shift_expression"
    // C.g:394:1: shift_expression : additive_expression ( ( ''<<'' | ''>>'' ) additive_expression )* ;
    function shift_expression():Integer;
    // $ANTLR end shift_expression


    // $ANTLR start "statement"
    // C.g:400:1: statement : ( labeled_statement | compound_statement | expression_statement | selection_statement | iteration_statement | jump_statement );
    function statement():Integer;
    // $ANTLR end statement


    // $ANTLR start "labeled_statement"
    // C.g:409:1: labeled_statement : ( IDENTIFIER '':'' statement | ''case'' constant_expression '':'' statement | ''default'' '':'' statement );
    function labeled_statement():Integer;
    // $ANTLR end labeled_statement


    // $ANTLR start "compound_statement"
    // C.g:415:1: compound_statement : ''{'' ( declaration )* ( statement_list )? ''}'' ;
    function compound_statement():Integer;
    // $ANTLR end compound_statement


    // $ANTLR start "statement_list"
    // C.g:423:1: statement_list : ( statement )+ ;
    function statement_list():Integer;
    // $ANTLR end statement_list


    // $ANTLR start "expression_statement"
    // C.g:427:1: expression_statement : ( '';'' | expression '';'' );
    function expression_statement():Integer;
    // $ANTLR end expression_statement


    // $ANTLR start "selection_statement"
    // C.g:432:1: selection_statement : ( ''if'' ''('' expression '')'' statement ( options {k=1; backtrack=false; } : ''else'' statement )? | ''switch'' ''('' expression '')'' statement );
    function selection_statement():Integer;
    // $ANTLR end selection_statement


    // $ANTLR start "iteration_statement"
    // C.g:437:1: iteration_statement : ( ''while'' ''('' expression '')'' statement | ''do'' statement ''while'' ''('' expression '')'' '';'' | ''for'' ''('' expression_statement expression_statement ( expression )? '')'' statement );
    function iteration_statement():Integer;
    // $ANTLR end iteration_statement


    // $ANTLR start "jump_statement"
    // C.g:443:1: jump_statement : ( ''goto'' IDENTIFIER '';'' | ''continue'' '';'' | ''break'' '';'' | ''return'' '';'' | ''return'' expression '';'' );
    function jump_statement():Integer;
    // $ANTLR end jump_statement

    // $ANTLR start "synpred2_C"
    function synpred2_C_fragment():Integer;
    // $ANTLR end synpred2_C

    // $ANTLR start "synpred4_C"
    function synpred4_C_fragment():Integer;
    // $ANTLR end synpred4_C

    // $ANTLR start "synpred5_C"
    function synpred5_C_fragment():Integer;
    // $ANTLR end synpred5_C

    // $ANTLR start "synpred8_C"
    function synpred8_C_fragment():Integer;
    // $ANTLR end synpred8_C

    // $ANTLR start "synpred12_C"
    function synpred12_C_fragment():Integer;
    // $ANTLR end synpred12_C

    // $ANTLR start "synpred35_C"
    function synpred35_C_fragment():Integer;
    // $ANTLR end synpred35_C

    // $ANTLR start "synpred45_C"
    function synpred45_C_fragment():Integer;
    // $ANTLR end synpred45_C

    // $ANTLR start "synpred47_C"
    function synpred47_C_fragment():Integer;
    // $ANTLR end synpred47_C

    // $ANTLR start "synpred50_C"
    function synpred50_C_fragment():Integer;
    // $ANTLR end synpred50_C

    // $ANTLR start "synpred51_C"
    function synpred51_C_fragment():Integer;
    // $ANTLR end synpred51_C

    // $ANTLR start "synpred52_C"
    function synpred52_C_fragment():Integer;
    // $ANTLR end synpred52_C

    // $ANTLR start "synpred53_C"
    function synpred53_C_fragment():Integer;
    // $ANTLR end synpred53_C

    // $ANTLR start "synpred54_C"
    function synpred54_C_fragment():Integer;
    // $ANTLR end synpred54_C

    // $ANTLR start "synpred55_C"
    function synpred55_C_fragment():Integer;
    // $ANTLR end synpred55_C

    // $ANTLR start "synpred58_C"
    function synpred58_C_fragment():Integer;
    // $ANTLR end synpred58_C

    // $ANTLR start "synpred59_C"
    function synpred59_C_fragment():Integer;
    // $ANTLR end synpred59_C

    // $ANTLR start "synpred62_C"
    function synpred62_C_fragment():Integer;
    // $ANTLR end synpred62_C

    // $ANTLR start "synpred65_C"
    function synpred65_C_fragment():Integer;
    // $ANTLR end synpred65_C

    // $ANTLR start "synpred78_C"
    function synpred78_C_fragment():Integer;
    // $ANTLR end synpred78_C

    // $ANTLR start "synpred83_C"
    function synpred83_C_fragment():Integer;
    // $ANTLR end synpred83_C

    // $ANTLR start "synpred104_C"
    function synpred104_C_fragment():Integer;
    // $ANTLR end synpred104_C

    // $ANTLR start "synpred136_C"
    function synpred136_C_fragment():Integer;
    // $ANTLR end synpred136_C

    // Delegated rules

    function synpred65_C():Boolean;function synpred47_C():Boolean;function synpred2_C():Boolean;function synpred136_C():Boolean;function synpred50_C():Boolean;function synpred62_C():Boolean;function synpred5_C():Boolean;function synpred35_C():Boolean;function synpred104_C():Boolean;function synpred55_C():Boolean;function synpred45_C():Boolean;function synpred51_C():Boolean;function synpred54_C():Boolean;function synpred78_C():Boolean;function synpred12_C():Boolean;function synpred59_C():Boolean;function synpred58_C():Boolean;function synpred52_C():Boolean;function synpred4_C():Boolean;function synpred8_C():Boolean;function synpred83_C():Boolean;function synpred53_C():Boolean;
  protected

     
          type TAntlrDFA1=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa1:IDFA;
        protected
          dfa1:IDFA;

     
          type TAntlrDFA2=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa2:IDFA;
        protected
          dfa2:IDFA;

     
          type TAntlrDFA3=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa3:IDFA;
        protected
          dfa3:IDFA;

     
          type TAntlrDFA5=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa5:IDFA;
        protected
          dfa5:IDFA;

     
          type TAntlrDFA4=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa4:IDFA;
        protected
          dfa4:IDFA;

     
          type TAntlrDFA8=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa8:IDFA;
        protected
          dfa8:IDFA;

     
          type TAntlrDFA6=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa6:IDFA;
        protected
          dfa6:IDFA;

     
          type TAntlrDFA9=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa9:IDFA;
        protected
          dfa9:IDFA;

     
          type TAntlrDFA12=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa12:IDFA;
        protected
          dfa12:IDFA;

     
          type TAntlrDFA14=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa14:IDFA;
        protected
          dfa14:IDFA;

     
          type TAntlrDFA15=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa15:IDFA;
        protected
          dfa15:IDFA;

     
          type TAntlrDFA16=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa16:IDFA;
        protected
          dfa16:IDFA;

     
          type TAntlrDFA20=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa20:IDFA;
        protected
          dfa20:IDFA;

     
          type TAntlrDFA24=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa24:IDFA;
        protected
          dfa24:IDFA;

     
          type TAntlrDFA26=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa26:IDFA;
        protected
          dfa26:IDFA;

     
          type TAntlrDFA27=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa27:IDFA;
        protected
          dfa27:IDFA;

     
          type TAntlrDFA30=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa30:IDFA;
        protected
          dfa30:IDFA;

     
          type TAntlrDFA28=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa28:IDFA;
        protected
          dfa28:IDFA;

     
          type TAntlrDFA29=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa29:IDFA;
        protected
          dfa29:IDFA;

     
          type TAntlrDFA32=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa32:IDFA;
        protected
          dfa32:IDFA;

     
          type TAntlrDFA33=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa33:IDFA;
        protected
          dfa33:IDFA;

     
          type TAntlrDFA36=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa36:IDFA;
        protected
          dfa36:IDFA;

     
          type TAntlrDFA38=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa38:IDFA;
        protected
          dfa38:IDFA;

     
          type TAntlrDFA39=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa39:IDFA;
        protected
          dfa39:IDFA;

     
          type TAntlrDFA40=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa40:IDFA;
        protected
          dfa40:IDFA;

     
          type TAntlrDFA43=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa43:IDFA;
        protected
          dfa43:IDFA;

     
          type TAntlrDFA45=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa45:IDFA;
        protected
          dfa45:IDFA;

     
          type TAntlrDFA46=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa46:IDFA;
        protected
          dfa46:IDFA;

     
          type TAntlrDFA47=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa47:IDFA;
        protected
          dfa47:IDFA;

     
          type TAntlrDFA48=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa48:IDFA;
        protected
          dfa48:IDFA;

     
          type TAntlrDFA49=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa49:IDFA;
        protected
          dfa49:IDFA;

     
          type TAntlrDFA52=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa52:IDFA;
        protected
          dfa52:IDFA;

     
          type TAntlrDFA54=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa54:IDFA;
        protected
          dfa54:IDFA;

     
          type TAntlrDFA55=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa55:IDFA;
        protected
          dfa55:IDFA;

     
          type TAntlrDFA56=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa56:IDFA;
        protected
          dfa56:IDFA;

     
          type TAntlrDFA57=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa57:IDFA;
        protected
          dfa57:IDFA;

     
          type TAntlrDFA58=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa58:IDFA;
        protected
          dfa58:IDFA;

     
          type TAntlrDFA59=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa59:IDFA;
        protected
          dfa59:IDFA;

     
          type TAntlrDFA60=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa60:IDFA;
        protected
          dfa60:IDFA;

     
          type TAntlrDFA61=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa61:IDFA;
        protected
          dfa61:IDFA;

     
          type TAntlrDFA62=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa62:IDFA;
        protected
          dfa62:IDFA;

     
          type TAntlrDFA64=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa64:IDFA;
        protected
          dfa64:IDFA;

     
          type TAntlrDFA65=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa65:IDFA;
        protected
          dfa65:IDFA;

     
          type TAntlrDFA66=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa66:IDFA;
        protected
          dfa66:IDFA;

     
          type TAntlrDFA72=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa72:IDFA;
        protected
          dfa72:IDFA;

     
          type TAntlrDFA73=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
            function specialStateTransition(s:Integer;_input:IIntStream):integer;override;        
          end;
          function getDfa73:IDFA;
        protected
          dfa73:IDFA;

     
          type TAntlrDFA74=class(TAntlrDFA)

            constructor Create(ARecognizer:TAntlrBaseRecognizer);
            function getDescription:string;override;
            
          end;
          function getDfa74:IDFA;
        protected
          dfa74:IDFA;
  end;

implementation
uses JclStacks,JclArrayLists,
    // delegates
    // delegators
 
    JclHashSets;

function TCParser.GetTokenNames():TStrings;
begin
  Result:=tokenNames;
end;

constructor TCParser.CreateWithStream(input:ITokenStream;AState:TRecognizerSharedState);
begin
  inherited Create(input, AState);
    
  tokenNames:=TStringList.Create;
  tokenNames.Add('<invalid>');
  tokenNames.Add('<EOR>');
  tokenNames.Add('<DOWN>');
  tokenNames.Add('<UP>');
  tokenNames.Add('"IDENTIFIER"');
  tokenNames.Add('"HEX_LITERAL"');
  tokenNames.Add('"OCTAL_LITERAL"');
  tokenNames.Add('"DECIMAL_LITERAL"');
  tokenNames.Add('"CHARACTER_LITERAL"');
  tokenNames.Add('"STRING_LITERAL"');
  tokenNames.Add('"FLOATING_POINT_LITERAL"');
  tokenNames.Add('"LETTER"');
  tokenNames.Add('"EscapeSequence"');
  tokenNames.Add('"HexDigit"');
  tokenNames.Add('"IntegerTypeSuffix"');
  tokenNames.Add('"Exponent"');
  tokenNames.Add('"FloatTypeSuffix"');
  tokenNames.Add('"OctalEscape"');
  tokenNames.Add('"UnicodeEscape"');
  tokenNames.Add('"WS"');
  tokenNames.Add('"COMMENT"');
  tokenNames.Add('"LINE_COMMENT"');
  tokenNames.Add('"LINE_COMMAND"');
  tokenNames.Add('"''typedef''"');
  tokenNames.Add('"'';''"');
  tokenNames.Add('"'',''"');
  tokenNames.Add('"''=''"');
  tokenNames.Add('"''extern''"');
  tokenNames.Add('"''static''"');
  tokenNames.Add('"''auto''"');
  tokenNames.Add('"''register''"');
  tokenNames.Add('"''void''"');
  tokenNames.Add('"''char''"');
  tokenNames.Add('"''short''"');
  tokenNames.Add('"''int''"');
  tokenNames.Add('"''long''"');
  tokenNames.Add('"''float''"');
  tokenNames.Add('"''double''"');
  tokenNames.Add('"''signed''"');
  tokenNames.Add('"''unsigned''"');
  tokenNames.Add('"''{''"');
  tokenNames.Add('"''}''"');
  tokenNames.Add('"''struct''"');
  tokenNames.Add('"''union''"');
  tokenNames.Add('"'':''"');
  tokenNames.Add('"''enum''"');
  tokenNames.Add('"''const''"');
  tokenNames.Add('"''volatile''"');
  tokenNames.Add('"''(''"');
  tokenNames.Add('"'')''"');
  tokenNames.Add('"''[''"');
  tokenNames.Add('"'']''"');
  tokenNames.Add('"''*''"');
  tokenNames.Add('"''...''"');
  tokenNames.Add('"''+''"');
  tokenNames.Add('"''-''"');
  tokenNames.Add('"''/''"');
  tokenNames.Add('"''%''"');
  tokenNames.Add('"''++''"');
  tokenNames.Add('"''--''"');
  tokenNames.Add('"''sizeof''"');
  tokenNames.Add('"''.''"');
  tokenNames.Add('"''->''"');
  tokenNames.Add('"''&''"');
  tokenNames.Add('"''~''"');
  tokenNames.Add('"''!''"');
  tokenNames.Add('"''*=''"');
  tokenNames.Add('"''/=''"');
  tokenNames.Add('"''%=''"');
  tokenNames.Add('"''+=''"');
  tokenNames.Add('"''-=''"');
  tokenNames.Add('"''<<=''"');
  tokenNames.Add('"''>>=''"');
  tokenNames.Add('"''&=''"');
  tokenNames.Add('"''^=''"');
  tokenNames.Add('"''|=''"');
  tokenNames.Add('"''?''"');
  tokenNames.Add('"''||''"');
  tokenNames.Add('"''&&''"');
  tokenNames.Add('"''|''"');
  tokenNames.Add('"''^''"');
  tokenNames.Add('"''==''"');
  tokenNames.Add('"''!=''"');
  tokenNames.Add('"''<''"');
  tokenNames.Add('"''>''"');
  tokenNames.Add('"''<=''"');
  tokenNames.Add('"''>=''"');
  tokenNames.Add('"''<<''"');
  tokenNames.Add('"''>>''"');
  tokenNames.Add('"''case''"');
  tokenNames.Add('"''default''"');
  tokenNames.Add('"''if''"');
  tokenNames.Add('"''else''"');
  tokenNames.Add('"''switch''"');
  tokenNames.Add('"''while''"');
  tokenNames.Add('"''do''"');
  tokenNames.Add('"''for''"');
  tokenNames.Add('"''goto''"');
  tokenNames.Add('"''continue''"');
  tokenNames.Add('"''break''"');
  tokenNames.Add('"''return''"');

  InitBitsets;
  //InitMembers
  //Init Scope Range viariable
      declaration_stack:=TJclStack.Create(16,false);

    Symbols_stack :=TJclStack.Create(16,false);
  

end;

    // Delegated rules

procedure TCParser.InitBitsets;
begin
  FOLLOW_external_declaration_in_translation_unit85 := TAntlrBitSet.CreateWithBits([$0011ECFFF8800012]);
  FOLLOW_function_definition_in_external_declaration121 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_declaration_in_external_declaration126 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_declaration_specifiers_in_function_definition148 := TAntlrBitSet.CreateWithBits([$0011ECFFF8000010]);
  FOLLOW_declarator_in_function_definition151 := TAntlrBitSet.CreateWithBits([$0011EDFFF8800010]);
  FOLLOW_declaration_in_function_definition157 := TAntlrBitSet.CreateWithBits([$0011EDFFF8800010]);
  FOLLOW_compound_statement_in_function_definition160 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_compound_statement_in_function_definition167 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_23_in_declaration195 := TAntlrBitSet.CreateWithBits([$0011ECFFF8000010]);
  FOLLOW_declaration_specifiers_in_declaration197 := TAntlrBitSet.CreateWithBits([$0011ECFFF8000010]);
  FOLLOW_init_declarator_list_in_declaration205 := TAntlrBitSet.CreateWithBits([$0000000001000000]);
  FOLLOW_24_in_declaration207 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_declaration_specifiers_in_declaration213 := TAntlrBitSet.CreateWithBits([$0011ECFFF9000010]);
  FOLLOW_init_declarator_list_in_declaration215 := TAntlrBitSet.CreateWithBits([$0000000001000000]);
  FOLLOW_24_in_declaration218 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_storage_class_specifier_in_declaration_specifiers235 := TAntlrBitSet.CreateWithBits([$0000ECFFF8000012]);
  FOLLOW_type_specifier_in_declaration_specifiers243 := TAntlrBitSet.CreateWithBits([$0000ECFFF8000012]);
  FOLLOW_type_qualifier_in_declaration_specifiers257 := TAntlrBitSet.CreateWithBits([$0000ECFFF8000012]);
  FOLLOW_init_declarator_in_init_declarator_list279 := TAntlrBitSet.CreateWithBits([$0000000002000002]);
  FOLLOW_25_in_init_declarator_list282 := TAntlrBitSet.CreateWithBits([$0011ECFFF8000010]);
  FOLLOW_init_declarator_in_init_declarator_list284 := TAntlrBitSet.CreateWithBits([$0000000002000002]);
  FOLLOW_declarator_in_init_declarator297 := TAntlrBitSet.CreateWithBits([$0000000004000002]);
  FOLLOW_26_in_init_declarator300 := TAntlrBitSet.CreateWithBits([$9CD10100000007F0,$0000000000000003]);
  FOLLOW_initializer_in_init_declarator302 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_set_in_storage_class_specifier0 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_31_in_type_specifier341 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_32_in_type_specifier346 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_33_in_type_specifier351 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_34_in_type_specifier356 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_35_in_type_specifier361 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_36_in_type_specifier366 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_37_in_type_specifier371 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_38_in_type_specifier376 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_39_in_type_specifier381 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_struct_or_union_specifier_in_type_specifier386 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_enum_specifier_in_type_specifier391 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_type_id_in_type_specifier396 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_IDENTIFIER_in_type_id414 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_struct_or_union_in_struct_or_union_specifier447 := TAntlrBitSet.CreateWithBits([$0000010000000010]);
  FOLLOW_IDENTIFIER_in_struct_or_union_specifier449 := TAntlrBitSet.CreateWithBits([$0000010000000000]);
  FOLLOW_40_in_struct_or_union_specifier452 := TAntlrBitSet.CreateWithBits([$0000ECFFF8000010]);
  FOLLOW_struct_declaration_list_in_struct_or_union_specifier454 := TAntlrBitSet.CreateWithBits([$0000020000000000]);
  FOLLOW_41_in_struct_or_union_specifier456 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_struct_or_union_in_struct_or_union_specifier461 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_IDENTIFIER_in_struct_or_union_specifier463 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_set_in_struct_or_union0 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_struct_declaration_in_struct_declaration_list490 := TAntlrBitSet.CreateWithBits([$0000ECFFF8000012]);
  FOLLOW_specifier_qualifier_list_in_struct_declaration502 := TAntlrBitSet.CreateWithBits([$0011FCFFF8000010]);
  FOLLOW_struct_declarator_list_in_struct_declaration504 := TAntlrBitSet.CreateWithBits([$0000000001000000]);
  FOLLOW_24_in_struct_declaration506 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_type_qualifier_in_specifier_qualifier_list519 := TAntlrBitSet.CreateWithBits([$0000ECFFF8000012]);
  FOLLOW_type_specifier_in_specifier_qualifier_list523 := TAntlrBitSet.CreateWithBits([$0000ECFFF8000012]);
  FOLLOW_struct_declarator_in_struct_declarator_list537 := TAntlrBitSet.CreateWithBits([$0000000002000002]);
  FOLLOW_25_in_struct_declarator_list540 := TAntlrBitSet.CreateWithBits([$0011FCFFF8000010]);
  FOLLOW_struct_declarator_in_struct_declarator_list542 := TAntlrBitSet.CreateWithBits([$0000000002000002]);
  FOLLOW_declarator_in_struct_declarator555 := TAntlrBitSet.CreateWithBits([$0000100000000002]);
  FOLLOW_44_in_struct_declarator558 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_constant_expression_in_struct_declarator560 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_44_in_struct_declarator567 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_constant_expression_in_struct_declarator569 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_45_in_enum_specifier587 := TAntlrBitSet.CreateWithBits([$0000010000000000]);
  FOLLOW_40_in_enum_specifier589 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_enumerator_list_in_enum_specifier591 := TAntlrBitSet.CreateWithBits([$0000020000000000]);
  FOLLOW_41_in_enum_specifier593 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_45_in_enum_specifier598 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_IDENTIFIER_in_enum_specifier600 := TAntlrBitSet.CreateWithBits([$0000010000000000]);
  FOLLOW_40_in_enum_specifier602 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_enumerator_list_in_enum_specifier604 := TAntlrBitSet.CreateWithBits([$0000020000000000]);
  FOLLOW_41_in_enum_specifier606 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_45_in_enum_specifier611 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_IDENTIFIER_in_enum_specifier613 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_enumerator_in_enumerator_list624 := TAntlrBitSet.CreateWithBits([$0000000002000002]);
  FOLLOW_25_in_enumerator_list627 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_enumerator_in_enumerator_list629 := TAntlrBitSet.CreateWithBits([$0000000002000002]);
  FOLLOW_IDENTIFIER_in_enumerator642 := TAntlrBitSet.CreateWithBits([$0000000004000002]);
  FOLLOW_26_in_enumerator645 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_constant_expression_in_enumerator647 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_set_in_type_qualifier0 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_pointer_in_declarator676 := TAntlrBitSet.CreateWithBits([$0011000000000010]);
  FOLLOW_direct_declarator_in_declarator679 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_pointer_in_declarator684 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_IDENTIFIER_in_direct_declarator699 := TAntlrBitSet.CreateWithBits([$0005000000000002]);
  FOLLOW_48_in_direct_declarator710 := TAntlrBitSet.CreateWithBits([$0011ECFFF8000010]);
  FOLLOW_declarator_in_direct_declarator712 := TAntlrBitSet.CreateWithBits([$0002000000000000]);
  FOLLOW_49_in_direct_declarator714 := TAntlrBitSet.CreateWithBits([$0005000000000002]);
  FOLLOW_declarator_suffix_in_direct_declarator728 := TAntlrBitSet.CreateWithBits([$0005000000000002]);
  FOLLOW_50_in_declarator_suffix742 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_constant_expression_in_declarator_suffix744 := TAntlrBitSet.CreateWithBits([$0008000000000000]);
  FOLLOW_51_in_declarator_suffix746 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_50_in_declarator_suffix756 := TAntlrBitSet.CreateWithBits([$0008000000000000]);
  FOLLOW_51_in_declarator_suffix758 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_48_in_declarator_suffix768 := TAntlrBitSet.CreateWithBits([$0000ECFFF8000010]);
  FOLLOW_parameter_type_list_in_declarator_suffix770 := TAntlrBitSet.CreateWithBits([$0002000000000000]);
  FOLLOW_49_in_declarator_suffix772 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_48_in_declarator_suffix782 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_identifier_list_in_declarator_suffix784 := TAntlrBitSet.CreateWithBits([$0002000000000000]);
  FOLLOW_49_in_declarator_suffix786 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_48_in_declarator_suffix796 := TAntlrBitSet.CreateWithBits([$0002000000000000]);
  FOLLOW_49_in_declarator_suffix798 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_52_in_pointer809 := TAntlrBitSet.CreateWithBits([$0000ECFFF8000010]);
  FOLLOW_type_qualifier_in_pointer811 := TAntlrBitSet.CreateWithBits([$0010ECFFF8000012]);
  FOLLOW_pointer_in_pointer814 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_52_in_pointer820 := TAntlrBitSet.CreateWithBits([$0010000000000000]);
  FOLLOW_pointer_in_pointer822 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_52_in_pointer827 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_parameter_list_in_parameter_type_list838 := TAntlrBitSet.CreateWithBits([$0000000002000002]);
  FOLLOW_25_in_parameter_type_list841 := TAntlrBitSet.CreateWithBits([$0020000000000000]);
  FOLLOW_53_in_parameter_type_list843 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_parameter_declaration_in_parameter_list856 := TAntlrBitSet.CreateWithBits([$0000000002000002]);
  FOLLOW_25_in_parameter_list859 := TAntlrBitSet.CreateWithBits([$0000ECFFF8000010]);
  FOLLOW_parameter_declaration_in_parameter_list861 := TAntlrBitSet.CreateWithBits([$0000000002000002]);
  FOLLOW_declaration_specifiers_in_parameter_declaration874 := TAntlrBitSet.CreateWithBits([$0015ECFFF8000012]);
  FOLLOW_declarator_in_parameter_declaration877 := TAntlrBitSet.CreateWithBits([$0015ECFFF8000012]);
  FOLLOW_abstract_declarator_in_parameter_declaration879 := TAntlrBitSet.CreateWithBits([$0015ECFFF8000012]);
  FOLLOW_IDENTIFIER_in_identifier_list892 := TAntlrBitSet.CreateWithBits([$0000000002000002]);
  FOLLOW_25_in_identifier_list895 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_IDENTIFIER_in_identifier_list897 := TAntlrBitSet.CreateWithBits([$0000000002000002]);
  FOLLOW_specifier_qualifier_list_in_type_name910 := TAntlrBitSet.CreateWithBits([$0015ECFFF8000012]);
  FOLLOW_abstract_declarator_in_type_name912 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_pointer_in_abstract_declarator924 := TAntlrBitSet.CreateWithBits([$0015ECFFF8000012]);
  FOLLOW_direct_abstract_declarator_in_abstract_declarator926 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_direct_abstract_declarator_in_abstract_declarator932 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_48_in_direct_abstract_declarator945 := TAntlrBitSet.CreateWithBits([$0015ECFFF8000010]);
  FOLLOW_abstract_declarator_in_direct_abstract_declarator947 := TAntlrBitSet.CreateWithBits([$0002000000000000]);
  FOLLOW_49_in_direct_abstract_declarator949 := TAntlrBitSet.CreateWithBits([$0015ECFFF8000012]);
  FOLLOW_abstract_declarator_suffix_in_direct_abstract_declarator953 := TAntlrBitSet.CreateWithBits([$0015ECFFF8000012]);
  FOLLOW_abstract_declarator_suffix_in_direct_abstract_declarator957 := TAntlrBitSet.CreateWithBits([$0015ECFFF8000012]);
  FOLLOW_50_in_abstract_declarator_suffix969 := TAntlrBitSet.CreateWithBits([$0008000000000000]);
  FOLLOW_51_in_abstract_declarator_suffix971 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_50_in_abstract_declarator_suffix976 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_constant_expression_in_abstract_declarator_suffix978 := TAntlrBitSet.CreateWithBits([$0008000000000000]);
  FOLLOW_51_in_abstract_declarator_suffix980 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_48_in_abstract_declarator_suffix985 := TAntlrBitSet.CreateWithBits([$0002000000000000]);
  FOLLOW_49_in_abstract_declarator_suffix987 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_48_in_abstract_declarator_suffix992 := TAntlrBitSet.CreateWithBits([$0000ECFFF8000010]);
  FOLLOW_parameter_type_list_in_abstract_declarator_suffix994 := TAntlrBitSet.CreateWithBits([$0002000000000000]);
  FOLLOW_49_in_abstract_declarator_suffix996 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_assignment_expression_in_initializer1008 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_40_in_initializer1013 := TAntlrBitSet.CreateWithBits([$9CD10100000007F0,$0000000000000003]);
  FOLLOW_initializer_list_in_initializer1015 := TAntlrBitSet.CreateWithBits([$0000020002000000]);
  FOLLOW_25_in_initializer1017 := TAntlrBitSet.CreateWithBits([$0000020000000000]);
  FOLLOW_41_in_initializer1020 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_initializer_in_initializer_list1031 := TAntlrBitSet.CreateWithBits([$0000000002000002]);
  FOLLOW_25_in_initializer_list1034 := TAntlrBitSet.CreateWithBits([$9CD10100000007F0,$0000000000000003]);
  FOLLOW_initializer_in_initializer_list1036 := TAntlrBitSet.CreateWithBits([$0000000002000002]);
  FOLLOW_assignment_expression_in_argument_expression_list1053 := TAntlrBitSet.CreateWithBits([$0000000002000002]);
  FOLLOW_25_in_argument_expression_list1056 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_assignment_expression_in_argument_expression_list1058 := TAntlrBitSet.CreateWithBits([$0000000002000002]);
  FOLLOW_multiplicative_expression_in_additive_expression1072 := TAntlrBitSet.CreateWithBits([$00C0000000000002]);
  FOLLOW_54_in_additive_expression1076 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_multiplicative_expression_in_additive_expression1078 := TAntlrBitSet.CreateWithBits([$00C0000000000002]);
  FOLLOW_55_in_additive_expression1082 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_multiplicative_expression_in_additive_expression1084 := TAntlrBitSet.CreateWithBits([$00C0000000000002]);
  FOLLOW_cast_expression_in_multiplicative_expression1098 := TAntlrBitSet.CreateWithBits([$0310000000000002]);
  FOLLOW_52_in_multiplicative_expression1102 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_cast_expression_in_multiplicative_expression1104 := TAntlrBitSet.CreateWithBits([$0310000000000002]);
  FOLLOW_56_in_multiplicative_expression1108 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_cast_expression_in_multiplicative_expression1110 := TAntlrBitSet.CreateWithBits([$0310000000000002]);
  FOLLOW_57_in_multiplicative_expression1114 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_cast_expression_in_multiplicative_expression1116 := TAntlrBitSet.CreateWithBits([$0310000000000002]);
  FOLLOW_48_in_cast_expression1129 := TAntlrBitSet.CreateWithBits([$0000ECFFF8000010]);
  FOLLOW_type_name_in_cast_expression1131 := TAntlrBitSet.CreateWithBits([$0002000000000000]);
  FOLLOW_49_in_cast_expression1133 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_cast_expression_in_cast_expression1135 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_unary_expression_in_cast_expression1140 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_postfix_expression_in_unary_expression1151 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_58_in_unary_expression1156 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_unary_expression_in_unary_expression1158 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_59_in_unary_expression1163 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_unary_expression_in_unary_expression1165 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_unary_operator_in_unary_expression1170 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_cast_expression_in_unary_expression1172 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_60_in_unary_expression1177 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_unary_expression_in_unary_expression1179 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_60_in_unary_expression1184 := TAntlrBitSet.CreateWithBits([$0001000000000000]);
  FOLLOW_48_in_unary_expression1186 := TAntlrBitSet.CreateWithBits([$0000ECFFF8000010]);
  FOLLOW_type_name_in_unary_expression1188 := TAntlrBitSet.CreateWithBits([$0002000000000000]);
  FOLLOW_49_in_unary_expression1190 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_primary_expression_in_postfix_expression1203 := TAntlrBitSet.CreateWithBits([$6C05000000000002]);
  FOLLOW_50_in_postfix_expression1217 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_expression_in_postfix_expression1219 := TAntlrBitSet.CreateWithBits([$0008000000000000]);
  FOLLOW_51_in_postfix_expression1221 := TAntlrBitSet.CreateWithBits([$6C05000000000002]);
  FOLLOW_48_in_postfix_expression1235 := TAntlrBitSet.CreateWithBits([$0002000000000000]);
  FOLLOW_49_in_postfix_expression1237 := TAntlrBitSet.CreateWithBits([$6C05000000000002]);
  FOLLOW_48_in_postfix_expression1251 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_argument_expression_list_in_postfix_expression1253 := TAntlrBitSet.CreateWithBits([$0002000000000000]);
  FOLLOW_49_in_postfix_expression1255 := TAntlrBitSet.CreateWithBits([$6C05000000000002]);
  FOLLOW_61_in_postfix_expression1269 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_IDENTIFIER_in_postfix_expression1271 := TAntlrBitSet.CreateWithBits([$6C05000000000002]);
  FOLLOW_62_in_postfix_expression1285 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_IDENTIFIER_in_postfix_expression1287 := TAntlrBitSet.CreateWithBits([$6C05000000000002]);
  FOLLOW_58_in_postfix_expression1301 := TAntlrBitSet.CreateWithBits([$6C05000000000002]);
  FOLLOW_59_in_postfix_expression1315 := TAntlrBitSet.CreateWithBits([$6C05000000000002]);
  FOLLOW_set_in_unary_operator0 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_IDENTIFIER_in_primary_expression1373 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_constant_in_primary_expression1378 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_48_in_primary_expression1383 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_expression_in_primary_expression1385 := TAntlrBitSet.CreateWithBits([$0002000000000000]);
  FOLLOW_49_in_primary_expression1387 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_set_in_constant0 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_assignment_expression_in_expression1462 := TAntlrBitSet.CreateWithBits([$0000000002000002]);
  FOLLOW_25_in_expression1465 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_assignment_expression_in_expression1467 := TAntlrBitSet.CreateWithBits([$0000000002000002]);
  FOLLOW_conditional_expression_in_constant_expression1480 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_lvalue_in_assignment_expression1491 := TAntlrBitSet.CreateWithBits([$0000000004000000,$0000000000000FFC]);
  FOLLOW_assignment_operator_in_assignment_expression1493 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_assignment_expression_in_assignment_expression1495 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_conditional_expression_in_assignment_expression1500 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_unary_expression_in_lvalue1512 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_set_in_assignment_operator0 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_logical_or_expression_in_conditional_expression1584 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000001000]);
  FOLLOW_76_in_conditional_expression1587 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_expression_in_conditional_expression1589 := TAntlrBitSet.CreateWithBits([$0000100000000000]);
  FOLLOW_44_in_conditional_expression1591 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_conditional_expression_in_conditional_expression1593 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_logical_and_expression_in_logical_or_expression1606 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000002000]);
  FOLLOW_77_in_logical_or_expression1609 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_logical_and_expression_in_logical_or_expression1611 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000002000]);
  FOLLOW_inclusive_or_expression_in_logical_and_expression1624 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000004000]);
  FOLLOW_78_in_logical_and_expression1627 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_inclusive_or_expression_in_logical_and_expression1629 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000004000]);
  FOLLOW_exclusive_or_expression_in_inclusive_or_expression1642 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000008000]);
  FOLLOW_79_in_inclusive_or_expression1645 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_exclusive_or_expression_in_inclusive_or_expression1647 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000008000]);
  FOLLOW_and_expression_in_exclusive_or_expression1660 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000010000]);
  FOLLOW_80_in_exclusive_or_expression1663 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_and_expression_in_exclusive_or_expression1665 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000010000]);
  FOLLOW_equality_expression_in_and_expression1678 := TAntlrBitSet.CreateWithBits([$8000000000000002]);
  FOLLOW_63_in_and_expression1681 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_equality_expression_in_and_expression1683 := TAntlrBitSet.CreateWithBits([$8000000000000002]);
  FOLLOW_relational_expression_in_equality_expression1695 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000060000]);
  FOLLOW_set_in_equality_expression1698 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_relational_expression_in_equality_expression1704 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000060000]);
  FOLLOW_shift_expression_in_relational_expression1717 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000780000]);
  FOLLOW_set_in_relational_expression1720 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_shift_expression_in_relational_expression1730 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000000780000]);
  FOLLOW_additive_expression_in_shift_expression1743 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000001800000]);
  FOLLOW_set_in_shift_expression1746 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_additive_expression_in_shift_expression1752 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000001800000]);
  FOLLOW_labeled_statement_in_statement1767 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_compound_statement_in_statement1772 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_expression_statement_in_statement1777 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_selection_statement_in_statement1782 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_iteration_statement_in_statement1787 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_jump_statement_in_statement1792 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_IDENTIFIER_in_labeled_statement1803 := TAntlrBitSet.CreateWithBits([$0000100000000000]);
  FOLLOW_44_in_labeled_statement1805 := TAntlrBitSet.CreateWithBits([$9CD10100010007F0,$0000001FEE000003]);
  FOLLOW_statement_in_labeled_statement1807 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_89_in_labeled_statement1812 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_constant_expression_in_labeled_statement1814 := TAntlrBitSet.CreateWithBits([$0000100000000000]);
  FOLLOW_44_in_labeled_statement1816 := TAntlrBitSet.CreateWithBits([$9CD10100010007F0,$0000001FEE000003]);
  FOLLOW_statement_in_labeled_statement1818 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_90_in_labeled_statement1823 := TAntlrBitSet.CreateWithBits([$0000100000000000]);
  FOLLOW_44_in_labeled_statement1825 := TAntlrBitSet.CreateWithBits([$9CD10100010007F0,$0000001FEE000003]);
  FOLLOW_statement_in_labeled_statement1827 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_40_in_compound_statement1849 := TAntlrBitSet.CreateWithBits([$9CD1EFFFF98007F0,$0000001FEE000003]);
  FOLLOW_declaration_in_compound_statement1851 := TAntlrBitSet.CreateWithBits([$9CD1EFFFF98007F0,$0000001FEE000003]);
  FOLLOW_statement_list_in_compound_statement1854 := TAntlrBitSet.CreateWithBits([$0000020000000000]);
  FOLLOW_41_in_compound_statement1857 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_statement_in_statement_list1868 := TAntlrBitSet.CreateWithBits([$9CD10100010007F2,$0000001FEE000003]);
  FOLLOW_24_in_expression_statement1880 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_expression_in_expression_statement1885 := TAntlrBitSet.CreateWithBits([$0000000001000000]);
  FOLLOW_24_in_expression_statement1887 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_91_in_selection_statement1898 := TAntlrBitSet.CreateWithBits([$0001000000000000]);
  FOLLOW_48_in_selection_statement1900 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_expression_in_selection_statement1902 := TAntlrBitSet.CreateWithBits([$0002000000000000]);
  FOLLOW_49_in_selection_statement1904 := TAntlrBitSet.CreateWithBits([$9CD10100010007F0,$0000001FEE000003]);
  FOLLOW_statement_in_selection_statement1906 := TAntlrBitSet.CreateWithBits([$0000000000000002,$0000000010000000]);
  FOLLOW_92_in_selection_statement1921 := TAntlrBitSet.CreateWithBits([$9CD10100010007F0,$0000001FEE000003]);
  FOLLOW_statement_in_selection_statement1923 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_93_in_selection_statement1930 := TAntlrBitSet.CreateWithBits([$0001000000000000]);
  FOLLOW_48_in_selection_statement1932 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_expression_in_selection_statement1934 := TAntlrBitSet.CreateWithBits([$0002000000000000]);
  FOLLOW_49_in_selection_statement1936 := TAntlrBitSet.CreateWithBits([$9CD10100010007F0,$0000001FEE000003]);
  FOLLOW_statement_in_selection_statement1938 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_94_in_iteration_statement1949 := TAntlrBitSet.CreateWithBits([$0001000000000000]);
  FOLLOW_48_in_iteration_statement1951 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_expression_in_iteration_statement1953 := TAntlrBitSet.CreateWithBits([$0002000000000000]);
  FOLLOW_49_in_iteration_statement1955 := TAntlrBitSet.CreateWithBits([$9CD10100010007F0,$0000001FEE000003]);
  FOLLOW_statement_in_iteration_statement1957 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_95_in_iteration_statement1962 := TAntlrBitSet.CreateWithBits([$9CD10100010007F0,$0000001FEE000003]);
  FOLLOW_statement_in_iteration_statement1964 := TAntlrBitSet.CreateWithBits([$0000000000000000,$0000000040000000]);
  FOLLOW_94_in_iteration_statement1966 := TAntlrBitSet.CreateWithBits([$0001000000000000]);
  FOLLOW_48_in_iteration_statement1968 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_expression_in_iteration_statement1970 := TAntlrBitSet.CreateWithBits([$0002000000000000]);
  FOLLOW_49_in_iteration_statement1972 := TAntlrBitSet.CreateWithBits([$0000000001000000]);
  FOLLOW_24_in_iteration_statement1974 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_96_in_iteration_statement1979 := TAntlrBitSet.CreateWithBits([$0001000000000000]);
  FOLLOW_48_in_iteration_statement1981 := TAntlrBitSet.CreateWithBits([$9CD10000010007F0,$0000000000000003]);
  FOLLOW_expression_statement_in_iteration_statement1983 := TAntlrBitSet.CreateWithBits([$9CD10000010007F0,$0000000000000003]);
  FOLLOW_expression_statement_in_iteration_statement1985 := TAntlrBitSet.CreateWithBits([$9CD30000000007F0,$0000000000000003]);
  FOLLOW_expression_in_iteration_statement1987 := TAntlrBitSet.CreateWithBits([$0002000000000000]);
  FOLLOW_49_in_iteration_statement1990 := TAntlrBitSet.CreateWithBits([$9CD10100010007F0,$0000001FEE000003]);
  FOLLOW_statement_in_iteration_statement1992 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_97_in_jump_statement2003 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_IDENTIFIER_in_jump_statement2005 := TAntlrBitSet.CreateWithBits([$0000000001000000]);
  FOLLOW_24_in_jump_statement2007 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_98_in_jump_statement2012 := TAntlrBitSet.CreateWithBits([$0000000001000000]);
  FOLLOW_24_in_jump_statement2014 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_99_in_jump_statement2019 := TAntlrBitSet.CreateWithBits([$0000000001000000]);
  FOLLOW_24_in_jump_statement2021 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_100_in_jump_statement2026 := TAntlrBitSet.CreateWithBits([$0000000001000000]);
  FOLLOW_24_in_jump_statement2028 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_100_in_jump_statement2033 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_expression_in_jump_statement2035 := TAntlrBitSet.CreateWithBits([$0000000001000000]);
  FOLLOW_24_in_jump_statement2037 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_declaration_specifiers_in_synpred2_C108 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_declaration_specifiers_in_synpred4_C108 := TAntlrBitSet.CreateWithBits([$0011ECFFF8000010]);
  FOLLOW_declarator_in_synpred4_C111 := TAntlrBitSet.CreateWithBits([$0011EDFFF8800010]);
  FOLLOW_declaration_in_synpred4_C113 := TAntlrBitSet.CreateWithBits([$0011EDFFF8800010]);
  FOLLOW_40_in_synpred4_C116 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_declaration_specifiers_in_synpred5_C148 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_declaration_specifiers_in_synpred8_C197 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_type_specifier_in_synpred12_C243 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_type_specifier_in_synpred35_C523 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_pointer_in_synpred45_C676 := TAntlrBitSet.CreateWithBits([$0011000000000010]);
  FOLLOW_direct_declarator_in_synpred45_C679 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_declarator_suffix_in_synpred47_C728 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_48_in_synpred50_C768 := TAntlrBitSet.CreateWithBits([$0000ECFFF8000010]);
  FOLLOW_parameter_type_list_in_synpred50_C770 := TAntlrBitSet.CreateWithBits([$0002000000000000]);
  FOLLOW_49_in_synpred50_C772 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_48_in_synpred51_C782 := TAntlrBitSet.CreateWithBits([$0000000000000010]);
  FOLLOW_identifier_list_in_synpred51_C784 := TAntlrBitSet.CreateWithBits([$0002000000000000]);
  FOLLOW_49_in_synpred51_C786 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_type_qualifier_in_synpred52_C811 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_pointer_in_synpred53_C814 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_52_in_synpred54_C809 := TAntlrBitSet.CreateWithBits([$0000ECFFF8000010]);
  FOLLOW_type_qualifier_in_synpred54_C811 := TAntlrBitSet.CreateWithBits([$0010ECFFF8000012]);
  FOLLOW_pointer_in_synpred54_C814 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_52_in_synpred55_C820 := TAntlrBitSet.CreateWithBits([$0010000000000000]);
  FOLLOW_pointer_in_synpred55_C822 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_declarator_in_synpred58_C877 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_abstract_declarator_in_synpred59_C879 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_direct_abstract_declarator_in_synpred62_C926 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_abstract_declarator_suffix_in_synpred65_C957 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_48_in_synpred78_C1129 := TAntlrBitSet.CreateWithBits([$0000ECFFF8000010]);
  FOLLOW_type_name_in_synpred78_C1131 := TAntlrBitSet.CreateWithBits([$0002000000000000]);
  FOLLOW_49_in_synpred78_C1133 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_cast_expression_in_synpred78_C1135 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_60_in_synpred83_C1177 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_unary_expression_in_synpred83_C1179 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_lvalue_in_synpred104_C1491 := TAntlrBitSet.CreateWithBits([$0000000004000000,$0000000000000FFC]);
  FOLLOW_assignment_operator_in_synpred104_C1493 := TAntlrBitSet.CreateWithBits([$9CD10000000007F0,$0000000000000003]);
  FOLLOW_assignment_expression_in_synpred104_C1495 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
  FOLLOW_declaration_in_synpred136_C1851 := TAntlrBitSet.CreateWithBits([$0000000000000002]);
    
end;

destructor TCParser.Destroy;
begin
  FreeAndNil(tokenNames);
 
  inherited;
end;

function TCParser.GetGrammarFileName():String;
begin
  Result:='C.g'; 
end;

// $ANTLR start "translation_unit"
// C.g:39:1: translation_unit : ( external_declaration )+ ;
function TCParser.translation_unit():Integer;
var
  _alt:array [0..255] of Integer;
  translation_unit_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    Symbols_stack.push(TSymbols_scope.Create);

    translation_unit_StartIndex := input.index();

      (TSymbols_scope(Symbols_stack.peek())).types := TJclStrHashSet.Create(16);

    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 1) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:44:2: ( ( external_declaration )+ )
        // C.g:44:4: ( external_declaration )+
        begin
        // positiveClosureBlock:C.g:44:4: ( external_declaration )+
        _cnt[1]:=0;
        repeat 
            _alt[1]:=2;
            //before decision
            {** The code to initiate execution of a cyclic DFA; this is used
             *  in the rule to predict an alt just like the fixed DFA case.
             *  The CParser attribute is inherited via the parser, lexer, ...
             *}
            _alt[1] := getDfa1.predict(input);
            //after decision
            case (_alt[1]) of 
        	 1 :
        	    begin
        	    // C.g:0:0: external_declaration
        	    begin
        	    pushFollow(FOLLOW_external_declaration_in_translation_unit85);
        	    external_declaration();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    begin
        	      if ( _cnt[1] >= 1 ) then
        	        break ;
        	      if (state.backtracking>0) then 
        	      begin 
        	        state.failed:=true; 
        	        Exit(0);
        	      end;
        	        raise EEarlyExitException.CreateWithDecision(1, input);
                end;
            end;
            _cnt[1]:=_cnt[1]+1;
        until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 1, translation_unit_StartIndex);
        end;
        Symbols_stack.pop().Free;

    end;
end;// $ANTLR start "external_declaration"
// C.g:47:1: external_declaration options {k=1; } : ( ( ( declaration_specifiers )? declarator ( declaration )* ''{'' )=> function_definition | declaration );
function TCParser.external_declaration():Integer;
var
  _alt:array [0..255] of Integer;
  external_declaration_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    external_declaration_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 2) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:C.g:63:2: ( ( ( declaration_specifiers )? declarator ( declaration )* ''{'' )=> function_definition | declaration )
        _alt[2]:=2;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The CParser attribute is inherited via the parser, lexer, ...
         *}
        _alt[2] := getDfa2.predict(input);
        case (_alt[2]) of 
             1 :
                begin
                // C.g:63:4: ( ( declaration_specifiers )? declarator ( declaration )* ''{'' )=> function_definition
                begin
                pushFollow(FOLLOW_function_definition_in_external_declaration121);
                function_definition();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // C.g:64:4: declaration
                begin
                pushFollow(FOLLOW_declaration_in_external_declaration126);
                declaration();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 2, external_declaration_StartIndex);
        end;
    end;
end;// $ANTLR start "function_definition"
// C.g:67:1: function_definition : ( declaration_specifiers )? declarator ( ( declaration )+ compound_statement | compound_statement ) ;
function TCParser.function_definition():Integer;
var
  _alt:array [0..255] of Integer;
  function_definition_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    Symbols_stack.push(TSymbols_scope.Create);

    function_definition_StartIndex := input.index();

      (TSymbols_scope(Symbols_stack.peek())).types := TJclStrHashSet.Create(16);

    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 3) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:72:2: ( ( declaration_specifiers )? declarator ( ( declaration )+ compound_statement | compound_statement ) )
        // C.g:72:4: ( declaration_specifiers )? declarator ( ( declaration )+ compound_statement | compound_statement )
        begin
        // block:C.g:72:4: ( declaration_specifiers )?
        _alt[3]:=2;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The CParser attribute is inherited via the parser, lexer, ...
         *}
        _alt[3] := getDfa3.predict(input);
        case (_alt[3]) of
             1 :
                begin
                // C.g:0:0: declaration_specifiers
                begin
                pushFollow(FOLLOW_declaration_specifiers_in_function_definition148);
                declaration_specifiers();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        pushFollow(FOLLOW_declarator_in_function_definition151);
        declarator();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // block:C.g:73:3: ( ( declaration )+ compound_statement | compound_statement )
        _alt[5]:=2;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The CParser attribute is inherited via the parser, lexer, ...
         *}
        _alt[5] := getDfa5.predict(input);
        case (_alt[5]) of
             1 :
                begin
                // C.g:73:5: ( declaration )+ compound_statement
                begin
                // positiveClosureBlock:C.g:73:5: ( declaration )+
                _cnt[4]:=0;
                repeat 
                    _alt[4]:=2;
                    //before decision
                    {** The code to initiate execution of a cyclic DFA; this is used
                     *  in the rule to predict an alt just like the fixed DFA case.
                     *  The CParser attribute is inherited via the parser, lexer, ...
                     *}
                    _alt[4] := getDfa4.predict(input);
                    //after decision
                    case (_alt[4]) of 
                	 1 :
                	    begin
                	    // C.g:0:0: declaration
                	    begin
                	    pushFollow(FOLLOW_declaration_in_function_definition157);
                	    declaration();

                	    state._fsp:=state._fsp-1;
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;

                	    end;
                	    end;

                	else 
                	    begin
                	      if ( _cnt[4] >= 1 ) then
                	        break ;
                	      if (state.backtracking>0) then 
                	      begin 
                	        state.failed:=true; 
                	        Exit(0);
                	      end;
                	        raise EEarlyExitException.CreateWithDecision(4, input);
                        end;
                    end;
                    _cnt[4]:=_cnt[4]+1;
                until (false);

                pushFollow(FOLLOW_compound_statement_in_function_definition160);
                compound_statement();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // C.g:74:5: compound_statement
                begin
                pushFollow(FOLLOW_compound_statement_in_function_definition167);
                compound_statement();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 3, function_definition_StartIndex);
        end;
        Symbols_stack.pop().Free;

    end;
end;// $ANTLR start "declaration"
// C.g:78:1: declaration : ( ''typedef'' ( declaration_specifiers )? init_declarator_list '';'' | declaration_specifiers ( init_declarator_list )? '';'' );
function TCParser.declaration():Integer;
var
  _alt:array [0..255] of Integer;
  declaration_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    declaration_stack.push(Tdeclaration_scope.Create);
    declaration_StartIndex := input.index();

      (Tdeclaration_scope(declaration_stack.peek())).isTypedef := false;

    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 4) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:C.g:85:2: ( ''typedef'' ( declaration_specifiers )? init_declarator_list '';'' | declaration_specifiers ( init_declarator_list )? '';'' )
        _alt[8]:=2;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The CParser attribute is inherited via the parser, lexer, ...
         *}
        _alt[8] := getDfa8.predict(input);
        case (_alt[8]) of 
             1 :
                begin
                // C.g:85:4: ''typedef'' ( declaration_specifiers )? init_declarator_list '';''
                begin
                match(input,23,FOLLOW_23_in_declaration195); 
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:C.g:85:14: ( declaration_specifiers )?
                _alt[6]:=2;
                {** The code to initiate execution of a cyclic DFA; this is used
                 *  in the rule to predict an alt just like the fixed DFA case.
                 *  The CParser attribute is inherited via the parser, lexer, ...
                 *}
                _alt[6] := getDfa6.predict(input);
                case (_alt[6]) of
                     1 :
                        begin
                        // C.g:0:0: declaration_specifiers
                        begin
                        pushFollow(FOLLOW_declaration_specifiers_in_declaration197);
                        declaration_specifiers();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;

                if ( state.backtracking=0 ) then 
                begin
                  (Tdeclaration_scope(declaration_stack.peek())).isTypedef :=true;
                end;
                pushFollow(FOLLOW_init_declarator_list_in_declaration205);
                init_declarator_list();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,24,FOLLOW_24_in_declaration207); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // C.g:87:4: declaration_specifiers ( init_declarator_list )? '';''
                begin
                pushFollow(FOLLOW_declaration_specifiers_in_declaration213);
                declaration_specifiers();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:C.g:87:27: ( init_declarator_list )?
                _alt[7]:=2;
                _LA[7,0] := input.LA(1);

                if ( ((_LA[7,0]=IDENTIFIER) or (_LA[7,0]=48) or (_LA[7,0]=52)) ) then 
                begin
                  _alt[7]:=1;
                end
                ;
                case (_alt[7]) of
                     1 :
                        begin
                        // C.g:0:0: init_declarator_list
                        begin
                        pushFollow(FOLLOW_init_declarator_list_in_declaration215);
                        init_declarator_list();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;

                match(input,24,FOLLOW_24_in_declaration218); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 4, declaration_StartIndex);
        end;
        declaration_stack.pop().Free;
    end;
end;// $ANTLR start "declaration_specifiers"
// C.g:90:1: declaration_specifiers : ( storage_class_specifier | type_specifier | type_qualifier )+ ;
function TCParser.declaration_specifiers():Integer;
var
  _alt:array [0..255] of Integer;
  declaration_specifiers_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    declaration_specifiers_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 5) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:91:2: ( ( storage_class_specifier | type_specifier | type_qualifier )+ )
        // C.g:91:6: ( storage_class_specifier | type_specifier | type_qualifier )+
        begin
        // positiveClosureBlock:C.g:91:6: ( storage_class_specifier | type_specifier | type_qualifier )+
        _cnt[9]:=0;
        repeat 
            _alt[9]:=4;
            //before decision
            {** The code to initiate execution of a cyclic DFA; this is used
             *  in the rule to predict an alt just like the fixed DFA case.
             *  The CParser attribute is inherited via the parser, lexer, ...
             *}
            _alt[9] := getDfa9.predict(input);
            //after decision
            case (_alt[9]) of 
        	 1 :
        	    begin
        	    // C.g:91:10: storage_class_specifier
        	    begin
        	    pushFollow(FOLLOW_storage_class_specifier_in_declaration_specifiers235);
        	    storage_class_specifier();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;
        	 2 :
        	    begin
        	    // C.g:92:7: type_specifier
        	    begin
        	    pushFollow(FOLLOW_type_specifier_in_declaration_specifiers243);
        	    type_specifier();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;
        	 3 :
        	    begin
        	    // C.g:93:13: type_qualifier
        	    begin
        	    pushFollow(FOLLOW_type_qualifier_in_declaration_specifiers257);
        	    type_qualifier();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    begin
        	      if ( _cnt[9] >= 1 ) then
        	        break ;
        	      if (state.backtracking>0) then 
        	      begin 
        	        state.failed:=true; 
        	        Exit(0);
        	      end;
        	        raise EEarlyExitException.CreateWithDecision(9, input);
                end;
            end;
            _cnt[9]:=_cnt[9]+1;
        until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 5, declaration_specifiers_StartIndex);
        end;
    end;
end;// $ANTLR start "init_declarator_list"
// C.g:97:1: init_declarator_list : init_declarator ( '','' init_declarator )* ;
function TCParser.init_declarator_list():Integer;
var
  _alt:array [0..255] of Integer;
  init_declarator_list_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    init_declarator_list_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 6) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:98:2: ( init_declarator ( '','' init_declarator )* )
        // C.g:98:4: init_declarator ( '','' init_declarator )*
        begin
        pushFollow(FOLLOW_init_declarator_in_init_declarator_list279);
        init_declarator();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:C.g:98:20: ( '','' init_declarator )*
        repeat 
            _alt[10]:=2;
            _LA[10,0] := input.LA(1);

            if ( ((_LA[10,0]=25)) ) then 
            begin
              _alt[10]:=1;
            end

            ;

            case (_alt[10]) of
        	 1 :
        	    begin
        	    // C.g:98:21: '','' init_declarator
        	    begin
        	    match(input,25,FOLLOW_25_in_init_declarator_list282); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_init_declarator_in_init_declarator_list284);
        	    init_declarator();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 6, init_declarator_list_StartIndex);
        end;
    end;
end;// $ANTLR start "init_declarator"
// C.g:101:1: init_declarator : declarator ( ''='' initializer )? ;
function TCParser.init_declarator():Integer;
var
  _alt:array [0..255] of Integer;
  init_declarator_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    init_declarator_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 7) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:102:2: ( declarator ( ''='' initializer )? )
        // C.g:102:4: declarator ( ''='' initializer )?
        begin
        pushFollow(FOLLOW_declarator_in_init_declarator297);
        declarator();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // block:C.g:102:15: ( ''='' initializer )?
        _alt[11]:=2;
        _LA[11,0] := input.LA(1);

        if ( ((_LA[11,0]=26)) ) then 
        begin
          _alt[11]:=1;
        end
        ;
        case (_alt[11]) of
             1 :
                begin
                // C.g:102:16: ''='' initializer
                begin
                match(input,26,FOLLOW_26_in_init_declarator300); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_initializer_in_init_declarator302);
                initializer();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 7, init_declarator_StartIndex);
        end;
    end;
end;// $ANTLR start "storage_class_specifier"
// C.g:105:1: storage_class_specifier : ( ''extern'' | ''static'' | ''auto'' | ''register'' );
function TCParser.storage_class_specifier():Integer;
var
  _alt:array [0..255] of Integer;
  storage_class_specifier_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    storage_class_specifier_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 8) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:106:2: ( ''extern'' | ''static'' | ''auto'' | ''register'' )
        // C.g:
        begin
        if ( ((input.LA(1)>=27) and (input.LA(1)<=30)) ) then
        begin
            input.consume();
            state.errorRecovery:=false;state.failed:=false;
        end
        else 
        begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(0);
            end;
            raise EMismatchedSetException.CreateWithBitset(nil, input);
        end;


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 8, storage_class_specifier_StartIndex);
        end;
    end;
end;// $ANTLR start "type_specifier"
// C.g:112:1: type_specifier : ( ''void'' | ''char'' | ''short'' | ''int'' | ''long'' | ''float'' | ''double'' | ''signed'' | ''unsigned'' | struct_or_union_specifier | enum_specifier | type_id );
function TCParser.type_specifier():Integer;
var
  _alt:array [0..255] of Integer;
  type_specifier_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    type_specifier_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 9) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:C.g:113:2: ( ''void'' | ''char'' | ''short'' | ''int'' | ''long'' | ''float'' | ''double'' | ''signed'' | ''unsigned'' | struct_or_union_specifier | enum_specifier | type_id )
        _alt[12]:=12;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The CParser attribute is inherited via the parser, lexer, ...
         *}
        _alt[12] := getDfa12.predict(input);
        case (_alt[12]) of 
             1 :
                begin
                // C.g:113:4: ''void''
                begin
                match(input,31,FOLLOW_31_in_type_specifier341); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // C.g:114:4: ''char''
                begin
                match(input,32,FOLLOW_32_in_type_specifier346); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // C.g:115:4: ''short''
                begin
                match(input,33,FOLLOW_33_in_type_specifier351); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             4 :
                begin
                // C.g:116:4: ''int''
                begin
                match(input,34,FOLLOW_34_in_type_specifier356); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             5 :
                begin
                // C.g:117:4: ''long''
                begin
                match(input,35,FOLLOW_35_in_type_specifier361); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             6 :
                begin
                // C.g:118:4: ''float''
                begin
                match(input,36,FOLLOW_36_in_type_specifier366); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             7 :
                begin
                // C.g:119:4: ''double''
                begin
                match(input,37,FOLLOW_37_in_type_specifier371); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             8 :
                begin
                // C.g:120:4: ''signed''
                begin
                match(input,38,FOLLOW_38_in_type_specifier376); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             9 :
                begin
                // C.g:121:4: ''unsigned''
                begin
                match(input,39,FOLLOW_39_in_type_specifier381); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             10 :
                begin
                // C.g:122:4: struct_or_union_specifier
                begin
                pushFollow(FOLLOW_struct_or_union_specifier_in_type_specifier386);
                struct_or_union_specifier();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             11 :
                begin
                // C.g:123:4: enum_specifier
                begin
                pushFollow(FOLLOW_enum_specifier_in_type_specifier391);
                enum_specifier();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             12 :
                begin
                // C.g:124:4: type_id
                begin
                pushFollow(FOLLOW_type_id_in_type_specifier396);
                type_id();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 9, type_specifier_StartIndex);
        end;
    end;
end;// $ANTLR start "type_id"
// C.g:127:1: type_id : {...}? IDENTIFIER ;
function TCParser.type_id():Integer;
var
  _alt:array [0..255] of Integer;
  type_id_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    type_id_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 10) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:128:5: ({...}? IDENTIFIER )
        // C.g:128:9: {...}? IDENTIFIER
        begin
        if ( not ((isTypeName(input.LT(1).getText()))) ) then begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(0);
            end;
            raise EFailedPredicateException.Create(input, 'type_id', 'isTypeName(input.LT(1).getText())');
        end;
        match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_type_id414); 
        if (state.failed) then
        begin
          Exit;
        end;

        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 10, type_id_StartIndex);
        end;
    end;
end;// $ANTLR start "struct_or_union_specifier"
// C.g:132:1: struct_or_union_specifier options {k=3; } : ( struct_or_union ( IDENTIFIER )? ''{'' struct_declaration_list ''}'' | struct_or_union IDENTIFIER );
function TCParser.struct_or_union_specifier():Integer;
var
  _alt:array [0..255] of Integer;
  struct_or_union_specifier_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    Symbols_stack.push(TSymbols_scope.Create);

    struct_or_union_specifier_StartIndex := input.index();

      (TSymbols_scope(Symbols_stack.peek())).types := TJclStrHashSet.Create(16);

    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 11) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:C.g:138:2: ( struct_or_union ( IDENTIFIER )? ''{'' struct_declaration_list ''}'' | struct_or_union IDENTIFIER )
        _alt[14]:=2;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The CParser attribute is inherited via the parser, lexer, ...
         *}
        _alt[14] := getDfa14.predict(input);
        case (_alt[14]) of 
             1 :
                begin
                // C.g:138:4: struct_or_union ( IDENTIFIER )? ''{'' struct_declaration_list ''}''
                begin
                pushFollow(FOLLOW_struct_or_union_in_struct_or_union_specifier447);
                struct_or_union();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:C.g:138:20: ( IDENTIFIER )?
                _alt[13]:=2;
                _LA[13,0] := input.LA(1);

                if ( ((_LA[13,0]=IDENTIFIER)) ) then 
                begin
                  _alt[13]:=1;
                end
                ;
                case (_alt[13]) of
                     1 :
                        begin
                        // C.g:0:0: IDENTIFIER
                        begin
                        match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_struct_or_union_specifier449); 
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;

                match(input,40,FOLLOW_40_in_struct_or_union_specifier452); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_struct_declaration_list_in_struct_or_union_specifier454);
                struct_declaration_list();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,41,FOLLOW_41_in_struct_or_union_specifier456); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // C.g:139:4: struct_or_union IDENTIFIER
                begin
                pushFollow(FOLLOW_struct_or_union_in_struct_or_union_specifier461);
                struct_or_union();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_struct_or_union_specifier463); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 11, struct_or_union_specifier_StartIndex);
        end;
        Symbols_stack.pop().Free;

    end;
end;// $ANTLR start "struct_or_union"
// C.g:142:1: struct_or_union : ( ''struct'' | ''union'' );
function TCParser.struct_or_union():Integer;
var
  _alt:array [0..255] of Integer;
  struct_or_union_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    struct_or_union_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 12) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:143:2: ( ''struct'' | ''union'' )
        // C.g:
        begin
        if ( ((input.LA(1)>=42) and (input.LA(1)<=43)) ) then
        begin
            input.consume();
            state.errorRecovery:=false;state.failed:=false;
        end
        else 
        begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(0);
            end;
            raise EMismatchedSetException.CreateWithBitset(nil, input);
        end;


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 12, struct_or_union_StartIndex);
        end;
    end;
end;// $ANTLR start "struct_declaration_list"
// C.g:147:1: struct_declaration_list : ( struct_declaration )+ ;
function TCParser.struct_declaration_list():Integer;
var
  _alt:array [0..255] of Integer;
  struct_declaration_list_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    struct_declaration_list_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 13) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:148:2: ( ( struct_declaration )+ )
        // C.g:148:4: ( struct_declaration )+
        begin
        // positiveClosureBlock:C.g:148:4: ( struct_declaration )+
        _cnt[15]:=0;
        repeat 
            _alt[15]:=2;
            //before decision
            {** The code to initiate execution of a cyclic DFA; this is used
             *  in the rule to predict an alt just like the fixed DFA case.
             *  The CParser attribute is inherited via the parser, lexer, ...
             *}
            _alt[15] := getDfa15.predict(input);
            //after decision
            case (_alt[15]) of 
        	 1 :
        	    begin
        	    // C.g:0:0: struct_declaration
        	    begin
        	    pushFollow(FOLLOW_struct_declaration_in_struct_declaration_list490);
        	    struct_declaration();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    begin
        	      if ( _cnt[15] >= 1 ) then
        	        break ;
        	      if (state.backtracking>0) then 
        	      begin 
        	        state.failed:=true; 
        	        Exit(0);
        	      end;
        	        raise EEarlyExitException.CreateWithDecision(15, input);
                end;
            end;
            _cnt[15]:=_cnt[15]+1;
        until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 13, struct_declaration_list_StartIndex);
        end;
    end;
end;// $ANTLR start "struct_declaration"
// C.g:151:1: struct_declaration : specifier_qualifier_list struct_declarator_list '';'' ;
function TCParser.struct_declaration():Integer;
var
  _alt:array [0..255] of Integer;
  struct_declaration_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    struct_declaration_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 14) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:152:2: ( specifier_qualifier_list struct_declarator_list '';'' )
        // C.g:152:4: specifier_qualifier_list struct_declarator_list '';''
        begin
        pushFollow(FOLLOW_specifier_qualifier_list_in_struct_declaration502);
        specifier_qualifier_list();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        pushFollow(FOLLOW_struct_declarator_list_in_struct_declaration504);
        struct_declarator_list();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        match(input,24,FOLLOW_24_in_struct_declaration506); 
        if (state.failed) then
        begin
          Exit;
        end;

        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 14, struct_declaration_StartIndex);
        end;
    end;
end;// $ANTLR start "specifier_qualifier_list"
// C.g:155:1: specifier_qualifier_list : ( type_qualifier | type_specifier )+ ;
function TCParser.specifier_qualifier_list():Integer;
var
  _alt:array [0..255] of Integer;
  specifier_qualifier_list_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    specifier_qualifier_list_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 15) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:156:2: ( ( type_qualifier | type_specifier )+ )
        // C.g:156:4: ( type_qualifier | type_specifier )+
        begin
        // positiveClosureBlock:C.g:156:4: ( type_qualifier | type_specifier )+
        _cnt[16]:=0;
        repeat 
            _alt[16]:=3;
            //before decision
            {** The code to initiate execution of a cyclic DFA; this is used
             *  in the rule to predict an alt just like the fixed DFA case.
             *  The CParser attribute is inherited via the parser, lexer, ...
             *}
            _alt[16] := getDfa16.predict(input);
            //after decision
            case (_alt[16]) of 
        	 1 :
        	    begin
        	    // C.g:156:6: type_qualifier
        	    begin
        	    pushFollow(FOLLOW_type_qualifier_in_specifier_qualifier_list519);
        	    type_qualifier();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;
        	 2 :
        	    begin
        	    // C.g:156:23: type_specifier
        	    begin
        	    pushFollow(FOLLOW_type_specifier_in_specifier_qualifier_list523);
        	    type_specifier();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    begin
        	      if ( _cnt[16] >= 1 ) then
        	        break ;
        	      if (state.backtracking>0) then 
        	      begin 
        	        state.failed:=true; 
        	        Exit(0);
        	      end;
        	        raise EEarlyExitException.CreateWithDecision(16, input);
                end;
            end;
            _cnt[16]:=_cnt[16]+1;
        until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 15, specifier_qualifier_list_StartIndex);
        end;
    end;
end;// $ANTLR start "struct_declarator_list"
// C.g:159:1: struct_declarator_list : struct_declarator ( '','' struct_declarator )* ;
function TCParser.struct_declarator_list():Integer;
var
  _alt:array [0..255] of Integer;
  struct_declarator_list_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    struct_declarator_list_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 16) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:160:2: ( struct_declarator ( '','' struct_declarator )* )
        // C.g:160:4: struct_declarator ( '','' struct_declarator )*
        begin
        pushFollow(FOLLOW_struct_declarator_in_struct_declarator_list537);
        struct_declarator();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:C.g:160:22: ( '','' struct_declarator )*
        repeat 
            _alt[17]:=2;
            _LA[17,0] := input.LA(1);

            if ( ((_LA[17,0]=25)) ) then 
            begin
              _alt[17]:=1;
            end

            ;

            case (_alt[17]) of
        	 1 :
        	    begin
        	    // C.g:160:23: '','' struct_declarator
        	    begin
        	    match(input,25,FOLLOW_25_in_struct_declarator_list540); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_struct_declarator_in_struct_declarator_list542);
        	    struct_declarator();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 16, struct_declarator_list_StartIndex);
        end;
    end;
end;// $ANTLR start "struct_declarator"
// C.g:163:1: struct_declarator : ( declarator ( '':'' constant_expression )? | '':'' constant_expression );
function TCParser.struct_declarator():Integer;
var
  _alt:array [0..255] of Integer;
  struct_declarator_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    struct_declarator_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 17) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:C.g:164:2: ( declarator ( '':'' constant_expression )? | '':'' constant_expression )
        _alt[19]:=2;
        _LA[19,0] := input.LA(1);

        if ( ((_LA[19,0]=IDENTIFIER) or (_LA[19,0]=48) or (_LA[19,0]=52)) ) then 
        begin
          _alt[19]:=1;
        end
        else if ( ((_LA[19,0]=44)) ) then 
        begin
          _alt[19]:=2;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(0);
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 19, 0, input);    

        end;
        case (_alt[19]) of 
             1 :
                begin
                // C.g:164:4: declarator ( '':'' constant_expression )?
                begin
                pushFollow(FOLLOW_declarator_in_struct_declarator555);
                declarator();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:C.g:164:15: ( '':'' constant_expression )?
                _alt[18]:=2;
                _LA[18,0] := input.LA(1);

                if ( ((_LA[18,0]=44)) ) then 
                begin
                  _alt[18]:=1;
                end
                ;
                case (_alt[18]) of
                     1 :
                        begin
                        // C.g:164:16: '':'' constant_expression
                        begin
                        match(input,44,FOLLOW_44_in_struct_declarator558); 
                        if (state.failed) then
                        begin
                          Exit;
                        end;
                        pushFollow(FOLLOW_constant_expression_in_struct_declarator560);
                        constant_expression();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;


                end;
                end;
             2 :
                begin
                // C.g:165:4: '':'' constant_expression
                begin
                match(input,44,FOLLOW_44_in_struct_declarator567); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_constant_expression_in_struct_declarator569);
                constant_expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 17, struct_declarator_StartIndex);
        end;
    end;
end;// $ANTLR start "enum_specifier"
// C.g:168:1: enum_specifier options {k=3; } : ( ''enum'' ''{'' enumerator_list ''}'' | ''enum'' IDENTIFIER ''{'' enumerator_list ''}'' | ''enum'' IDENTIFIER );
function TCParser.enum_specifier():Integer;
var
  _alt:array [0..255] of Integer;
  enum_specifier_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    enum_specifier_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 18) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:C.g:170:2: ( ''enum'' ''{'' enumerator_list ''}'' | ''enum'' IDENTIFIER ''{'' enumerator_list ''}'' | ''enum'' IDENTIFIER )
        _alt[20]:=3;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The CParser attribute is inherited via the parser, lexer, ...
         *}
        _alt[20] := getDfa20.predict(input);
        case (_alt[20]) of 
             1 :
                begin
                // C.g:170:4: ''enum'' ''{'' enumerator_list ''}''
                begin
                match(input,45,FOLLOW_45_in_enum_specifier587); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,40,FOLLOW_40_in_enum_specifier589); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_enumerator_list_in_enum_specifier591);
                enumerator_list();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,41,FOLLOW_41_in_enum_specifier593); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // C.g:171:4: ''enum'' IDENTIFIER ''{'' enumerator_list ''}''
                begin
                match(input,45,FOLLOW_45_in_enum_specifier598); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_enum_specifier600); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,40,FOLLOW_40_in_enum_specifier602); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_enumerator_list_in_enum_specifier604);
                enumerator_list();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,41,FOLLOW_41_in_enum_specifier606); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // C.g:172:4: ''enum'' IDENTIFIER
                begin
                match(input,45,FOLLOW_45_in_enum_specifier611); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_enum_specifier613); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 18, enum_specifier_StartIndex);
        end;
    end;
end;// $ANTLR start "enumerator_list"
// C.g:175:1: enumerator_list : enumerator ( '','' enumerator )* ;
function TCParser.enumerator_list():Integer;
var
  _alt:array [0..255] of Integer;
  enumerator_list_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    enumerator_list_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 19) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:176:2: ( enumerator ( '','' enumerator )* )
        // C.g:176:4: enumerator ( '','' enumerator )*
        begin
        pushFollow(FOLLOW_enumerator_in_enumerator_list624);
        enumerator();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:C.g:176:15: ( '','' enumerator )*
        repeat 
            _alt[21]:=2;
            _LA[21,0] := input.LA(1);

            if ( ((_LA[21,0]=25)) ) then 
            begin
              _alt[21]:=1;
            end

            ;

            case (_alt[21]) of
        	 1 :
        	    begin
        	    // C.g:176:16: '','' enumerator
        	    begin
        	    match(input,25,FOLLOW_25_in_enumerator_list627); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_enumerator_in_enumerator_list629);
        	    enumerator();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 19, enumerator_list_StartIndex);
        end;
    end;
end;// $ANTLR start "enumerator"
// C.g:179:1: enumerator : IDENTIFIER ( ''='' constant_expression )? ;
function TCParser.enumerator():Integer;
var
  _alt:array [0..255] of Integer;
  enumerator_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    enumerator_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 20) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:180:2: ( IDENTIFIER ( ''='' constant_expression )? )
        // C.g:180:4: IDENTIFIER ( ''='' constant_expression )?
        begin
        match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_enumerator642); 
        if (state.failed) then
        begin
          Exit;
        end;
        // block:C.g:180:15: ( ''='' constant_expression )?
        _alt[22]:=2;
        _LA[22,0] := input.LA(1);

        if ( ((_LA[22,0]=26)) ) then 
        begin
          _alt[22]:=1;
        end
        ;
        case (_alt[22]) of
             1 :
                begin
                // C.g:180:16: ''='' constant_expression
                begin
                match(input,26,FOLLOW_26_in_enumerator645); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_constant_expression_in_enumerator647);
                constant_expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 20, enumerator_StartIndex);
        end;
    end;
end;// $ANTLR start "type_qualifier"
// C.g:183:1: type_qualifier : ( ''const'' | ''volatile'' );
function TCParser.type_qualifier():Integer;
var
  _alt:array [0..255] of Integer;
  type_qualifier_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    type_qualifier_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 21) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:184:2: ( ''const'' | ''volatile'' )
        // C.g:
        begin
        if ( ((input.LA(1)>=46) and (input.LA(1)<=47)) ) then
        begin
            input.consume();
            state.errorRecovery:=false;state.failed:=false;
        end
        else 
        begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(0);
            end;
            raise EMismatchedSetException.CreateWithBitset(nil, input);
        end;


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 21, type_qualifier_StartIndex);
        end;
    end;
end;// $ANTLR start "declarator"
// C.g:188:1: declarator : ( ( pointer )? direct_declarator | pointer );
function TCParser.declarator():Integer;
var
  _alt:array [0..255] of Integer;
  declarator_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    declarator_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 22) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:C.g:189:2: ( ( pointer )? direct_declarator | pointer )
        _alt[24]:=2;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The CParser attribute is inherited via the parser, lexer, ...
         *}
        _alt[24] := getDfa24.predict(input);
        case (_alt[24]) of 
             1 :
                begin
                // C.g:189:4: ( pointer )? direct_declarator
                begin
                // block:C.g:189:4: ( pointer )?
                _alt[23]:=2;
                _LA[23,0] := input.LA(1);

                if ( ((_LA[23,0]=52)) ) then 
                begin
                  _alt[23]:=1;
                end
                ;
                case (_alt[23]) of
                     1 :
                        begin
                        // C.g:0:0: pointer
                        begin
                        pushFollow(FOLLOW_pointer_in_declarator676);
                        pointer();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;

                pushFollow(FOLLOW_direct_declarator_in_declarator679);
                direct_declarator();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // C.g:190:4: pointer
                begin
                pushFollow(FOLLOW_pointer_in_declarator684);
                pointer();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 22, declarator_StartIndex);
        end;
    end;
end;// $ANTLR start "direct_declarator"
// C.g:193:1: direct_declarator : ( IDENTIFIER | ''('' declarator '')'' ) ( declarator_suffix )* ;
function TCParser.direct_declarator():Integer;
var
  _alt:array [0..255] of Integer;
  direct_declarator_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

  IDENTIFIER1:IToken;

begin
    direct_declarator_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 23) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:194:2: ( ( IDENTIFIER | ''('' declarator '')'' ) ( declarator_suffix )* )
        // C.g:194:6: ( IDENTIFIER | ''('' declarator '')'' ) ( declarator_suffix )*
        begin
        // block:C.g:194:6: ( IDENTIFIER | ''('' declarator '')'' )
        _alt[25]:=2;
        _LA[25,0] := input.LA(1);

        if ( ((_LA[25,0]=IDENTIFIER)) ) then 
        begin
          _alt[25]:=1;
        end
        else if ( ((_LA[25,0]=48)) ) then 
        begin
          _alt[25]:=2;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(0);
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 25, 0, input);    

        end;
        case (_alt[25]) of
             1 :
                begin
                // C.g:194:8: IDENTIFIER
                begin
                IDENTIFIER1:=match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_direct_declarator699) as IToken; 
                if (state.failed) then
                begin
                  Exit;
                end;
                if ( state.backtracking=0 ) then 
                begin

                  			if (declaration_stack.size()>0) and (Tdeclaration_scope(declaration_stack.peek())).isTypedef then
                  			begin
                  			  (TSymbols_scope(Symbols_stack.peek())).types.add((IIF(Assigned(IDENTIFIER1), IDENTIFIER1.getText(), '')));
                  			  Writeln('define type '+(IIF(Assigned(IDENTIFIER1), IDENTIFIER1.getText(), '')));
                  			end;
                  			
                end;

                end;
                end;
             2 :
                begin
                // C.g:202:5: ''('' declarator '')''
                begin
                match(input,48,FOLLOW_48_in_direct_declarator710); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_declarator_in_direct_declarator712);
                declarator();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,49,FOLLOW_49_in_direct_declarator714); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        // closureBlock:C.g:204:9: ( declarator_suffix )*
        repeat 
            _alt[26]:=2;
            {** The code to initiate execution of a cyclic DFA; this is used
             *  in the rule to predict an alt just like the fixed DFA case.
             *  The CParser attribute is inherited via the parser, lexer, ...
             *}
            _alt[26] := getDfa26.predict(input);
            case (_alt[26]) of
        	 1 :
        	    begin
        	    // C.g:0:0: declarator_suffix
        	    begin
        	    pushFollow(FOLLOW_declarator_suffix_in_direct_declarator728);
        	    declarator_suffix();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 23, direct_declarator_StartIndex);
        end;
    end;
end;// $ANTLR start "declarator_suffix"
// C.g:207:1: declarator_suffix : ( ''['' constant_expression '']'' | ''['' '']'' | ''('' parameter_type_list '')'' | ''('' identifier_list '')'' | ''('' '')'' );
function TCParser.declarator_suffix():Integer;
var
  _alt:array [0..255] of Integer;
  declarator_suffix_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    declarator_suffix_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 24) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:C.g:208:2: ( ''['' constant_expression '']'' | ''['' '']'' | ''('' parameter_type_list '')'' | ''('' identifier_list '')'' | ''('' '')'' )
        _alt[27]:=5;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The CParser attribute is inherited via the parser, lexer, ...
         *}
        _alt[27] := getDfa27.predict(input);
        case (_alt[27]) of 
             1 :
                begin
                // C.g:208:6: ''['' constant_expression '']''
                begin
                match(input,50,FOLLOW_50_in_declarator_suffix742); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_constant_expression_in_declarator_suffix744);
                constant_expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,51,FOLLOW_51_in_declarator_suffix746); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // C.g:209:9: ''['' '']''
                begin
                match(input,50,FOLLOW_50_in_declarator_suffix756); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,51,FOLLOW_51_in_declarator_suffix758); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // C.g:210:9: ''('' parameter_type_list '')''
                begin
                match(input,48,FOLLOW_48_in_declarator_suffix768); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_parameter_type_list_in_declarator_suffix770);
                parameter_type_list();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,49,FOLLOW_49_in_declarator_suffix772); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             4 :
                begin
                // C.g:211:9: ''('' identifier_list '')''
                begin
                match(input,48,FOLLOW_48_in_declarator_suffix782); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_identifier_list_in_declarator_suffix784);
                identifier_list();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,49,FOLLOW_49_in_declarator_suffix786); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             5 :
                begin
                // C.g:212:9: ''('' '')''
                begin
                match(input,48,FOLLOW_48_in_declarator_suffix796); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,49,FOLLOW_49_in_declarator_suffix798); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 24, declarator_suffix_StartIndex);
        end;
    end;
end;// $ANTLR start "pointer"
// C.g:215:1: pointer : ( ''*'' ( type_qualifier )+ ( pointer )? | ''*'' pointer | ''*'' );
function TCParser.pointer():Integer;
var
  _alt:array [0..255] of Integer;
  pointer_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    pointer_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 25) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:C.g:216:2: ( ''*'' ( type_qualifier )+ ( pointer )? | ''*'' pointer | ''*'' )
        _alt[30]:=3;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The CParser attribute is inherited via the parser, lexer, ...
         *}
        _alt[30] := getDfa30.predict(input);
        case (_alt[30]) of 
             1 :
                begin
                // C.g:216:4: ''*'' ( type_qualifier )+ ( pointer )?
                begin
                match(input,52,FOLLOW_52_in_pointer809); 
                if (state.failed) then
                begin
                  Exit;
                end;
                // positiveClosureBlock:C.g:216:8: ( type_qualifier )+
                _cnt[28]:=0;
                repeat 
                    _alt[28]:=2;
                    //before decision
                    {** The code to initiate execution of a cyclic DFA; this is used
                     *  in the rule to predict an alt just like the fixed DFA case.
                     *  The CParser attribute is inherited via the parser, lexer, ...
                     *}
                    _alt[28] := getDfa28.predict(input);
                    //after decision
                    case (_alt[28]) of 
                	 1 :
                	    begin
                	    // C.g:0:0: type_qualifier
                	    begin
                	    pushFollow(FOLLOW_type_qualifier_in_pointer811);
                	    type_qualifier();

                	    state._fsp:=state._fsp-1;
                	    if (state.failed) then
                	    begin
                	      Exit;
                	    end;

                	    end;
                	    end;

                	else 
                	    begin
                	      if ( _cnt[28] >= 1 ) then
                	        break ;
                	      if (state.backtracking>0) then 
                	      begin 
                	        state.failed:=true; 
                	        Exit(0);
                	      end;
                	        raise EEarlyExitException.CreateWithDecision(28, input);
                        end;
                    end;
                    _cnt[28]:=_cnt[28]+1;
                until (false);

                // block:C.g:216:24: ( pointer )?
                _alt[29]:=2;
                {** The code to initiate execution of a cyclic DFA; this is used
                 *  in the rule to predict an alt just like the fixed DFA case.
                 *  The CParser attribute is inherited via the parser, lexer, ...
                 *}
                _alt[29] := getDfa29.predict(input);
                case (_alt[29]) of
                     1 :
                        begin
                        // C.g:0:0: pointer
                        begin
                        pushFollow(FOLLOW_pointer_in_pointer814);
                        pointer();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;


                end;
                end;
             2 :
                begin
                // C.g:217:4: ''*'' pointer
                begin
                match(input,52,FOLLOW_52_in_pointer820); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_pointer_in_pointer822);
                pointer();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // C.g:218:4: ''*''
                begin
                match(input,52,FOLLOW_52_in_pointer827); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 25, pointer_StartIndex);
        end;
    end;
end;// $ANTLR start "parameter_type_list"
// C.g:221:1: parameter_type_list : parameter_list ( '','' ''...'' )? ;
function TCParser.parameter_type_list():Integer;
var
  _alt:array [0..255] of Integer;
  parameter_type_list_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    parameter_type_list_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 26) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:222:2: ( parameter_list ( '','' ''...'' )? )
        // C.g:222:4: parameter_list ( '','' ''...'' )?
        begin
        pushFollow(FOLLOW_parameter_list_in_parameter_type_list838);
        parameter_list();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // block:C.g:222:19: ( '','' ''...'' )?
        _alt[31]:=2;
        _LA[31,0] := input.LA(1);

        if ( ((_LA[31,0]=25)) ) then 
        begin
          _alt[31]:=1;
        end
        ;
        case (_alt[31]) of
             1 :
                begin
                // C.g:222:20: '','' ''...''
                begin
                match(input,25,FOLLOW_25_in_parameter_type_list841); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,53,FOLLOW_53_in_parameter_type_list843); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 26, parameter_type_list_StartIndex);
        end;
    end;
end;// $ANTLR start "parameter_list"
// C.g:225:1: parameter_list : parameter_declaration ( '','' parameter_declaration )* ;
function TCParser.parameter_list():Integer;
var
  _alt:array [0..255] of Integer;
  parameter_list_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    parameter_list_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 27) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:226:2: ( parameter_declaration ( '','' parameter_declaration )* )
        // C.g:226:4: parameter_declaration ( '','' parameter_declaration )*
        begin
        pushFollow(FOLLOW_parameter_declaration_in_parameter_list856);
        parameter_declaration();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:C.g:226:26: ( '','' parameter_declaration )*
        repeat 
            _alt[32]:=2;
            {** The code to initiate execution of a cyclic DFA; this is used
             *  in the rule to predict an alt just like the fixed DFA case.
             *  The CParser attribute is inherited via the parser, lexer, ...
             *}
            _alt[32] := getDfa32.predict(input);
            case (_alt[32]) of
        	 1 :
        	    begin
        	    // C.g:226:27: '','' parameter_declaration
        	    begin
        	    match(input,25,FOLLOW_25_in_parameter_list859); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_parameter_declaration_in_parameter_list861);
        	    parameter_declaration();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 27, parameter_list_StartIndex);
        end;
    end;
end;// $ANTLR start "parameter_declaration"
// C.g:229:1: parameter_declaration : declaration_specifiers ( declarator | abstract_declarator )* ;
function TCParser.parameter_declaration():Integer;
var
  _alt:array [0..255] of Integer;
  parameter_declaration_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    parameter_declaration_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 28) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:230:2: ( declaration_specifiers ( declarator | abstract_declarator )* )
        // C.g:230:4: declaration_specifiers ( declarator | abstract_declarator )*
        begin
        pushFollow(FOLLOW_declaration_specifiers_in_parameter_declaration874);
        declaration_specifiers();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:C.g:230:27: ( declarator | abstract_declarator )*
        repeat 
            _alt[33]:=3;
            {** The code to initiate execution of a cyclic DFA; this is used
             *  in the rule to predict an alt just like the fixed DFA case.
             *  The CParser attribute is inherited via the parser, lexer, ...
             *}
            _alt[33] := getDfa33.predict(input);
            case (_alt[33]) of
        	 1 :
        	    begin
        	    // C.g:230:28: declarator
        	    begin
        	    pushFollow(FOLLOW_declarator_in_parameter_declaration877);
        	    declarator();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;
        	 2 :
        	    begin
        	    // C.g:230:39: abstract_declarator
        	    begin
        	    pushFollow(FOLLOW_abstract_declarator_in_parameter_declaration879);
        	    abstract_declarator();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 28, parameter_declaration_StartIndex);
        end;
    end;
end;// $ANTLR start "identifier_list"
// C.g:233:1: identifier_list : IDENTIFIER ( '','' IDENTIFIER )* ;
function TCParser.identifier_list():Integer;
var
  _alt:array [0..255] of Integer;
  identifier_list_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    identifier_list_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 29) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:234:2: ( IDENTIFIER ( '','' IDENTIFIER )* )
        // C.g:234:4: IDENTIFIER ( '','' IDENTIFIER )*
        begin
        match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_identifier_list892); 
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:C.g:234:15: ( '','' IDENTIFIER )*
        repeat 
            _alt[34]:=2;
            _LA[34,0] := input.LA(1);

            if ( ((_LA[34,0]=25)) ) then 
            begin
              _alt[34]:=1;
            end

            ;

            case (_alt[34]) of
        	 1 :
        	    begin
        	    // C.g:234:16: '','' IDENTIFIER
        	    begin
        	    match(input,25,FOLLOW_25_in_identifier_list895); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_identifier_list897); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 29, identifier_list_StartIndex);
        end;
    end;
end;// $ANTLR start "type_name"
// C.g:237:1: type_name : specifier_qualifier_list ( abstract_declarator )? ;
function TCParser.type_name():Integer;
var
  _alt:array [0..255] of Integer;
  type_name_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    type_name_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 30) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:238:2: ( specifier_qualifier_list ( abstract_declarator )? )
        // C.g:238:4: specifier_qualifier_list ( abstract_declarator )?
        begin
        pushFollow(FOLLOW_specifier_qualifier_list_in_type_name910);
        specifier_qualifier_list();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // block:C.g:238:29: ( abstract_declarator )?
        _alt[35]:=2;
        _LA[35,0] := input.LA(1);

        if ( ((_LA[35,0]=48) or (_LA[35,0]=50) or (_LA[35,0]=52)) ) then 
        begin
          _alt[35]:=1;
        end
        ;
        case (_alt[35]) of
             1 :
                begin
                // C.g:0:0: abstract_declarator
                begin
                pushFollow(FOLLOW_abstract_declarator_in_type_name912);
                abstract_declarator();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 30, type_name_StartIndex);
        end;
    end;
end;// $ANTLR start "abstract_declarator"
// C.g:241:1: abstract_declarator : ( pointer ( direct_abstract_declarator )? | direct_abstract_declarator );
function TCParser.abstract_declarator():Integer;
var
  _alt:array [0..255] of Integer;
  abstract_declarator_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    abstract_declarator_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 31) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:C.g:242:2: ( pointer ( direct_abstract_declarator )? | direct_abstract_declarator )
        _alt[37]:=2;
        _LA[37,0] := input.LA(1);

        if ( ((_LA[37,0]=52)) ) then 
        begin
          _alt[37]:=1;
        end
        else if ( ((_LA[37,0]=48) or (_LA[37,0]=50)) ) then 
        begin
          _alt[37]:=2;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(0);
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 37, 0, input);    

        end;
        case (_alt[37]) of 
             1 :
                begin
                // C.g:242:4: pointer ( direct_abstract_declarator )?
                begin
                pushFollow(FOLLOW_pointer_in_abstract_declarator924);
                pointer();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:C.g:242:12: ( direct_abstract_declarator )?
                _alt[36]:=2;
                {** The code to initiate execution of a cyclic DFA; this is used
                 *  in the rule to predict an alt just like the fixed DFA case.
                 *  The CParser attribute is inherited via the parser, lexer, ...
                 *}
                _alt[36] := getDfa36.predict(input);
                case (_alt[36]) of
                     1 :
                        begin
                        // C.g:0:0: direct_abstract_declarator
                        begin
                        pushFollow(FOLLOW_direct_abstract_declarator_in_abstract_declarator926);
                        direct_abstract_declarator();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;


                end;
                end;
             2 :
                begin
                // C.g:243:4: direct_abstract_declarator
                begin
                pushFollow(FOLLOW_direct_abstract_declarator_in_abstract_declarator932);
                direct_abstract_declarator();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 31, abstract_declarator_StartIndex);
        end;
    end;
end;// $ANTLR start "direct_abstract_declarator"
// C.g:246:1: direct_abstract_declarator : ( ''('' abstract_declarator '')'' | abstract_declarator_suffix ) ( abstract_declarator_suffix )* ;
function TCParser.direct_abstract_declarator():Integer;
var
  _alt:array [0..255] of Integer;
  direct_abstract_declarator_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    direct_abstract_declarator_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 32) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:247:2: ( ( ''('' abstract_declarator '')'' | abstract_declarator_suffix ) ( abstract_declarator_suffix )* )
        // C.g:247:4: ( ''('' abstract_declarator '')'' | abstract_declarator_suffix ) ( abstract_declarator_suffix )*
        begin
        // block:C.g:247:4: ( ''('' abstract_declarator '')'' | abstract_declarator_suffix )
        _alt[38]:=2;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The CParser attribute is inherited via the parser, lexer, ...
         *}
        _alt[38] := getDfa38.predict(input);
        case (_alt[38]) of
             1 :
                begin
                // C.g:247:6: ''('' abstract_declarator '')''
                begin
                match(input,48,FOLLOW_48_in_direct_abstract_declarator945); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_abstract_declarator_in_direct_abstract_declarator947);
                abstract_declarator();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,49,FOLLOW_49_in_direct_abstract_declarator949); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // C.g:247:36: abstract_declarator_suffix
                begin
                pushFollow(FOLLOW_abstract_declarator_suffix_in_direct_abstract_declarator953);
                abstract_declarator_suffix();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        // closureBlock:C.g:247:65: ( abstract_declarator_suffix )*
        repeat 
            _alt[39]:=2;
            {** The code to initiate execution of a cyclic DFA; this is used
             *  in the rule to predict an alt just like the fixed DFA case.
             *  The CParser attribute is inherited via the parser, lexer, ...
             *}
            _alt[39] := getDfa39.predict(input);
            case (_alt[39]) of
        	 1 :
        	    begin
        	    // C.g:0:0: abstract_declarator_suffix
        	    begin
        	    pushFollow(FOLLOW_abstract_declarator_suffix_in_direct_abstract_declarator957);
        	    abstract_declarator_suffix();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 32, direct_abstract_declarator_StartIndex);
        end;
    end;
end;// $ANTLR start "abstract_declarator_suffix"
// C.g:250:1: abstract_declarator_suffix : ( ''['' '']'' | ''['' constant_expression '']'' | ''('' '')'' | ''('' parameter_type_list '')'' );
function TCParser.abstract_declarator_suffix():Integer;
var
  _alt:array [0..255] of Integer;
  abstract_declarator_suffix_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    abstract_declarator_suffix_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 33) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:C.g:251:2: ( ''['' '']'' | ''['' constant_expression '']'' | ''('' '')'' | ''('' parameter_type_list '')'' )
        _alt[40]:=4;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The CParser attribute is inherited via the parser, lexer, ...
         *}
        _alt[40] := getDfa40.predict(input);
        case (_alt[40]) of 
             1 :
                begin
                // C.g:251:4: ''['' '']''
                begin
                match(input,50,FOLLOW_50_in_abstract_declarator_suffix969); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,51,FOLLOW_51_in_abstract_declarator_suffix971); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // C.g:252:4: ''['' constant_expression '']''
                begin
                match(input,50,FOLLOW_50_in_abstract_declarator_suffix976); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_constant_expression_in_abstract_declarator_suffix978);
                constant_expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,51,FOLLOW_51_in_abstract_declarator_suffix980); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // C.g:253:4: ''('' '')''
                begin
                match(input,48,FOLLOW_48_in_abstract_declarator_suffix985); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,49,FOLLOW_49_in_abstract_declarator_suffix987); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             4 :
                begin
                // C.g:254:4: ''('' parameter_type_list '')''
                begin
                match(input,48,FOLLOW_48_in_abstract_declarator_suffix992); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_parameter_type_list_in_abstract_declarator_suffix994);
                parameter_type_list();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,49,FOLLOW_49_in_abstract_declarator_suffix996); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 33, abstract_declarator_suffix_StartIndex);
        end;
    end;
end;// $ANTLR start "initializer"
// C.g:257:1: initializer : ( assignment_expression | ''{'' initializer_list ( '','' )? ''}'' );
function TCParser.initializer():Integer;
var
  _alt:array [0..255] of Integer;
  initializer_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    initializer_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 34) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:C.g:258:2: ( assignment_expression | ''{'' initializer_list ( '','' )? ''}'' )
        _alt[42]:=2;
        _LA[42,0] := input.LA(1);

        if ( (((_LA[42,0]>=IDENTIFIER) and 
        ( _LA[42,0]<=FLOATING_POINT_LITERAL)) or (_LA[42,0]=48) or (_LA[42,0]=52) or ((_LA[42,0]>=54) and 
        ( _LA[42,0]<=55)) or ((_LA[42,0]>=58) and 
        ( _LA[42,0]<=60)) or ((_LA[42,0]>=63) and 
        ( _LA[42,0]<=65))) ) then 
        begin
          _alt[42]:=1;
        end
        else if ( ((_LA[42,0]=40)) ) then 
        begin
          _alt[42]:=2;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(0);
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 42, 0, input);    

        end;
        case (_alt[42]) of 
             1 :
                begin
                // C.g:258:4: assignment_expression
                begin
                pushFollow(FOLLOW_assignment_expression_in_initializer1008);
                assignment_expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // C.g:259:4: ''{'' initializer_list ( '','' )? ''}''
                begin
                match(input,40,FOLLOW_40_in_initializer1013); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_initializer_list_in_initializer1015);
                initializer_list();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:C.g:259:25: ( '','' )?
                _alt[41]:=2;
                _LA[41,0] := input.LA(1);

                if ( ((_LA[41,0]=25)) ) then 
                begin
                  _alt[41]:=1;
                end
                ;
                case (_alt[41]) of
                     1 :
                        begin
                        // C.g:0:0: '',''
                        begin
                        match(input,25,FOLLOW_25_in_initializer1017); 
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;

                match(input,41,FOLLOW_41_in_initializer1020); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 34, initializer_StartIndex);
        end;
    end;
end;// $ANTLR start "initializer_list"
// C.g:262:1: initializer_list : initializer ( '','' initializer )* ;
function TCParser.initializer_list():Integer;
var
  _alt:array [0..255] of Integer;
  initializer_list_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    initializer_list_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 35) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:263:2: ( initializer ( '','' initializer )* )
        // C.g:263:4: initializer ( '','' initializer )*
        begin
        pushFollow(FOLLOW_initializer_in_initializer_list1031);
        initializer();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:C.g:263:16: ( '','' initializer )*
        repeat 
            _alt[43]:=2;
            {** The code to initiate execution of a cyclic DFA; this is used
             *  in the rule to predict an alt just like the fixed DFA case.
             *  The CParser attribute is inherited via the parser, lexer, ...
             *}
            _alt[43] := getDfa43.predict(input);
            case (_alt[43]) of
        	 1 :
        	    begin
        	    // C.g:263:17: '','' initializer
        	    begin
        	    match(input,25,FOLLOW_25_in_initializer_list1034); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_initializer_in_initializer_list1036);
        	    initializer();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 35, initializer_list_StartIndex);
        end;
    end;
end;// $ANTLR start "argument_expression_list"
// C.g:268:1: argument_expression_list : assignment_expression ( '','' assignment_expression )* ;
function TCParser.argument_expression_list():Integer;
var
  _alt:array [0..255] of Integer;
  argument_expression_list_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    argument_expression_list_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 36) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:269:2: ( assignment_expression ( '','' assignment_expression )* )
        // C.g:269:6: assignment_expression ( '','' assignment_expression )*
        begin
        pushFollow(FOLLOW_assignment_expression_in_argument_expression_list1053);
        assignment_expression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:C.g:269:28: ( '','' assignment_expression )*
        repeat 
            _alt[44]:=2;
            _LA[44,0] := input.LA(1);

            if ( ((_LA[44,0]=25)) ) then 
            begin
              _alt[44]:=1;
            end

            ;

            case (_alt[44]) of
        	 1 :
        	    begin
        	    // C.g:269:29: '','' assignment_expression
        	    begin
        	    match(input,25,FOLLOW_25_in_argument_expression_list1056); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_assignment_expression_in_argument_expression_list1058);
        	    assignment_expression();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 36, argument_expression_list_StartIndex);
        end;
    end;
end;// $ANTLR start "additive_expression"
// C.g:272:1: additive_expression : ( multiplicative_expression ) ( ''+'' multiplicative_expression | ''-'' multiplicative_expression )* ;
function TCParser.additive_expression():Integer;
var
  _alt:array [0..255] of Integer;
  additive_expression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    additive_expression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 37) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:273:2: ( ( multiplicative_expression ) ( ''+'' multiplicative_expression | ''-'' multiplicative_expression )* )
        // C.g:273:4: ( multiplicative_expression ) ( ''+'' multiplicative_expression | ''-'' multiplicative_expression )*
        begin
        // blockSingleAlt:C.g:273:4: ( multiplicative_expression )
        // C.g:273:5: multiplicative_expression
        begin
        pushFollow(FOLLOW_multiplicative_expression_in_additive_expression1072);
        multiplicative_expression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;

        end;

        // closureBlock:C.g:273:32: ( ''+'' multiplicative_expression | ''-'' multiplicative_expression )*
        repeat 
            _alt[45]:=3;
            {** The code to initiate execution of a cyclic DFA; this is used
             *  in the rule to predict an alt just like the fixed DFA case.
             *  The CParser attribute is inherited via the parser, lexer, ...
             *}
            _alt[45] := getDfa45.predict(input);
            case (_alt[45]) of
        	 1 :
        	    begin
        	    // C.g:273:33: ''+'' multiplicative_expression
        	    begin
        	    match(input,54,FOLLOW_54_in_additive_expression1076); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_multiplicative_expression_in_additive_expression1078);
        	    multiplicative_expression();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;
        	 2 :
        	    begin
        	    // C.g:273:65: ''-'' multiplicative_expression
        	    begin
        	    match(input,55,FOLLOW_55_in_additive_expression1082); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_multiplicative_expression_in_additive_expression1084);
        	    multiplicative_expression();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 37, additive_expression_StartIndex);
        end;
    end;
end;// $ANTLR start "multiplicative_expression"
// C.g:276:1: multiplicative_expression : ( cast_expression ) ( ''*'' cast_expression | ''/'' cast_expression | ''%'' cast_expression )* ;
function TCParser.multiplicative_expression():Integer;
var
  _alt:array [0..255] of Integer;
  multiplicative_expression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    multiplicative_expression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 38) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:277:2: ( ( cast_expression ) ( ''*'' cast_expression | ''/'' cast_expression | ''%'' cast_expression )* )
        // C.g:277:4: ( cast_expression ) ( ''*'' cast_expression | ''/'' cast_expression | ''%'' cast_expression )*
        begin
        // blockSingleAlt:C.g:277:4: ( cast_expression )
        // C.g:277:5: cast_expression
        begin
        pushFollow(FOLLOW_cast_expression_in_multiplicative_expression1098);
        cast_expression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;

        end;

        // closureBlock:C.g:277:22: ( ''*'' cast_expression | ''/'' cast_expression | ''%'' cast_expression )*
        repeat 
            _alt[46]:=4;
            {** The code to initiate execution of a cyclic DFA; this is used
             *  in the rule to predict an alt just like the fixed DFA case.
             *  The CParser attribute is inherited via the parser, lexer, ...
             *}
            _alt[46] := getDfa46.predict(input);
            case (_alt[46]) of
        	 1 :
        	    begin
        	    // C.g:277:23: ''*'' cast_expression
        	    begin
        	    match(input,52,FOLLOW_52_in_multiplicative_expression1102); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_cast_expression_in_multiplicative_expression1104);
        	    cast_expression();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;
        	 2 :
        	    begin
        	    // C.g:277:45: ''/'' cast_expression
        	    begin
        	    match(input,56,FOLLOW_56_in_multiplicative_expression1108); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_cast_expression_in_multiplicative_expression1110);
        	    cast_expression();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;
        	 3 :
        	    begin
        	    // C.g:277:67: ''%'' cast_expression
        	    begin
        	    match(input,57,FOLLOW_57_in_multiplicative_expression1114); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_cast_expression_in_multiplicative_expression1116);
        	    cast_expression();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 38, multiplicative_expression_StartIndex);
        end;
    end;
end;// $ANTLR start "cast_expression"
// C.g:280:1: cast_expression : ( ''('' type_name '')'' cast_expression | unary_expression );
function TCParser.cast_expression():Integer;
var
  _alt:array [0..255] of Integer;
  cast_expression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    cast_expression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 39) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:C.g:281:2: ( ''('' type_name '')'' cast_expression | unary_expression )
        _alt[47]:=2;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The CParser attribute is inherited via the parser, lexer, ...
         *}
        _alt[47] := getDfa47.predict(input);
        case (_alt[47]) of 
             1 :
                begin
                // C.g:281:4: ''('' type_name '')'' cast_expression
                begin
                match(input,48,FOLLOW_48_in_cast_expression1129); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_type_name_in_cast_expression1131);
                type_name();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,49,FOLLOW_49_in_cast_expression1133); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_cast_expression_in_cast_expression1135);
                cast_expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // C.g:282:4: unary_expression
                begin
                pushFollow(FOLLOW_unary_expression_in_cast_expression1140);
                unary_expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 39, cast_expression_StartIndex);
        end;
    end;
end;// $ANTLR start "unary_expression"
// C.g:285:1: unary_expression : ( postfix_expression | ''++'' unary_expression | ''--'' unary_expression | unary_operator cast_expression | ''sizeof'' unary_expression | ''sizeof'' ''('' type_name '')'' );
function TCParser.unary_expression():Integer;
var
  _alt:array [0..255] of Integer;
  unary_expression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    unary_expression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 40) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:C.g:286:2: ( postfix_expression | ''++'' unary_expression | ''--'' unary_expression | unary_operator cast_expression | ''sizeof'' unary_expression | ''sizeof'' ''('' type_name '')'' )
        _alt[48]:=6;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The CParser attribute is inherited via the parser, lexer, ...
         *}
        _alt[48] := getDfa48.predict(input);
        case (_alt[48]) of 
             1 :
                begin
                // C.g:286:4: postfix_expression
                begin
                pushFollow(FOLLOW_postfix_expression_in_unary_expression1151);
                postfix_expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // C.g:287:4: ''++'' unary_expression
                begin
                match(input,58,FOLLOW_58_in_unary_expression1156); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_unary_expression_in_unary_expression1158);
                unary_expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // C.g:288:4: ''--'' unary_expression
                begin
                match(input,59,FOLLOW_59_in_unary_expression1163); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_unary_expression_in_unary_expression1165);
                unary_expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             4 :
                begin
                // C.g:289:4: unary_operator cast_expression
                begin
                pushFollow(FOLLOW_unary_operator_in_unary_expression1170);
                unary_operator();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_cast_expression_in_unary_expression1172);
                cast_expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             5 :
                begin
                // C.g:290:4: ''sizeof'' unary_expression
                begin
                match(input,60,FOLLOW_60_in_unary_expression1177); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_unary_expression_in_unary_expression1179);
                unary_expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             6 :
                begin
                // C.g:291:4: ''sizeof'' ''('' type_name '')''
                begin
                match(input,60,FOLLOW_60_in_unary_expression1184); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,48,FOLLOW_48_in_unary_expression1186); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_type_name_in_unary_expression1188);
                type_name();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,49,FOLLOW_49_in_unary_expression1190); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 40, unary_expression_StartIndex);
        end;
    end;
end;// $ANTLR start "postfix_expression"
// C.g:294:1: postfix_expression : primary_expression ( ''['' expression '']'' | ''('' '')'' | ''('' argument_expression_list '')'' | ''.'' IDENTIFIER | ''->'' IDENTIFIER | ''++'' | ''--'' )* ;
function TCParser.postfix_expression():Integer;
var
  _alt:array [0..255] of Integer;
  postfix_expression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    postfix_expression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 41) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:295:2: ( primary_expression ( ''['' expression '']'' | ''('' '')'' | ''('' argument_expression_list '')'' | ''.'' IDENTIFIER | ''->'' IDENTIFIER | ''++'' | ''--'' )* )
        // C.g:295:6: primary_expression ( ''['' expression '']'' | ''('' '')'' | ''('' argument_expression_list '')'' | ''.'' IDENTIFIER | ''->'' IDENTIFIER | ''++'' | ''--'' )*
        begin
        pushFollow(FOLLOW_primary_expression_in_postfix_expression1203);
        primary_expression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:C.g:296:9: ( ''['' expression '']'' | ''('' '')'' | ''('' argument_expression_list '')'' | ''.'' IDENTIFIER | ''->'' IDENTIFIER | ''++'' | ''--'' )*
        repeat 
            _alt[49]:=8;
            {** The code to initiate execution of a cyclic DFA; this is used
             *  in the rule to predict an alt just like the fixed DFA case.
             *  The CParser attribute is inherited via the parser, lexer, ...
             *}
            _alt[49] := getDfa49.predict(input);
            case (_alt[49]) of
        	 1 :
        	    begin
        	    // C.g:296:13: ''['' expression '']''
        	    begin
        	    match(input,50,FOLLOW_50_in_postfix_expression1217); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_expression_in_postfix_expression1219);
        	    expression();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    match(input,51,FOLLOW_51_in_postfix_expression1221); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;
        	 2 :
        	    begin
        	    // C.g:297:13: ''('' '')''
        	    begin
        	    match(input,48,FOLLOW_48_in_postfix_expression1235); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    match(input,49,FOLLOW_49_in_postfix_expression1237); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;
        	 3 :
        	    begin
        	    // C.g:298:13: ''('' argument_expression_list '')''
        	    begin
        	    match(input,48,FOLLOW_48_in_postfix_expression1251); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_argument_expression_list_in_postfix_expression1253);
        	    argument_expression_list();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    match(input,49,FOLLOW_49_in_postfix_expression1255); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;
        	 4 :
        	    begin
        	    // C.g:299:13: ''.'' IDENTIFIER
        	    begin
        	    match(input,61,FOLLOW_61_in_postfix_expression1269); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_postfix_expression1271); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;
        	 5 :
        	    begin
        	    // C.g:300:13: ''->'' IDENTIFIER
        	    begin
        	    match(input,62,FOLLOW_62_in_postfix_expression1285); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_postfix_expression1287); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;
        	 6 :
        	    begin
        	    // C.g:301:13: ''++''
        	    begin
        	    match(input,58,FOLLOW_58_in_postfix_expression1301); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;
        	 7 :
        	    begin
        	    // C.g:302:13: ''--''
        	    begin
        	    match(input,59,FOLLOW_59_in_postfix_expression1315); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 41, postfix_expression_StartIndex);
        end;
    end;
end;// $ANTLR start "unary_operator"
// C.g:306:1: unary_operator : ( ''&'' | ''*'' | ''+'' | ''-'' | ''~'' | ''!'' );
function TCParser.unary_operator():Integer;
var
  _alt:array [0..255] of Integer;
  unary_operator_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    unary_operator_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 42) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:307:2: ( ''&'' | ''*'' | ''+'' | ''-'' | ''~'' | ''!'' )
        // C.g:
        begin
        if ( (input.LA(1)=52) or ((input.LA(1)>=54) and (input.LA(1)<=55)) or ((input.LA(1)>=63) and (input.LA(1)<=65)) ) then
        begin
            input.consume();
            state.errorRecovery:=false;state.failed:=false;
        end
        else 
        begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(0);
            end;
            raise EMismatchedSetException.CreateWithBitset(nil, input);
        end;


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 42, unary_operator_StartIndex);
        end;
    end;
end;// $ANTLR start "primary_expression"
// C.g:315:1: primary_expression : ( IDENTIFIER | constant | ''('' expression '')'' );
function TCParser.primary_expression():Integer;
var
  _alt:array [0..255] of Integer;
  primary_expression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    primary_expression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 43) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:C.g:316:2: ( IDENTIFIER | constant | ''('' expression '')'' )
        _alt[50]:=3;

        case input.LA(1) of
         IDENTIFIER: 
            begin
            _alt[50]:=1;
            end;
         HEX_LITERAL , 
         OCTAL_LITERAL , 
         DECIMAL_LITERAL , 
         CHARACTER_LITERAL , 
         STRING_LITERAL , 
         FLOATING_POINT_LITERAL: 
            begin
            _alt[50]:=2;
            end;
         48: 
            begin
            _alt[50]:=3;
            end;
        else
        begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(0);
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 50, 0, input);

        end;
        end;

        case (_alt[50]) of 
             1 :
                begin
                // C.g:316:4: IDENTIFIER
                begin
                match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_primary_expression1373); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // C.g:317:4: constant
                begin
                pushFollow(FOLLOW_constant_in_primary_expression1378);
                constant();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // C.g:318:4: ''('' expression '')''
                begin
                match(input,48,FOLLOW_48_in_primary_expression1383); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_expression_in_primary_expression1385);
                expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,49,FOLLOW_49_in_primary_expression1387); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 43, primary_expression_StartIndex);
        end;
    end;
end;// $ANTLR start "constant"
// C.g:321:1: constant : ( HEX_LITERAL | OCTAL_LITERAL | DECIMAL_LITERAL | CHARACTER_LITERAL | STRING_LITERAL | FLOATING_POINT_LITERAL );
function TCParser.constant():Integer;
var
  _alt:array [0..255] of Integer;
  constant_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    constant_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 44) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:322:5: ( HEX_LITERAL | OCTAL_LITERAL | DECIMAL_LITERAL | CHARACTER_LITERAL | STRING_LITERAL | FLOATING_POINT_LITERAL )
        // C.g:
        begin
        if ( ((input.LA(1)>=HEX_LITERAL) and (input.LA(1)<=FLOATING_POINT_LITERAL)) ) then
        begin
            input.consume();
            state.errorRecovery:=false;state.failed:=false;
        end
        else 
        begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(0);
            end;
            raise EMismatchedSetException.CreateWithBitset(nil, input);
        end;


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 44, constant_StartIndex);
        end;
    end;
end;// $ANTLR start "expression"
// C.g:332:1: expression : assignment_expression ( '','' assignment_expression )* ;
function TCParser.expression():Integer;
var
  _alt:array [0..255] of Integer;
  expression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    expression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 45) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:333:2: ( assignment_expression ( '','' assignment_expression )* )
        // C.g:333:4: assignment_expression ( '','' assignment_expression )*
        begin
        pushFollow(FOLLOW_assignment_expression_in_expression1462);
        assignment_expression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:C.g:333:26: ( '','' assignment_expression )*
        repeat 
            _alt[51]:=2;
            _LA[51,0] := input.LA(1);

            if ( ((_LA[51,0]=25)) ) then 
            begin
              _alt[51]:=1;
            end

            ;

            case (_alt[51]) of
        	 1 :
        	    begin
        	    // C.g:333:27: '','' assignment_expression
        	    begin
        	    match(input,25,FOLLOW_25_in_expression1465); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_assignment_expression_in_expression1467);
        	    assignment_expression();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 45, expression_StartIndex);
        end;
    end;
end;// $ANTLR start "constant_expression"
// C.g:336:1: constant_expression : conditional_expression ;
function TCParser.constant_expression():Integer;
var
  _alt:array [0..255] of Integer;
  constant_expression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    constant_expression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 46) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:337:2: ( conditional_expression )
        // C.g:337:4: conditional_expression
        begin
        pushFollow(FOLLOW_conditional_expression_in_constant_expression1480);
        conditional_expression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;

        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 46, constant_expression_StartIndex);
        end;
    end;
end;// $ANTLR start "assignment_expression"
// C.g:340:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );
function TCParser.assignment_expression():Integer;
var
  _alt:array [0..255] of Integer;
  assignment_expression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    assignment_expression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 47) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:C.g:341:2: ( lvalue assignment_operator assignment_expression | conditional_expression )
        _alt[52]:=2;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The CParser attribute is inherited via the parser, lexer, ...
         *}
        _alt[52] := getDfa52.predict(input);
        case (_alt[52]) of 
             1 :
                begin
                // C.g:341:4: lvalue assignment_operator assignment_expression
                begin
                pushFollow(FOLLOW_lvalue_in_assignment_expression1491);
                lvalue();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_assignment_operator_in_assignment_expression1493);
                assignment_operator();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_assignment_expression_in_assignment_expression1495);
                assignment_expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // C.g:342:4: conditional_expression
                begin
                pushFollow(FOLLOW_conditional_expression_in_assignment_expression1500);
                conditional_expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 47, assignment_expression_StartIndex);
        end;
    end;
end;// $ANTLR start "lvalue"
// C.g:345:1: lvalue : unary_expression ;
function TCParser.lvalue():Integer;
var
  _alt:array [0..255] of Integer;
  lvalue_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    lvalue_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 48) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:346:2: ( unary_expression )
        // C.g:346:4: unary_expression
        begin
        pushFollow(FOLLOW_unary_expression_in_lvalue1512);
        unary_expression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;

        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 48, lvalue_StartIndex);
        end;
    end;
end;// $ANTLR start "assignment_operator"
// C.g:349:1: assignment_operator : ( ''='' | ''*='' | ''/='' | ''%='' | ''+='' | ''-='' | ''<<='' | ''>>='' | ''&='' | ''^='' | ''|='' );
function TCParser.assignment_operator():Integer;
var
  _alt:array [0..255] of Integer;
  assignment_operator_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    assignment_operator_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 49) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:350:2: ( ''='' | ''*='' | ''/='' | ''%='' | ''+='' | ''-='' | ''<<='' | ''>>='' | ''&='' | ''^='' | ''|='' )
        // C.g:
        begin
        if ( (input.LA(1)=26) or ((input.LA(1)>=66) and (input.LA(1)<=75)) ) then
        begin
            input.consume();
            state.errorRecovery:=false;state.failed:=false;
        end
        else 
        begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(0);
            end;
            raise EMismatchedSetException.CreateWithBitset(nil, input);
        end;


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 49, assignment_operator_StartIndex);
        end;
    end;
end;// $ANTLR start "conditional_expression"
// C.g:363:1: conditional_expression : logical_or_expression ( ''?'' expression '':'' conditional_expression )? ;
function TCParser.conditional_expression():Integer;
var
  _alt:array [0..255] of Integer;
  conditional_expression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    conditional_expression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 50) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:364:2: ( logical_or_expression ( ''?'' expression '':'' conditional_expression )? )
        // C.g:364:4: logical_or_expression ( ''?'' expression '':'' conditional_expression )?
        begin
        pushFollow(FOLLOW_logical_or_expression_in_conditional_expression1584);
        logical_or_expression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // block:C.g:364:26: ( ''?'' expression '':'' conditional_expression )?
        _alt[53]:=2;
        _LA[53,0] := input.LA(1);

        if ( ((_LA[53,0]=76)) ) then 
        begin
          _alt[53]:=1;
        end
        ;
        case (_alt[53]) of
             1 :
                begin
                // C.g:364:27: ''?'' expression '':'' conditional_expression
                begin
                match(input,76,FOLLOW_76_in_conditional_expression1587); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_expression_in_conditional_expression1589);
                expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,44,FOLLOW_44_in_conditional_expression1591); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_conditional_expression_in_conditional_expression1593);
                conditional_expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 50, conditional_expression_StartIndex);
        end;
    end;
end;// $ANTLR start "logical_or_expression"
// C.g:367:1: logical_or_expression : logical_and_expression ( ''||'' logical_and_expression )* ;
function TCParser.logical_or_expression():Integer;
var
  _alt:array [0..255] of Integer;
  logical_or_expression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    logical_or_expression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 51) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:368:2: ( logical_and_expression ( ''||'' logical_and_expression )* )
        // C.g:368:4: logical_and_expression ( ''||'' logical_and_expression )*
        begin
        pushFollow(FOLLOW_logical_and_expression_in_logical_or_expression1606);
        logical_and_expression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:C.g:368:27: ( ''||'' logical_and_expression )*
        repeat 
            _alt[54]:=2;
            {** The code to initiate execution of a cyclic DFA; this is used
             *  in the rule to predict an alt just like the fixed DFA case.
             *  The CParser attribute is inherited via the parser, lexer, ...
             *}
            _alt[54] := getDfa54.predict(input);
            case (_alt[54]) of
        	 1 :
        	    begin
        	    // C.g:368:28: ''||'' logical_and_expression
        	    begin
        	    match(input,77,FOLLOW_77_in_logical_or_expression1609); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_logical_and_expression_in_logical_or_expression1611);
        	    logical_and_expression();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 51, logical_or_expression_StartIndex);
        end;
    end;
end;// $ANTLR start "logical_and_expression"
// C.g:371:1: logical_and_expression : inclusive_or_expression ( ''&&'' inclusive_or_expression )* ;
function TCParser.logical_and_expression():Integer;
var
  _alt:array [0..255] of Integer;
  logical_and_expression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    logical_and_expression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 52) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:372:2: ( inclusive_or_expression ( ''&&'' inclusive_or_expression )* )
        // C.g:372:4: inclusive_or_expression ( ''&&'' inclusive_or_expression )*
        begin
        pushFollow(FOLLOW_inclusive_or_expression_in_logical_and_expression1624);
        inclusive_or_expression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:C.g:372:28: ( ''&&'' inclusive_or_expression )*
        repeat 
            _alt[55]:=2;
            {** The code to initiate execution of a cyclic DFA; this is used
             *  in the rule to predict an alt just like the fixed DFA case.
             *  The CParser attribute is inherited via the parser, lexer, ...
             *}
            _alt[55] := getDfa55.predict(input);
            case (_alt[55]) of
        	 1 :
        	    begin
        	    // C.g:372:29: ''&&'' inclusive_or_expression
        	    begin
        	    match(input,78,FOLLOW_78_in_logical_and_expression1627); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_inclusive_or_expression_in_logical_and_expression1629);
        	    inclusive_or_expression();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 52, logical_and_expression_StartIndex);
        end;
    end;
end;// $ANTLR start "inclusive_or_expression"
// C.g:375:1: inclusive_or_expression : exclusive_or_expression ( ''|'' exclusive_or_expression )* ;
function TCParser.inclusive_or_expression():Integer;
var
  _alt:array [0..255] of Integer;
  inclusive_or_expression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    inclusive_or_expression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 53) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:376:2: ( exclusive_or_expression ( ''|'' exclusive_or_expression )* )
        // C.g:376:4: exclusive_or_expression ( ''|'' exclusive_or_expression )*
        begin
        pushFollow(FOLLOW_exclusive_or_expression_in_inclusive_or_expression1642);
        exclusive_or_expression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:C.g:376:28: ( ''|'' exclusive_or_expression )*
        repeat 
            _alt[56]:=2;
            {** The code to initiate execution of a cyclic DFA; this is used
             *  in the rule to predict an alt just like the fixed DFA case.
             *  The CParser attribute is inherited via the parser, lexer, ...
             *}
            _alt[56] := getDfa56.predict(input);
            case (_alt[56]) of
        	 1 :
        	    begin
        	    // C.g:376:29: ''|'' exclusive_or_expression
        	    begin
        	    match(input,79,FOLLOW_79_in_inclusive_or_expression1645); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_exclusive_or_expression_in_inclusive_or_expression1647);
        	    exclusive_or_expression();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 53, inclusive_or_expression_StartIndex);
        end;
    end;
end;// $ANTLR start "exclusive_or_expression"
// C.g:379:1: exclusive_or_expression : and_expression ( ''^'' and_expression )* ;
function TCParser.exclusive_or_expression():Integer;
var
  _alt:array [0..255] of Integer;
  exclusive_or_expression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    exclusive_or_expression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 54) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:380:2: ( and_expression ( ''^'' and_expression )* )
        // C.g:380:4: and_expression ( ''^'' and_expression )*
        begin
        pushFollow(FOLLOW_and_expression_in_exclusive_or_expression1660);
        and_expression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:C.g:380:19: ( ''^'' and_expression )*
        repeat 
            _alt[57]:=2;
            {** The code to initiate execution of a cyclic DFA; this is used
             *  in the rule to predict an alt just like the fixed DFA case.
             *  The CParser attribute is inherited via the parser, lexer, ...
             *}
            _alt[57] := getDfa57.predict(input);
            case (_alt[57]) of
        	 1 :
        	    begin
        	    // C.g:380:20: ''^'' and_expression
        	    begin
        	    match(input,80,FOLLOW_80_in_exclusive_or_expression1663); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_and_expression_in_exclusive_or_expression1665);
        	    and_expression();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 54, exclusive_or_expression_StartIndex);
        end;
    end;
end;// $ANTLR start "and_expression"
// C.g:383:1: and_expression : equality_expression ( ''&'' equality_expression )* ;
function TCParser.and_expression():Integer;
var
  _alt:array [0..255] of Integer;
  and_expression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    and_expression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 55) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:384:2: ( equality_expression ( ''&'' equality_expression )* )
        // C.g:384:4: equality_expression ( ''&'' equality_expression )*
        begin
        pushFollow(FOLLOW_equality_expression_in_and_expression1678);
        equality_expression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:C.g:384:24: ( ''&'' equality_expression )*
        repeat 
            _alt[58]:=2;
            {** The code to initiate execution of a cyclic DFA; this is used
             *  in the rule to predict an alt just like the fixed DFA case.
             *  The CParser attribute is inherited via the parser, lexer, ...
             *}
            _alt[58] := getDfa58.predict(input);
            case (_alt[58]) of
        	 1 :
        	    begin
        	    // C.g:384:25: ''&'' equality_expression
        	    begin
        	    match(input,63,FOLLOW_63_in_and_expression1681); 
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;
        	    pushFollow(FOLLOW_equality_expression_in_and_expression1683);
        	    equality_expression();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 55, and_expression_StartIndex);
        end;
    end;
end;// $ANTLR start "equality_expression"
// C.g:386:1: equality_expression : relational_expression ( ( ''=='' | ''!='' ) relational_expression )* ;
function TCParser.equality_expression():Integer;
var
  _alt:array [0..255] of Integer;
  equality_expression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    equality_expression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 56) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:387:2: ( relational_expression ( ( ''=='' | ''!='' ) relational_expression )* )
        // C.g:387:4: relational_expression ( ( ''=='' | ''!='' ) relational_expression )*
        begin
        pushFollow(FOLLOW_relational_expression_in_equality_expression1695);
        relational_expression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:C.g:387:26: ( ( ''=='' | ''!='' ) relational_expression )*
        repeat 
            _alt[59]:=2;
            {** The code to initiate execution of a cyclic DFA; this is used
             *  in the rule to predict an alt just like the fixed DFA case.
             *  The CParser attribute is inherited via the parser, lexer, ...
             *}
            _alt[59] := getDfa59.predict(input);
            case (_alt[59]) of
        	 1 :
        	    begin
        	    // C.g:387:27: ( ''=='' | ''!='' ) relational_expression
        	    begin
        	    if ( ((input.LA(1)>=81) and (input.LA(1)<=82)) ) then
        	    begin
        	        input.consume();
        	        state.errorRecovery:=false;state.failed:=false;
        	    end
        	    else 
        	    begin
        	        if (state.backtracking>0) then 
        	        begin 
        	          state.failed:=true; 
        	          Exit(0);
        	        end;
        	        raise EMismatchedSetException.CreateWithBitset(nil, input);
        	    end;

        	    pushFollow(FOLLOW_relational_expression_in_equality_expression1704);
        	    relational_expression();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 56, equality_expression_StartIndex);
        end;
    end;
end;// $ANTLR start "relational_expression"
// C.g:390:1: relational_expression : shift_expression ( ( ''<'' | ''>'' | ''<='' | ''>='' ) shift_expression )* ;
function TCParser.relational_expression():Integer;
var
  _alt:array [0..255] of Integer;
  relational_expression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    relational_expression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 57) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:391:2: ( shift_expression ( ( ''<'' | ''>'' | ''<='' | ''>='' ) shift_expression )* )
        // C.g:391:4: shift_expression ( ( ''<'' | ''>'' | ''<='' | ''>='' ) shift_expression )*
        begin
        pushFollow(FOLLOW_shift_expression_in_relational_expression1717);
        shift_expression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:C.g:391:21: ( ( ''<'' | ''>'' | ''<='' | ''>='' ) shift_expression )*
        repeat 
            _alt[60]:=2;
            {** The code to initiate execution of a cyclic DFA; this is used
             *  in the rule to predict an alt just like the fixed DFA case.
             *  The CParser attribute is inherited via the parser, lexer, ...
             *}
            _alt[60] := getDfa60.predict(input);
            case (_alt[60]) of
        	 1 :
        	    begin
        	    // C.g:391:22: ( ''<'' | ''>'' | ''<='' | ''>='' ) shift_expression
        	    begin
        	    if ( ((input.LA(1)>=83) and (input.LA(1)<=86)) ) then
        	    begin
        	        input.consume();
        	        state.errorRecovery:=false;state.failed:=false;
        	    end
        	    else 
        	    begin
        	        if (state.backtracking>0) then 
        	        begin 
        	          state.failed:=true; 
        	          Exit(0);
        	        end;
        	        raise EMismatchedSetException.CreateWithBitset(nil, input);
        	    end;

        	    pushFollow(FOLLOW_shift_expression_in_relational_expression1730);
        	    shift_expression();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 57, relational_expression_StartIndex);
        end;
    end;
end;// $ANTLR start "shift_expression"
// C.g:394:1: shift_expression : additive_expression ( ( ''<<'' | ''>>'' ) additive_expression )* ;
function TCParser.shift_expression():Integer;
var
  _alt:array [0..255] of Integer;
  shift_expression_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    shift_expression_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 58) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:395:2: ( additive_expression ( ( ''<<'' | ''>>'' ) additive_expression )* )
        // C.g:395:4: additive_expression ( ( ''<<'' | ''>>'' ) additive_expression )*
        begin
        pushFollow(FOLLOW_additive_expression_in_shift_expression1743);
        additive_expression();

        state._fsp:=state._fsp-1;
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:C.g:395:24: ( ( ''<<'' | ''>>'' ) additive_expression )*
        repeat 
            _alt[61]:=2;
            {** The code to initiate execution of a cyclic DFA; this is used
             *  in the rule to predict an alt just like the fixed DFA case.
             *  The CParser attribute is inherited via the parser, lexer, ...
             *}
            _alt[61] := getDfa61.predict(input);
            case (_alt[61]) of
        	 1 :
        	    begin
        	    // C.g:395:25: ( ''<<'' | ''>>'' ) additive_expression
        	    begin
        	    if ( ((input.LA(1)>=87) and (input.LA(1)<=88)) ) then
        	    begin
        	        input.consume();
        	        state.errorRecovery:=false;state.failed:=false;
        	    end
        	    else 
        	    begin
        	        if (state.backtracking>0) then 
        	        begin 
        	          state.failed:=true; 
        	          Exit(0);
        	        end;
        	        raise EMismatchedSetException.CreateWithBitset(nil, input);
        	    end;

        	    pushFollow(FOLLOW_additive_expression_in_shift_expression1752);
        	    additive_expression();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 58, shift_expression_StartIndex);
        end;
    end;
end;// $ANTLR start "statement"
// C.g:400:1: statement : ( labeled_statement | compound_statement | expression_statement | selection_statement | iteration_statement | jump_statement );
function TCParser.statement():Integer;
var
  _alt:array [0..255] of Integer;
  statement_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    statement_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 59) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:C.g:401:2: ( labeled_statement | compound_statement | expression_statement | selection_statement | iteration_statement | jump_statement )
        _alt[62]:=6;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The CParser attribute is inherited via the parser, lexer, ...
         *}
        _alt[62] := getDfa62.predict(input);
        case (_alt[62]) of 
             1 :
                begin
                // C.g:401:4: labeled_statement
                begin
                pushFollow(FOLLOW_labeled_statement_in_statement1767);
                labeled_statement();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // C.g:402:4: compound_statement
                begin
                pushFollow(FOLLOW_compound_statement_in_statement1772);
                compound_statement();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // C.g:403:4: expression_statement
                begin
                pushFollow(FOLLOW_expression_statement_in_statement1777);
                expression_statement();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             4 :
                begin
                // C.g:404:4: selection_statement
                begin
                pushFollow(FOLLOW_selection_statement_in_statement1782);
                selection_statement();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             5 :
                begin
                // C.g:405:4: iteration_statement
                begin
                pushFollow(FOLLOW_iteration_statement_in_statement1787);
                iteration_statement();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             6 :
                begin
                // C.g:406:4: jump_statement
                begin
                pushFollow(FOLLOW_jump_statement_in_statement1792);
                jump_statement();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 59, statement_StartIndex);
        end;
    end;
end;// $ANTLR start "labeled_statement"
// C.g:409:1: labeled_statement : ( IDENTIFIER '':'' statement | ''case'' constant_expression '':'' statement | ''default'' '':'' statement );
function TCParser.labeled_statement():Integer;
var
  _alt:array [0..255] of Integer;
  labeled_statement_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    labeled_statement_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 60) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:C.g:410:2: ( IDENTIFIER '':'' statement | ''case'' constant_expression '':'' statement | ''default'' '':'' statement )
        _alt[63]:=3;

        case input.LA(1) of
         IDENTIFIER: 
            begin
            _alt[63]:=1;
            end;
         89: 
            begin
            _alt[63]:=2;
            end;
         90: 
            begin
            _alt[63]:=3;
            end;
        else
        begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(0);
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 63, 0, input);

        end;
        end;

        case (_alt[63]) of 
             1 :
                begin
                // C.g:410:4: IDENTIFIER '':'' statement
                begin
                match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_labeled_statement1803); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,44,FOLLOW_44_in_labeled_statement1805); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_statement_in_labeled_statement1807);
                statement();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // C.g:411:4: ''case'' constant_expression '':'' statement
                begin
                match(input,89,FOLLOW_89_in_labeled_statement1812); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_constant_expression_in_labeled_statement1814);
                constant_expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,44,FOLLOW_44_in_labeled_statement1816); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_statement_in_labeled_statement1818);
                statement();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // C.g:412:4: ''default'' '':'' statement
                begin
                match(input,90,FOLLOW_90_in_labeled_statement1823); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,44,FOLLOW_44_in_labeled_statement1825); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_statement_in_labeled_statement1827);
                statement();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 60, labeled_statement_StartIndex);
        end;
    end;
end;// $ANTLR start "compound_statement"
// C.g:415:1: compound_statement : ''{'' ( declaration )* ( statement_list )? ''}'' ;
function TCParser.compound_statement():Integer;
var
  _alt:array [0..255] of Integer;
  compound_statement_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    Symbols_stack.push(TSymbols_scope.Create);

    compound_statement_StartIndex := input.index();

      (TSymbols_scope(Symbols_stack.peek())).types := TJclStrHashSet.Create(16);

    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 61) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:420:2: ( ''{'' ( declaration )* ( statement_list )? ''}'' )
        // C.g:420:4: ''{'' ( declaration )* ( statement_list )? ''}''
        begin
        match(input,40,FOLLOW_40_in_compound_statement1849); 
        if (state.failed) then
        begin
          Exit;
        end;
        // closureBlock:C.g:420:8: ( declaration )*
        repeat 
            _alt[64]:=2;
            {** The code to initiate execution of a cyclic DFA; this is used
             *  in the rule to predict an alt just like the fixed DFA case.
             *  The CParser attribute is inherited via the parser, lexer, ...
             *}
            _alt[64] := getDfa64.predict(input);
            case (_alt[64]) of
        	 1 :
        	    begin
        	    // C.g:0:0: declaration
        	    begin
        	    pushFollow(FOLLOW_declaration_in_compound_statement1851);
        	    declaration();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    break;
            end;
         until (false);

        // block:C.g:420:21: ( statement_list )?
        _alt[65]:=2;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The CParser attribute is inherited via the parser, lexer, ...
         *}
        _alt[65] := getDfa65.predict(input);
        case (_alt[65]) of
             1 :
                begin
                // C.g:0:0: statement_list
                begin
                pushFollow(FOLLOW_statement_list_in_compound_statement1854);
                statement_list();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;

        match(input,41,FOLLOW_41_in_compound_statement1857); 
        if (state.failed) then
        begin
          Exit;
        end;

        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 61, compound_statement_StartIndex);
        end;
        Symbols_stack.pop().Free;

    end;
end;// $ANTLR start "statement_list"
// C.g:423:1: statement_list : ( statement )+ ;
function TCParser.statement_list():Integer;
var
  _alt:array [0..255] of Integer;
  statement_list_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    statement_list_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 62) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlockSingleAlt:C.g:424:2: ( ( statement )+ )
        // C.g:424:4: ( statement )+
        begin
        // positiveClosureBlock:C.g:424:4: ( statement )+
        _cnt[66]:=0;
        repeat 
            _alt[66]:=2;
            //before decision
            {** The code to initiate execution of a cyclic DFA; this is used
             *  in the rule to predict an alt just like the fixed DFA case.
             *  The CParser attribute is inherited via the parser, lexer, ...
             *}
            _alt[66] := getDfa66.predict(input);
            //after decision
            case (_alt[66]) of 
        	 1 :
        	    begin
        	    // C.g:0:0: statement
        	    begin
        	    pushFollow(FOLLOW_statement_in_statement_list1868);
        	    statement();

        	    state._fsp:=state._fsp-1;
        	    if (state.failed) then
        	    begin
        	      Exit;
        	    end;

        	    end;
        	    end;

        	else 
        	    begin
        	      if ( _cnt[66] >= 1 ) then
        	        break ;
        	      if (state.backtracking>0) then 
        	      begin 
        	        state.failed:=true; 
        	        Exit(0);
        	      end;
        	        raise EEarlyExitException.CreateWithDecision(66, input);
                end;
            end;
            _cnt[66]:=_cnt[66]+1;
        until (false);


        end;

    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 62, statement_list_StartIndex);
        end;
    end;
end;// $ANTLR start "expression_statement"
// C.g:427:1: expression_statement : ( '';'' | expression '';'' );
function TCParser.expression_statement():Integer;
var
  _alt:array [0..255] of Integer;
  expression_statement_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    expression_statement_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 63) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:C.g:428:2: ( '';'' | expression '';'' )
        _alt[67]:=2;
        _LA[67,0] := input.LA(1);

        if ( ((_LA[67,0]=24)) ) then 
        begin
          _alt[67]:=1;
        end
        else if ( (((_LA[67,0]>=IDENTIFIER) and 
        ( _LA[67,0]<=FLOATING_POINT_LITERAL)) or (_LA[67,0]=48) or (_LA[67,0]=52) or ((_LA[67,0]>=54) and 
        ( _LA[67,0]<=55)) or ((_LA[67,0]>=58) and 
        ( _LA[67,0]<=60)) or ((_LA[67,0]>=63) and 
        ( _LA[67,0]<=65))) ) then 
        begin
          _alt[67]:=2;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(0);
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 67, 0, input);    

        end;
        case (_alt[67]) of 
             1 :
                begin
                // C.g:428:4: '';''
                begin
                match(input,24,FOLLOW_24_in_expression_statement1880); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // C.g:429:4: expression '';''
                begin
                pushFollow(FOLLOW_expression_in_expression_statement1885);
                expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,24,FOLLOW_24_in_expression_statement1887); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 63, expression_statement_StartIndex);
        end;
    end;
end;// $ANTLR start "selection_statement"
// C.g:432:1: selection_statement : ( ''if'' ''('' expression '')'' statement ( options {k=1; backtrack=false; } : ''else'' statement )? | ''switch'' ''('' expression '')'' statement );
function TCParser.selection_statement():Integer;
var
  _alt:array [0..255] of Integer;
  selection_statement_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    selection_statement_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 64) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:C.g:433:2: ( ''if'' ''('' expression '')'' statement ( options {k=1; backtrack=false; } : ''else'' statement )? | ''switch'' ''('' expression '')'' statement )
        _alt[69]:=2;
        _LA[69,0] := input.LA(1);

        if ( ((_LA[69,0]=91)) ) then 
        begin
          _alt[69]:=1;
        end
        else if ( ((_LA[69,0]=93)) ) then 
        begin
          _alt[69]:=2;
        end
        else begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(0);
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 69, 0, input);    

        end;
        case (_alt[69]) of 
             1 :
                begin
                // C.g:433:4: ''if'' ''('' expression '')'' statement ( options {k=1; backtrack=false; } : ''else'' statement )?
                begin
                match(input,91,FOLLOW_91_in_selection_statement1898); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,48,FOLLOW_48_in_selection_statement1900); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_expression_in_selection_statement1902);
                expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,49,FOLLOW_49_in_selection_statement1904); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_statement_in_selection_statement1906);
                statement();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:C.g:433:38: ( options {k=1; backtrack=false; } : ''else'' statement )?
                _alt[68]:=2;
                _LA[68,0] := input.LA(1);

                if ( ((_LA[68,0]=92)) ) then 
                begin
                  _LA[68,1] := input.LA(2);

                  if ( (true) ) then 
                  begin
                    _alt[68]:=1;
                  end
                  ;
                end
                ;
                case (_alt[68]) of
                     1 :
                        begin
                        // C.g:433:71: ''else'' statement
                        begin
                        match(input,92,FOLLOW_92_in_selection_statement1921); 
                        if (state.failed) then
                        begin
                          Exit;
                        end;
                        pushFollow(FOLLOW_statement_in_selection_statement1923);
                        statement();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;


                end;
                end;
             2 :
                begin
                // C.g:434:4: ''switch'' ''('' expression '')'' statement
                begin
                match(input,93,FOLLOW_93_in_selection_statement1930); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,48,FOLLOW_48_in_selection_statement1932); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_expression_in_selection_statement1934);
                expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,49,FOLLOW_49_in_selection_statement1936); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_statement_in_selection_statement1938);
                statement();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 64, selection_statement_StartIndex);
        end;
    end;
end;// $ANTLR start "iteration_statement"
// C.g:437:1: iteration_statement : ( ''while'' ''('' expression '')'' statement | ''do'' statement ''while'' ''('' expression '')'' '';'' | ''for'' ''('' expression_statement expression_statement ( expression )? '')'' statement );
function TCParser.iteration_statement():Integer;
var
  _alt:array [0..255] of Integer;
  iteration_statement_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    iteration_statement_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 65) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:C.g:438:2: ( ''while'' ''('' expression '')'' statement | ''do'' statement ''while'' ''('' expression '')'' '';'' | ''for'' ''('' expression_statement expression_statement ( expression )? '')'' statement )
        _alt[71]:=3;

        case input.LA(1) of
         94: 
            begin
            _alt[71]:=1;
            end;
         95: 
            begin
            _alt[71]:=2;
            end;
         96: 
            begin
            _alt[71]:=3;
            end;
        else
        begin
            if (state.backtracking>0) then 
            begin 
              state.failed:=true; 
              Exit(0);
            end;
            //Todo:raise ENoViableAltException.CreateNoViable(''
            raise ENoViableAltException.CreateNoViable('ENoViableAltException'
            , 71, 0, input);

        end;
        end;

        case (_alt[71]) of 
             1 :
                begin
                // C.g:438:4: ''while'' ''('' expression '')'' statement
                begin
                match(input,94,FOLLOW_94_in_iteration_statement1949); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,48,FOLLOW_48_in_iteration_statement1951); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_expression_in_iteration_statement1953);
                expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,49,FOLLOW_49_in_iteration_statement1955); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_statement_in_iteration_statement1957);
                statement();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // C.g:439:4: ''do'' statement ''while'' ''('' expression '')'' '';''
                begin
                match(input,95,FOLLOW_95_in_iteration_statement1962); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_statement_in_iteration_statement1964);
                statement();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,94,FOLLOW_94_in_iteration_statement1966); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,48,FOLLOW_48_in_iteration_statement1968); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_expression_in_iteration_statement1970);
                expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,49,FOLLOW_49_in_iteration_statement1972); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,24,FOLLOW_24_in_iteration_statement1974); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // C.g:440:4: ''for'' ''('' expression_statement expression_statement ( expression )? '')'' statement
                begin
                match(input,96,FOLLOW_96_in_iteration_statement1979); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,48,FOLLOW_48_in_iteration_statement1981); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_expression_statement_in_iteration_statement1983);
                expression_statement();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_expression_statement_in_iteration_statement1985);
                expression_statement();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                // block:C.g:440:56: ( expression )?
                _alt[70]:=2;
                _LA[70,0] := input.LA(1);

                if ( (((_LA[70,0]>=IDENTIFIER) and 
                ( _LA[70,0]<=FLOATING_POINT_LITERAL)) or (_LA[70,0]=48) or (_LA[70,0]=52) or ((_LA[70,0]>=54) and 
                ( _LA[70,0]<=55)) or ((_LA[70,0]>=58) and 
                ( _LA[70,0]<=60)) or ((_LA[70,0]>=63) and 
                ( _LA[70,0]<=65))) ) then 
                begin
                  _alt[70]:=1;
                end
                ;
                case (_alt[70]) of
                     1 :
                        begin
                        // C.g:0:0: expression
                        begin
                        pushFollow(FOLLOW_expression_in_iteration_statement1987);
                        expression();

                        state._fsp:=state._fsp-1;
                        if (state.failed) then
                        begin
                          Exit;
                        end;

                        end;
                        end;

                end;

                match(input,49,FOLLOW_49_in_iteration_statement1990); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_statement_in_iteration_statement1992);
                statement();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 65, iteration_statement_StartIndex);
        end;
    end;
end;// $ANTLR start "jump_statement"
// C.g:443:1: jump_statement : ( ''goto'' IDENTIFIER '';'' | ''continue'' '';'' | ''break'' '';'' | ''return'' '';'' | ''return'' expression '';'' );
function TCParser.jump_statement():Integer;
var
  _alt:array [0..255] of Integer;
  jump_statement_StartIndex:Integer;
  root:array [0..255] of ITree;

  _first_:array [0..255] of ITree;

  _save_last_:array [0..255] of ITree;

  _Stream:array [0..255] of IRewriteRuleElementStream;

  _last:ITree;

begin
    jump_statement_StartIndex := input.index();
    try 
      try
        if ( state.backtracking>0) and alreadyParsedRule(input, 66) then 
        begin  
          Result:= 0; 
          Exit;
        end;
        // ruleBlock:C.g:444:2: ( ''goto'' IDENTIFIER '';'' | ''continue'' '';'' | ''break'' '';'' | ''return'' '';'' | ''return'' expression '';'' )
        _alt[72]:=5;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The CParser attribute is inherited via the parser, lexer, ...
         *}
        _alt[72] := getDfa72.predict(input);
        case (_alt[72]) of 
             1 :
                begin
                // C.g:444:4: ''goto'' IDENTIFIER '';''
                begin
                match(input,97,FOLLOW_97_in_jump_statement2003); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_jump_statement2005); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,24,FOLLOW_24_in_jump_statement2007); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             2 :
                begin
                // C.g:445:4: ''continue'' '';''
                begin
                match(input,98,FOLLOW_98_in_jump_statement2012); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,24,FOLLOW_24_in_jump_statement2014); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             3 :
                begin
                // C.g:446:4: ''break'' '';''
                begin
                match(input,99,FOLLOW_99_in_jump_statement2019); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,24,FOLLOW_24_in_jump_statement2021); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             4 :
                begin
                // C.g:447:4: ''return'' '';''
                begin
                match(input,100,FOLLOW_100_in_jump_statement2026); 
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,24,FOLLOW_24_in_jump_statement2028); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;
             5 :
                begin
                // C.g:448:4: ''return'' expression '';''
                begin
                match(input,100,FOLLOW_100_in_jump_statement2033); 
                if (state.failed) then
                begin
                  Exit;
                end;
                pushFollow(FOLLOW_expression_in_jump_statement2035);
                expression();

                state._fsp:=state._fsp-1;
                if (state.failed) then
                begin
                  Exit;
                end;
                match(input,24,FOLLOW_24_in_jump_statement2037); 
                if (state.failed) then
                begin
                  Exit;
                end;

                end;
                end;

        end;
    
    except on E:ERecognitionException do
      begin
        reportError(E);
        recover(input,E);
      end;
    end;
    finally 
        if ( state.backtracking>0 ) then
        begin
          memoize(input, 66, jump_statement_StartIndex);
        end;
    end;
end;// $ANTLR start "synpred2_C"
function TCParser.synpred2_C_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:C.g:63:6: ( declaration_specifiers )
    // C.g:63:6: declaration_specifiers
    begin
    pushFollow(FOLLOW_declaration_specifiers_in_synpred2_C108);
    declaration_specifiers();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred2_C// $ANTLR start "synpred4_C"
function TCParser.synpred4_C_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:C.g:63:4: ( ( declaration_specifiers )? declarator ( declaration )* ''{'' )
    // C.g:63:6: ( declaration_specifiers )? declarator ( declaration )* ''{''
    begin
    // block:C.g:63:6: ( declaration_specifiers )?
    _alt[73]:=2;
    {** The code to initiate execution of a cyclic DFA; this is used
     *  in the rule to predict an alt just like the fixed DFA case.
     *  The CParser attribute is inherited via the parser, lexer, ...
     *}
    _alt[73] := getDfa73.predict(input);
    case (_alt[73]) of
         1 :
            begin
            // C.g:0:0: declaration_specifiers
            begin
            pushFollow(FOLLOW_declaration_specifiers_in_synpred4_C108);
            declaration_specifiers();

            state._fsp:=state._fsp-1;
            if (state.failed) then
            begin
              Exit;
            end;

            end;
            end;

    end;

    pushFollow(FOLLOW_declarator_in_synpred4_C111);
    declarator();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;
    // closureBlock:C.g:63:41: ( declaration )*
    repeat 
        _alt[74]:=2;
        {** The code to initiate execution of a cyclic DFA; this is used
         *  in the rule to predict an alt just like the fixed DFA case.
         *  The CParser attribute is inherited via the parser, lexer, ...
         *}
        _alt[74] := getDfa74.predict(input);
        case (_alt[74]) of
    	 1 :
    	    begin
    	    // C.g:0:0: declaration
    	    begin
    	    pushFollow(FOLLOW_declaration_in_synpred4_C113);
    	    declaration();

    	    state._fsp:=state._fsp-1;
    	    if (state.failed) then
    	    begin
    	      Exit;
    	    end;

    	    end;
    	    end;

    	else 
    	    break;
        end;
     until (false);

    match(input,40,FOLLOW_40_in_synpred4_C116); 
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred4_C// $ANTLR start "synpred5_C"
function TCParser.synpred5_C_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:C.g:72:4: ( declaration_specifiers )
    // C.g:72:4: declaration_specifiers
    begin
    pushFollow(FOLLOW_declaration_specifiers_in_synpred5_C148);
    declaration_specifiers();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred5_C// $ANTLR start "synpred8_C"
function TCParser.synpred8_C_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:C.g:85:14: ( declaration_specifiers )
    // C.g:85:14: declaration_specifiers
    begin
    pushFollow(FOLLOW_declaration_specifiers_in_synpred8_C197);
    declaration_specifiers();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred8_C// $ANTLR start "synpred12_C"
function TCParser.synpred12_C_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:C.g:92:7: ( type_specifier )
    // C.g:92:7: type_specifier
    begin
    pushFollow(FOLLOW_type_specifier_in_synpred12_C243);
    type_specifier();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred12_C// $ANTLR start "synpred35_C"
function TCParser.synpred35_C_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:C.g:156:23: ( type_specifier )
    // C.g:156:23: type_specifier
    begin
    pushFollow(FOLLOW_type_specifier_in_synpred35_C523);
    type_specifier();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred35_C// $ANTLR start "synpred45_C"
function TCParser.synpred45_C_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:C.g:189:4: ( ( pointer )? direct_declarator )
    // C.g:189:4: ( pointer )? direct_declarator
    begin
    // block:C.g:189:4: ( pointer )?
    _alt[79]:=2;
    _LA[79,0] := input.LA(1);

    if ( ((_LA[79,0]=52)) ) then 
    begin
      _alt[79]:=1;
    end
    ;
    case (_alt[79]) of
         1 :
            begin
            // C.g:0:0: pointer
            begin
            pushFollow(FOLLOW_pointer_in_synpred45_C676);
            pointer();

            state._fsp:=state._fsp-1;
            if (state.failed) then
            begin
              Exit;
            end;

            end;
            end;

    end;

    pushFollow(FOLLOW_direct_declarator_in_synpred45_C679);
    direct_declarator();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred45_C// $ANTLR start "synpred47_C"
function TCParser.synpred47_C_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:C.g:204:9: ( declarator_suffix )
    // C.g:204:9: declarator_suffix
    begin
    pushFollow(FOLLOW_declarator_suffix_in_synpred47_C728);
    declarator_suffix();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred47_C// $ANTLR start "synpred50_C"
function TCParser.synpred50_C_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:C.g:210:9: ( ''('' parameter_type_list '')'' )
    // C.g:210:9: ''('' parameter_type_list '')''
    begin
    match(input,48,FOLLOW_48_in_synpred50_C768); 
    if (state.failed) then
    begin
      Exit;
    end;
    pushFollow(FOLLOW_parameter_type_list_in_synpred50_C770);
    parameter_type_list();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;
    match(input,49,FOLLOW_49_in_synpred50_C772); 
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred50_C// $ANTLR start "synpred51_C"
function TCParser.synpred51_C_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:C.g:211:9: ( ''('' identifier_list '')'' )
    // C.g:211:9: ''('' identifier_list '')''
    begin
    match(input,48,FOLLOW_48_in_synpred51_C782); 
    if (state.failed) then
    begin
      Exit;
    end;
    pushFollow(FOLLOW_identifier_list_in_synpred51_C784);
    identifier_list();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;
    match(input,49,FOLLOW_49_in_synpred51_C786); 
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred51_C// $ANTLR start "synpred52_C"
function TCParser.synpred52_C_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:C.g:216:8: ( type_qualifier )
    // C.g:216:8: type_qualifier
    begin
    pushFollow(FOLLOW_type_qualifier_in_synpred52_C811);
    type_qualifier();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred52_C// $ANTLR start "synpred53_C"
function TCParser.synpred53_C_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:C.g:216:24: ( pointer )
    // C.g:216:24: pointer
    begin
    pushFollow(FOLLOW_pointer_in_synpred53_C814);
    pointer();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred53_C// $ANTLR start "synpred54_C"
function TCParser.synpred54_C_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:C.g:216:4: ( ''*'' ( type_qualifier )+ ( pointer )? )
    // C.g:216:4: ''*'' ( type_qualifier )+ ( pointer )?
    begin
    match(input,52,FOLLOW_52_in_synpred54_C809); 
    if (state.failed) then
    begin
      Exit;
    end;
    // positiveClosureBlock:C.g:216:8: ( type_qualifier )+
    _cnt[80]:=0;
    repeat 
        _alt[80]:=2;
        //before decision
        _LA[80,0] := input.LA(1);

        if ( (((_LA[80,0]>=46) and 
        ( _LA[80,0]<=47))) ) then 
        begin
          _alt[80]:=1;
        end

        ;

        //after decision
        case (_alt[80]) of 
    	 1 :
    	    begin
    	    // C.g:0:0: type_qualifier
    	    begin
    	    pushFollow(FOLLOW_type_qualifier_in_synpred54_C811);
    	    type_qualifier();

    	    state._fsp:=state._fsp-1;
    	    if (state.failed) then
    	    begin
    	      Exit;
    	    end;

    	    end;
    	    end;

    	else 
    	    begin
    	      if ( _cnt[80] >= 1 ) then
    	        break ;
    	      if (state.backtracking>0) then 
    	      begin 
    	        state.failed:=true; 
    	        Exit(0);
    	      end;
    	        raise EEarlyExitException.CreateWithDecision(80, input);
            end;
        end;
        _cnt[80]:=_cnt[80]+1;
    until (false);

    // block:C.g:216:24: ( pointer )?
    _alt[81]:=2;
    _LA[81,0] := input.LA(1);

    if ( ((_LA[81,0]=52)) ) then 
    begin
      _alt[81]:=1;
    end
    ;
    case (_alt[81]) of
         1 :
            begin
            // C.g:0:0: pointer
            begin
            pushFollow(FOLLOW_pointer_in_synpred54_C814);
            pointer();

            state._fsp:=state._fsp-1;
            if (state.failed) then
            begin
              Exit;
            end;

            end;
            end;

    end;


    end;
end;
// $ANTLR end synpred54_C// $ANTLR start "synpred55_C"
function TCParser.synpred55_C_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:C.g:217:4: ( ''*'' pointer )
    // C.g:217:4: ''*'' pointer
    begin
    match(input,52,FOLLOW_52_in_synpred55_C820); 
    if (state.failed) then
    begin
      Exit;
    end;
    pushFollow(FOLLOW_pointer_in_synpred55_C822);
    pointer();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred55_C// $ANTLR start "synpred58_C"
function TCParser.synpred58_C_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:C.g:230:28: ( declarator )
    // C.g:230:28: declarator
    begin
    pushFollow(FOLLOW_declarator_in_synpred58_C877);
    declarator();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred58_C// $ANTLR start "synpred59_C"
function TCParser.synpred59_C_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:C.g:230:39: ( abstract_declarator )
    // C.g:230:39: abstract_declarator
    begin
    pushFollow(FOLLOW_abstract_declarator_in_synpred59_C879);
    abstract_declarator();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred59_C// $ANTLR start "synpred62_C"
function TCParser.synpred62_C_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:C.g:242:12: ( direct_abstract_declarator )
    // C.g:242:12: direct_abstract_declarator
    begin
    pushFollow(FOLLOW_direct_abstract_declarator_in_synpred62_C926);
    direct_abstract_declarator();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred62_C// $ANTLR start "synpred65_C"
function TCParser.synpred65_C_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:C.g:247:65: ( abstract_declarator_suffix )
    // C.g:247:65: abstract_declarator_suffix
    begin
    pushFollow(FOLLOW_abstract_declarator_suffix_in_synpred65_C957);
    abstract_declarator_suffix();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred65_C// $ANTLR start "synpred78_C"
function TCParser.synpred78_C_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:C.g:281:4: ( ''('' type_name '')'' cast_expression )
    // C.g:281:4: ''('' type_name '')'' cast_expression
    begin
    match(input,48,FOLLOW_48_in_synpred78_C1129); 
    if (state.failed) then
    begin
      Exit;
    end;
    pushFollow(FOLLOW_type_name_in_synpred78_C1131);
    type_name();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;
    match(input,49,FOLLOW_49_in_synpred78_C1133); 
    if (state.failed) then
    begin
      Exit;
    end;
    pushFollow(FOLLOW_cast_expression_in_synpred78_C1135);
    cast_expression();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred78_C// $ANTLR start "synpred83_C"
function TCParser.synpred83_C_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:C.g:290:4: ( ''sizeof'' unary_expression )
    // C.g:290:4: ''sizeof'' unary_expression
    begin
    match(input,60,FOLLOW_60_in_synpred83_C1177); 
    if (state.failed) then
    begin
      Exit;
    end;
    pushFollow(FOLLOW_unary_expression_in_synpred83_C1179);
    unary_expression();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred83_C// $ANTLR start "synpred104_C"
function TCParser.synpred104_C_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:C.g:341:4: ( lvalue assignment_operator assignment_expression )
    // C.g:341:4: lvalue assignment_operator assignment_expression
    begin
    pushFollow(FOLLOW_lvalue_in_synpred104_C1491);
    lvalue();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;
    pushFollow(FOLLOW_assignment_operator_in_synpred104_C1493);
    assignment_operator();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;
    pushFollow(FOLLOW_assignment_expression_in_synpred104_C1495);
    assignment_expression();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred104_C// $ANTLR start "synpred136_C"
function TCParser.synpred136_C_fragment():Integer;
var
  _alt:array [0..255] of Integer;
begin   
    // ruleBlockSingleAlt:C.g:420:8: ( declaration )
    // C.g:420:8: declaration
    begin
    pushFollow(FOLLOW_declaration_in_synpred136_C1851);
    declaration();

    state._fsp:=state._fsp-1;
    if (state.failed) then
    begin
      Exit;
    end;

    end;
end;
// $ANTLR end synpred136_C

function TCParser.synpred65_C():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred65_C_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TCParser.synpred47_C():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred47_C_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TCParser.synpred2_C():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred2_C_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TCParser.synpred136_C():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred136_C_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TCParser.synpred50_C():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred50_C_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TCParser.synpred62_C():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred62_C_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TCParser.synpred5_C():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred5_C_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TCParser.synpred35_C():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred35_C_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TCParser.synpred104_C():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred104_C_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TCParser.synpred55_C():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred55_C_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TCParser.synpred45_C():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred45_C_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TCParser.synpred51_C():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred51_C_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TCParser.synpred54_C():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred54_C_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TCParser.synpred78_C():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred78_C_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TCParser.synpred12_C():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred12_C_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TCParser.synpred59_C():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred59_C_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TCParser.synpred58_C():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred58_C_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TCParser.synpred52_C():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred52_C_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TCParser.synpred4_C():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred4_C_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TCParser.synpred8_C():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred8_C_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TCParser.synpred83_C():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred83_C_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;
function TCParser.synpred53_C():Boolean;
var
  start:Integer;
begin
  state.backtracking:=state.backtracking+1;
  start := input.mark();
  try 
    synpred53_C_fragment(); // can never throw exception
  except on  E:ERecognitionException do
    begin   
      //System.err.println("impossible: "+re);
    end;
  end;
  result := not state.failed;
  input.rewind(start);
  state.backtracking:=state.backtracking-1;
  state.failed:=false;
end;



function TCParser.getDfa1:IDFA;
begin
  if not Assigned(dfa1) then
    dfa1:=TAntlrDFA1.Create(self);
  Result:=dfa1;  
end;

constructor TCParser.TAntlrDFA1.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=1;
  feot:=unpackEncodedString('\23\uffff');
  feof:=unpackEncodedString('\1\1\22\uffff');

  FMinc:=unpackEncodedString('\1\4\22\uffff');

  FMaxc:=unpackEncodedString('\1\64\22\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\2\1\1\20\uffff');
  fspecial:=unpackEncodedString('\23\uffff');
  AddTransition(unpackEncodedString('\1\2\22\uffff\1\2\3\uffff\15\2\2\uffff'+
  '\2\2\1\uffff\4\2\3\uffff\1\2'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA1.getDescription():string;
begin
  Result:='()+ loopback of 44:4: ( external_declaration )+';
end;




function TCParser.getDfa2:IDFA;
begin
  if not Assigned(dfa2) then
    dfa2:=TAntlrDFA2.Create(self);
  Result:=dfa2;  
end;

constructor TCParser.TAntlrDFA2.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=2;
  feot:=unpackEncodedString('\22\uffff');
  feof:=unpackEncodedString('\22\uffff');

  FMinc:=unpackEncodedString('\1\4\16\0\3\uffff');

  FMaxc:=unpackEncodedString('\1\64\16\0\3\uffff');
  faccept:=unpackEncodedString('\17\uffff\2\1\1\2');
  fspecial:=unpackEncodedString('\1\0\1\1\1\2\1\3\1\4\1\5\1\6\1\7\1\10\1'+
    '\11\1\12\1\13\1\14\1\15\1\16\3\uffff');
  AddTransition(unpackEncodedString('\1\15\22\uffff\1\21\3\uffff\4\1\1\2'+
  '\1\3\1\4\1\5\1\6\1\7\1\10\1\11\1\12\2\uffff\2\13\1\uffff\1\14\2\16\1\20'+
  '\3\uffff\1\17'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA2.getDescription():string;
begin
  Result:='47:1: external_declaration options {k=1; } : ( ( ( declaration_specifiers )? dec'+
  'larator ( declaration )* ''{'' )=> function_definition | declaration );';
end;


function TCParser.TAntlrDFA2.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TCParser(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[2,0] := input.LA(1);

		         
		        _index['2_0'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((_LA[2,0]>=27) and 
		        ( _LA[2,0]<=30))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( ((_LA[2,0]=31)) ) then 
		        begin 
		          s := 2;
		        end

		        else if ( ((_LA[2,0]=32)) ) then 
		        begin 
		          s := 3;
		        end

		        else if ( ((_LA[2,0]=33)) ) then 
		        begin 
		          s := 4;
		        end

		        else if ( ((_LA[2,0]=34)) ) then 
		        begin 
		          s := 5;
		        end

		        else if ( ((_LA[2,0]=35)) ) then 
		        begin 
		          s := 6;
		        end

		        else if ( ((_LA[2,0]=36)) ) then 
		        begin 
		          s := 7;
		        end

		        else if ( ((_LA[2,0]=37)) ) then 
		        begin 
		          s := 8;
		        end

		        else if ( ((_LA[2,0]=38)) ) then 
		        begin 
		          s := 9;
		        end

		        else if ( ((_LA[2,0]=39)) ) then 
		        begin 
		          s := 10;
		        end

		        else if ( (((_LA[2,0]>=42) and 
		        ( _LA[2,0]<=43))) ) then 
		        begin 
		          s := 11;
		        end

		        else if ( ((_LA[2,0]=45)) ) then 
		        begin 
		          s := 12;
		        end

		        else if ( ((_LA[2,0]=IDENTIFIER)) ) then 
		        begin 
		          s := 13;
		        end

		        else if ( (((_LA[2,0]>=46) and 
		        ( _LA[2,0]<=47))) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( ((_LA[2,0]=52))  and (synpred4_C())) then 
		        begin 
		          s := 15;
		        end

		        else if ( ((_LA[2,0]=48))  and (synpred4_C())) then 
		        begin 
		          s := 16;
		        end

		        else if ( ((_LA[2,0]=23)) ) then 
		        begin 
		          s := 17;
		        end
		        ;

		         
		        input.seek(_index['2_0']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 1 : 
		      begin
		        _LA[2,1] := input.LA(1);

		         
		        _index['2_1'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred4_C()) ) then 
		        begin 
		          s := 16;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 17;
		        end
		        ;

		         
		        input.seek(_index['2_1']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 2 : 
		      begin
		        _LA[2,2] := input.LA(1);

		         
		        _index['2_2'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred4_C()) ) then 
		        begin 
		          s := 16;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 17;
		        end
		        ;

		         
		        input.seek(_index['2_2']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 3 : 
		      begin
		        _LA[2,3] := input.LA(1);

		         
		        _index['2_3'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred4_C()) ) then 
		        begin 
		          s := 16;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 17;
		        end
		        ;

		         
		        input.seek(_index['2_3']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 4 : 
		      begin
		        _LA[2,4] := input.LA(1);

		         
		        _index['2_4'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred4_C()) ) then 
		        begin 
		          s := 16;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 17;
		        end
		        ;

		         
		        input.seek(_index['2_4']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 5 : 
		      begin
		        _LA[2,5] := input.LA(1);

		         
		        _index['2_5'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred4_C()) ) then 
		        begin 
		          s := 16;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 17;
		        end
		        ;

		         
		        input.seek(_index['2_5']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 6 : 
		      begin
		        _LA[2,6] := input.LA(1);

		         
		        _index['2_6'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred4_C()) ) then 
		        begin 
		          s := 16;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 17;
		        end
		        ;

		         
		        input.seek(_index['2_6']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 7 : 
		      begin
		        _LA[2,7] := input.LA(1);

		         
		        _index['2_7'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred4_C()) ) then 
		        begin 
		          s := 16;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 17;
		        end
		        ;

		         
		        input.seek(_index['2_7']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 8 : 
		      begin
		        _LA[2,8] := input.LA(1);

		         
		        _index['2_8'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred4_C()) ) then 
		        begin 
		          s := 16;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 17;
		        end
		        ;

		         
		        input.seek(_index['2_8']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 9 : 
		      begin
		        _LA[2,9] := input.LA(1);

		         
		        _index['2_9'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred4_C()) ) then 
		        begin 
		          s := 16;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 17;
		        end
		        ;

		         
		        input.seek(_index['2_9']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 10 : 
		      begin
		        _LA[2,10] := input.LA(1);

		         
		        _index['2_10'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred4_C()) ) then 
		        begin 
		          s := 16;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 17;
		        end
		        ;

		         
		        input.seek(_index['2_10']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 11 : 
		      begin
		        _LA[2,11] := input.LA(1);

		         
		        _index['2_11'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred4_C()) ) then 
		        begin 
		          s := 16;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 17;
		        end
		        ;

		         
		        input.seek(_index['2_11']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 12 : 
		      begin
		        _LA[2,12] := input.LA(1);

		         
		        _index['2_12'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred4_C()) ) then 
		        begin 
		          s := 16;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 17;
		        end
		        ;

		         
		        input.seek(_index['2_12']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 13 : 
		      begin
		        _LA[2,13] := input.LA(1);

		         
		        _index['2_13'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( ((((synpred4_C()) and ((isTypeName(input.LT(1).getText()))))or synpred4_C())) ) then 
		        begin 
		          s := 16;
		        end

		        else if ( ((isTypeName(input.LT(1).getText()))) ) then 
		        begin 
		          s := 17;
		        end
		        ;

		         
		        input.seek(_index['2_13']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 14 : 
		      begin
		        _LA[2,14] := input.LA(1);

		         
		        _index['2_14'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred4_C()) ) then 
		        begin 
		          s := 16;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 17;
		        end
		        ;

		         
		        input.seek(_index['2_14']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
	end;
    if (state.backtracking>0) then 
    begin
      state.failed:=true;
      Result:=-1;
      Exit;
    end;
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 2, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TCParser.getDfa3:IDFA;
begin
  if not Assigned(dfa3) then
    dfa3:=TAntlrDFA3.Create(self);
  Result:=dfa3;  
end;

constructor TCParser.TAntlrDFA3.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=3;
  feot:=unpackEncodedString('\44\uffff');
  feof:=unpackEncodedString('\44\uffff');

  FMinc:=unpackEncodedString('\1\4\14\uffff\1\4\4\uffff\1\0\1\uffff\16\0'+
    '\2\uffff');

  FMaxc:=unpackEncodedString('\1\64\14\uffff\1\64\4\uffff\1\0\1\uffff\16'+
    '\0\2\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\1\15\uffff\1\2\24\uffff');
  fspecial:=unpackEncodedString('\22\uffff\1\0\1\uffff\1\1\1\2\1\3\1\4\1'+
    '\5\1\6\1\7\1\10\1\11\1\12\1\13\1\14\1\15\1\16\2\uffff');
  AddTransition(unpackEncodedString('\1\15\26\uffff\15\1\2\uffff\2\1\1\uffff'+
  '\3\1\1\17\3\uffff\1\17'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\40\22\uffff\1\17\3\uffff\4\24\1'+
  '\25\1\26\1\27\1\30\1\31\1\32\1\33\1\34\1\35\1\17\1\uffff\2\36\1\uffff'+
  '\1\37\2\41\1\22\1\uffff\1\17\1\uffff\1\1'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA3.getDescription():string;
begin
  Result:='72:4: ( declaration_specifiers )?';
end;


function TCParser.TAntlrDFA3.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TCParser(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[3,18] := input.LA(1);

		         
		        _index['3_18'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred5_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['3_18']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 1 : 
		      begin
		        _LA[3,20] := input.LA(1);

		         
		        _index['3_20'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred5_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['3_20']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 2 : 
		      begin
		        _LA[3,21] := input.LA(1);

		         
		        _index['3_21'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred5_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['3_21']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 3 : 
		      begin
		        _LA[3,22] := input.LA(1);

		         
		        _index['3_22'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred5_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['3_22']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 4 : 
		      begin
		        _LA[3,23] := input.LA(1);

		         
		        _index['3_23'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred5_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['3_23']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 5 : 
		      begin
		        _LA[3,24] := input.LA(1);

		         
		        _index['3_24'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred5_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['3_24']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 6 : 
		      begin
		        _LA[3,25] := input.LA(1);

		         
		        _index['3_25'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred5_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['3_25']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 7 : 
		      begin
		        _LA[3,26] := input.LA(1);

		         
		        _index['3_26'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred5_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['3_26']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 8 : 
		      begin
		        _LA[3,27] := input.LA(1);

		         
		        _index['3_27'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred5_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['3_27']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 9 : 
		      begin
		        _LA[3,28] := input.LA(1);

		         
		        _index['3_28'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred5_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['3_28']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 10 : 
		      begin
		        _LA[3,29] := input.LA(1);

		         
		        _index['3_29'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred5_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['3_29']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 11 : 
		      begin
		        _LA[3,30] := input.LA(1);

		         
		        _index['3_30'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred5_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['3_30']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 12 : 
		      begin
		        _LA[3,31] := input.LA(1);

		         
		        _index['3_31'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred5_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['3_31']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 13 : 
		      begin
		        _LA[3,32] := input.LA(1);

		         
		        _index['3_32'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred5_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['3_32']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 14 : 
		      begin
		        _LA[3,33] := input.LA(1);

		         
		        _index['3_33'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred5_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['3_33']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
	end;
    if (state.backtracking>0) then 
    begin
      state.failed:=true;
      Result:=-1;
      Exit;
    end;
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 3, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TCParser.getDfa5:IDFA;
begin
  if not Assigned(dfa5) then
    dfa5:=TAntlrDFA5.Create(self);
  Result:=dfa5;  
end;

constructor TCParser.TAntlrDFA5.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=5;
  feot:=unpackEncodedString('\21\uffff');
  feof:=unpackEncodedString('\21\uffff');

  FMinc:=unpackEncodedString('\1\4\20\uffff');

  FMaxc:=unpackEncodedString('\1\57\20\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\1\16\uffff\1\2');
  fspecial:=unpackEncodedString('\21\uffff');
  AddTransition(unpackEncodedString('\1\1\22\uffff\1\1\3\uffff\15\1\1\20'+
  '\1\uffff\2\1\1\uffff\3\1'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA5.getDescription():string;
begin
  Result:='73:3: ( ( declaration )+ compound_statement | compound_statement )';
end;




function TCParser.getDfa4:IDFA;
begin
  if not Assigned(dfa4) then
    dfa4:=TAntlrDFA4.Create(self);
  Result:=dfa4;  
end;

constructor TCParser.TAntlrDFA4.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=4;
  feot:=unpackEncodedString('\21\uffff');
  feof:=unpackEncodedString('\21\uffff');

  FMinc:=unpackEncodedString('\1\4\20\uffff');

  FMaxc:=unpackEncodedString('\1\57\20\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\2\1\1\16\uffff');
  fspecial:=unpackEncodedString('\21\uffff');
  AddTransition(unpackEncodedString('\1\2\22\uffff\1\2\3\uffff\15\2\1\1'+
  '\1\uffff\2\2\1\uffff\3\2'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA4.getDescription():string;
begin
  Result:='()+ loopback of 73:5: ( declaration )+';
end;




function TCParser.getDfa8:IDFA;
begin
  if not Assigned(dfa8) then
    dfa8:=TAntlrDFA8.Create(self);
  Result:=dfa8;  
end;

constructor TCParser.TAntlrDFA8.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=8;
  feot:=unpackEncodedString('\20\uffff');
  feof:=unpackEncodedString('\20\uffff');

  FMinc:=unpackEncodedString('\1\4\17\uffff');

  FMaxc:=unpackEncodedString('\1\57\17\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\1\1\2\15\uffff');
  fspecial:=unpackEncodedString('\20\uffff');
  AddTransition(unpackEncodedString('\1\2\22\uffff\1\1\3\uffff\15\2\2\uffff'+
  '\2\2\1\uffff\3\2'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA8.getDescription():string;
begin
  Result:='78:1: declaration : ( ''typedef'' ( declaration_specifiers )? init_declarator_list'+
  ' '';'' | declaration_specifiers ( init_declarator_list )? '';'' );';
end;




function TCParser.getDfa6:IDFA;
begin
  if not Assigned(dfa6) then
    dfa6:=TAntlrDFA6.Create(self);
  Result:=dfa6;  
end;

constructor TCParser.TAntlrDFA6.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=6;
  feot:=unpackEncodedString('\45\uffff');
  feof:=unpackEncodedString('\45\uffff');

  FMinc:=unpackEncodedString('\1\4\14\uffff\1\4\5\uffff\1\0\21\uffff');

  FMaxc:=unpackEncodedString('\1\64\14\uffff\1\64\5\uffff\1\0\21\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\1\15\uffff\1\2\25\uffff');
  fspecial:=unpackEncodedString('\23\uffff\1\0\21\uffff');
  AddTransition(unpackEncodedString('\1\15\26\uffff\15\1\2\uffff\2\1\1\uffff'+
  '\3\1\1\17\3\uffff\1\17'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\1\23\uffff\3\17\15\1\2\uffff\2\1'+
  '\1\uffff\3\1\1\23\1\uffff\1\17\1\uffff\1\1'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA6.getDescription():string;
begin
  Result:='85:14: ( declaration_specifiers )?';
end;


function TCParser.TAntlrDFA6.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TCParser(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[6,19] := input.LA(1);

		         
		        _index['6_19'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred8_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['6_19']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
	end;
    if (state.backtracking>0) then 
    begin
      state.failed:=true;
      Result:=-1;
      Exit;
    end;
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 6, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TCParser.getDfa9:IDFA;
begin
  if not Assigned(dfa9) then
    dfa9:=TAntlrDFA9.Create(self);
  Result:=dfa9;  
end;

constructor TCParser.TAntlrDFA9.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=9;
  feot:=unpackEncodedString('\56\uffff');
  feof:=unpackEncodedString('\1\1\55\uffff');

  FMinc:=unpackEncodedString('\1\4\1\uffff\1\0\53\uffff');

  FMaxc:=unpackEncodedString('\1\64\1\uffff\1\0\53\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\4\7\uffff\1\1\1\2\12\uffff\1'+
    '\3\30\uffff');
  fspecial:=unpackEncodedString('\2\uffff\1\0\53\uffff');
  AddTransition(unpackEncodedString('\1\2\23\uffff\2\1\1\uffff\4\11\11\12'+
  '\2\uffff\2\12\1\uffff\1\12\2\25\3\1\1\uffff\1\1'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA9.getDescription():string;
begin
  Result:='()+ loopback of 91:6: ( storage_class_specifier | type_specifier | type_qualifie'+
  'r )+';
end;


function TCParser.TAntlrDFA9.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TCParser(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[9,2] := input.LA(1);

		         
		        _index['9_2'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred12_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 10;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['9_2']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
	end;
    if (state.backtracking>0) then 
    begin
      state.failed:=true;
      Result:=-1;
      Exit;
    end;
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 9, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TCParser.getDfa12:IDFA;
begin
  if not Assigned(dfa12) then
    dfa12:=TAntlrDFA12.Create(self);
  Result:=dfa12;  
end;

constructor TCParser.TAntlrDFA12.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=12;
  feot:=unpackEncodedString('\15\uffff');
  feof:=unpackEncodedString('\15\uffff');

  FMinc:=unpackEncodedString('\1\4\14\uffff');

  FMaxc:=unpackEncodedString('\1\55\14\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\1\1\2\1\3\1\4\1\5\1\6\1\7\1\10'+
    '\1\11\1\12\1\13\1\14');
  fspecial:=unpackEncodedString('\15\uffff');
  AddTransition(unpackEncodedString('\1\14\32\uffff\1\1\1\2\1\3\1\4\1\5'+
  '\1\6\1\7\1\10\1\11\2\uffff\2\12\1\uffff\1\13'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA12.getDescription():string;
begin
  Result:='112:1: type_specifier : ( ''void'' | ''char'' | ''short'' | ''int'' | ''long'' | ''float'' |'+
  ' ''double'' | ''signed'' | ''unsigned'' | struct_or_union_specifier | enum_specifier |'+
  ' type_id );';
end;




function TCParser.getDfa14:IDFA;
begin
  if not Assigned(dfa14) then
    dfa14:=TAntlrDFA14.Create(self);
  Result:=dfa14;  
end;

constructor TCParser.TAntlrDFA14.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=14;
  feot:=unpackEncodedString('\33\uffff');
  feof:=unpackEncodedString('\2\uffff\1\5\30\uffff');

  FMinc:=unpackEncodedString('\1\52\2\4\30\uffff');

  FMaxc:=unpackEncodedString('\1\53\1\50\1\64\30\uffff');
  faccept:=unpackEncodedString('\3\uffff\1\1\1\uffff\1\2\25\uffff');
  fspecial:=unpackEncodedString('\33\uffff');
  AddTransition(unpackEncodedString('\2\1'));
  AddTransition(unpackEncodedString('\1\2\43\uffff\1\3'));
  AddTransition(unpackEncodedString('\1\5\23\uffff\2\5\1\uffff\15\5\1\3'+
  '\1\uffff\11\5\1\uffff\1\5'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA14.getDescription():string;
begin
  Result:='132:1: struct_or_union_specifier options {k=3; } : ( struct_or_union ( IDENTIFIE'+
  'R )? ''{'' struct_declaration_list ''}'' | struct_or_union IDENTIFIER );';
end;




function TCParser.getDfa15:IDFA;
begin
  if not Assigned(dfa15) then
    dfa15:=TAntlrDFA15.Create(self);
  Result:=dfa15;  
end;

constructor TCParser.TAntlrDFA15.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=15;
  feot:=unpackEncodedString('\17\uffff');
  feof:=unpackEncodedString('\17\uffff');

  FMinc:=unpackEncodedString('\1\4\16\uffff');

  FMaxc:=unpackEncodedString('\1\57\16\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\2\1\1\14\uffff');
  fspecial:=unpackEncodedString('\17\uffff');
  AddTransition(unpackEncodedString('\1\2\32\uffff\11\2\1\uffff\1\1\2\2'+
  '\1\uffff\3\2'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA15.getDescription():string;
begin
  Result:='()+ loopback of 148:4: ( struct_declaration )+';
end;




function TCParser.getDfa16:IDFA;
begin
  if not Assigned(dfa16) then
    dfa16:=TAntlrDFA16.Create(self);
  Result:=dfa16;  
end;

constructor TCParser.TAntlrDFA16.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=16;
  feot:=unpackEncodedString('\47\uffff');
  feof:=unpackEncodedString('\47\uffff');

  FMinc:=unpackEncodedString('\1\4\1\uffff\1\4\22\uffff\3\0\17\uffff');

  FMaxc:=unpackEncodedString('\1\64\1\uffff\1\64\22\uffff\3\0\17\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\3\5\uffff\1\1\1\2\36\uffff');
  fspecial:=unpackEncodedString('\25\uffff\1\0\1\1\1\2\17\uffff');
  AddTransition(unpackEncodedString('\1\2\32\uffff\11\10\2\uffff\2\10\1'+
  '\1\1\10\2\7\3\1\1\uffff\1\1'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\10\23\uffff\2\1\5\uffff\11\10\2'+
  '\uffff\2\10\1\26\3\10\1\25\1\10\1\27\1\uffff\1\10'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA16.getDescription():string;
begin
  Result:='()+ loopback of 156:4: ( type_qualifier | type_specifier )+';
end;


function TCParser.TAntlrDFA16.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TCParser(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[16,21] := input.LA(1);

		         
		        _index['16_21'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred35_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 8;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['16_21']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 1 : 
		      begin
		        _LA[16,22] := input.LA(1);

		         
		        _index['16_22'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred35_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 8;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['16_22']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 2 : 
		      begin
		        _LA[16,23] := input.LA(1);

		         
		        _index['16_23'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred35_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 8;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['16_23']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
	end;
    if (state.backtracking>0) then 
    begin
      state.failed:=true;
      Result:=-1;
      Exit;
    end;
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 16, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TCParser.getDfa20:IDFA;
begin
  if not Assigned(dfa20) then
    dfa20:=TAntlrDFA20.Create(self);
  Result:=dfa20;  
end;

constructor TCParser.TAntlrDFA20.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=20;
  feot:=unpackEncodedString('\33\uffff');
  feof:=unpackEncodedString('\3\uffff\1\5\27\uffff');

  FMinc:=unpackEncodedString('\1\55\1\4\1\uffff\1\4\27\uffff');

  FMaxc:=unpackEncodedString('\1\55\1\50\1\uffff\1\64\27\uffff');
  faccept:=unpackEncodedString('\2\uffff\1\1\1\uffff\1\2\1\3\25\uffff');
  fspecial:=unpackEncodedString('\33\uffff');
  AddTransition(unpackEncodedString('\1\1'));
  AddTransition(unpackEncodedString('\1\3\43\uffff\1\2'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\5\23\uffff\2\5\1\uffff\15\5\1\4'+
  '\1\uffff\11\5\1\uffff\1\5'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA20.getDescription():string;
begin
  Result:='168:1: enum_specifier options {k=3; } : ( ''enum'' ''{'' enumerator_list ''}'' | ''enum'+
  ''' IDENTIFIER ''{'' enumerator_list ''}'' | ''enum'' IDENTIFIER );';
end;




function TCParser.getDfa24:IDFA;
begin
  if not Assigned(dfa24) then
    dfa24:=TAntlrDFA24.Create(self);
  Result:=dfa24;  
end;

constructor TCParser.TAntlrDFA24.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=24;
  feot:=unpackEncodedString('\36\uffff');
  feof:=unpackEncodedString('\36\uffff');

  FMinc:=unpackEncodedString('\1\4\1\0\34\uffff');

  FMaxc:=unpackEncodedString('\1\64\1\0\34\uffff');
  faccept:=unpackEncodedString('\2\uffff\1\1\32\uffff\1\2');
  fspecial:=unpackEncodedString('\1\uffff\1\0\34\uffff');
  AddTransition(unpackEncodedString('\1\2\53\uffff\1\2\3\uffff\1\1'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA24.getDescription():string;
begin
  Result:='188:1: declarator : ( ( pointer )? direct_declarator | pointer );';
end;


function TCParser.TAntlrDFA24.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TCParser(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[24,1] := input.LA(1);

		         
		        _index['24_1'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred45_C()) ) then 
		        begin 
		          s := 2;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 29;
		        end
		        ;

		         
		        input.seek(_index['24_1']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
	end;
    if (state.backtracking>0) then 
    begin
      state.failed:=true;
      Result:=-1;
      Exit;
    end;
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 24, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TCParser.getDfa26:IDFA;
begin
  if not Assigned(dfa26) then
    dfa26:=TAntlrDFA26.Create(self);
  Result:=dfa26;  
end;

constructor TCParser.TAntlrDFA26.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=26;
  feot:=unpackEncodedString('\65\uffff');
  feof:=unpackEncodedString('\1\1\64\uffff');

  FMinc:=unpackEncodedString('\1\4\27\uffff\2\4\17\0\3\uffff\10\0\1\uffff');

  FMaxc:=unpackEncodedString('\1\64\27\uffff\1\64\1\101\17\0\3\uffff\10'+
    '\0\1\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\2\62\uffff\1\1');
  fspecial:=unpackEncodedString('\32\uffff\1\0\1\1\1\2\1\3\1\4\1\5\1\6\1'+
    '\7\1\10\1\11\1\12\1\13\1\14\1\15\1\16\3\uffff\1\17\1\20\1\21\1\22\1'+
    '\23\1\24\1\25\1\26\1\uffff');
  AddTransition(unpackEncodedString('\1\1\22\uffff\22\1\1\uffff\6\1\1\30'+
  '\1\1\1\31\1\uffff\1\1'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\47\26\uffff\4\33\1\34\1\35\1\36'+
  '\1\37\1\40\1\41\1\42\1\43\1\44\2\uffff\2\45\1\uffff\1\46\2\50\1\1\1\32'+
  '\1\1\1\uffff\1\1'));
  AddTransition(unpackEncodedString('\1\56\6\57\45\uffff\1\55\2\uffff\1'+
  '\54\1\62\1\uffff\2\62\2\uffff\1\60\1\61\1\63\2\uffff\3\62'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA26.getDescription():string;
begin
  Result:='()* loopback of 204:9: ( declarator_suffix )*';
end;


function TCParser.TAntlrDFA26.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TCParser(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[26,26] := input.LA(1);

		         
		        _index['26_26'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred47_C()) ) then 
		        begin 
		          s := 52;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['26_26']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 1 : 
		      begin
		        _LA[26,27] := input.LA(1);

		         
		        _index['26_27'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred47_C()) ) then 
		        begin 
		          s := 52;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['26_27']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 2 : 
		      begin
		        _LA[26,28] := input.LA(1);

		         
		        _index['26_28'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred47_C()) ) then 
		        begin 
		          s := 52;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['26_28']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 3 : 
		      begin
		        _LA[26,29] := input.LA(1);

		         
		        _index['26_29'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred47_C()) ) then 
		        begin 
		          s := 52;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['26_29']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 4 : 
		      begin
		        _LA[26,30] := input.LA(1);

		         
		        _index['26_30'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred47_C()) ) then 
		        begin 
		          s := 52;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['26_30']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 5 : 
		      begin
		        _LA[26,31] := input.LA(1);

		         
		        _index['26_31'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred47_C()) ) then 
		        begin 
		          s := 52;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['26_31']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 6 : 
		      begin
		        _LA[26,32] := input.LA(1);

		         
		        _index['26_32'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred47_C()) ) then 
		        begin 
		          s := 52;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['26_32']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 7 : 
		      begin
		        _LA[26,33] := input.LA(1);

		         
		        _index['26_33'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred47_C()) ) then 
		        begin 
		          s := 52;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['26_33']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 8 : 
		      begin
		        _LA[26,34] := input.LA(1);

		         
		        _index['26_34'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred47_C()) ) then 
		        begin 
		          s := 52;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['26_34']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 9 : 
		      begin
		        _LA[26,35] := input.LA(1);

		         
		        _index['26_35'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred47_C()) ) then 
		        begin 
		          s := 52;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['26_35']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 10 : 
		      begin
		        _LA[26,36] := input.LA(1);

		         
		        _index['26_36'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred47_C()) ) then 
		        begin 
		          s := 52;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['26_36']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 11 : 
		      begin
		        _LA[26,37] := input.LA(1);

		         
		        _index['26_37'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred47_C()) ) then 
		        begin 
		          s := 52;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['26_37']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 12 : 
		      begin
		        _LA[26,38] := input.LA(1);

		         
		        _index['26_38'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred47_C()) ) then 
		        begin 
		          s := 52;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['26_38']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 13 : 
		      begin
		        _LA[26,39] := input.LA(1);

		         
		        _index['26_39'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred47_C()) ) then 
		        begin 
		          s := 52;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['26_39']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 14 : 
		      begin
		        _LA[26,40] := input.LA(1);

		         
		        _index['26_40'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred47_C()) ) then 
		        begin 
		          s := 52;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['26_40']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 15 : 
		      begin
		        _LA[26,44] := input.LA(1);

		         
		        _index['26_44'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred47_C()) ) then 
		        begin 
		          s := 52;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['26_44']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 16 : 
		      begin
		        _LA[26,45] := input.LA(1);

		         
		        _index['26_45'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred47_C()) ) then 
		        begin 
		          s := 52;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['26_45']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 17 : 
		      begin
		        _LA[26,46] := input.LA(1);

		         
		        _index['26_46'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred47_C()) ) then 
		        begin 
		          s := 52;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['26_46']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 18 : 
		      begin
		        _LA[26,47] := input.LA(1);

		         
		        _index['26_47'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred47_C()) ) then 
		        begin 
		          s := 52;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['26_47']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 19 : 
		      begin
		        _LA[26,48] := input.LA(1);

		         
		        _index['26_48'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred47_C()) ) then 
		        begin 
		          s := 52;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['26_48']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 20 : 
		      begin
		        _LA[26,49] := input.LA(1);

		         
		        _index['26_49'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred47_C()) ) then 
		        begin 
		          s := 52;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['26_49']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 21 : 
		      begin
		        _LA[26,50] := input.LA(1);

		         
		        _index['26_50'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred47_C()) ) then 
		        begin 
		          s := 52;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['26_50']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 22 : 
		      begin
		        _LA[26,51] := input.LA(1);

		         
		        _index['26_51'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred47_C()) ) then 
		        begin 
		          s := 52;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['26_51']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
	end;
    if (state.backtracking>0) then 
    begin
      state.failed:=true;
      Result:=-1;
      Exit;
    end;
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 26, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TCParser.getDfa27:IDFA;
begin
  if not Assigned(dfa27) then
    dfa27:=TAntlrDFA27.Create(self);
  Result:=dfa27;  
end;

constructor TCParser.TAntlrDFA27.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=27;
  feot:=unpackEncodedString('\33\uffff');
  feof:=unpackEncodedString('\33\uffff');

  FMinc:=unpackEncodedString('\1\60\2\4\25\uffff\1\0\2\uffff');

  FMaxc:=unpackEncodedString('\1\62\1\101\1\61\25\uffff\1\0\2\uffff');
  faccept:=unpackEncodedString('\3\uffff\1\2\1\1\6\uffff\1\5\1\3\15\uffff'+
    '\1\4');
  fspecial:=unpackEncodedString('\30\uffff\1\0\2\uffff');
  AddTransition(unpackEncodedString('\1\2\1\uffff\1\1'));
  AddTransition(unpackEncodedString('\7\4\45\uffff\1\4\2\uffff\1\3\1\4\1'+
  '\uffff\2\4\2\uffff\3\4\2\uffff\3\4'));
  AddTransition(unpackEncodedString('\1\30\26\uffff\15\14\2\uffff\2\14\1'+
  '\uffff\3\14\1\uffff\1\13'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA27.getDescription():string;
begin
  Result:='207:1: declarator_suffix : ( ''['' constant_expression '']'' | ''['' '']'' | ''('' paramet'+
  'er_type_list '')'' | ''('' identifier_list '')'' | ''('' '')'' );';
end;


function TCParser.TAntlrDFA27.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TCParser(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[27,24] := input.LA(1);

		         
		        _index['27_24'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred50_C()) ) then 
		        begin 
		          s := 12;
		        end

		        else if ( (synpred51_C()) ) then 
		        begin 
		          s := 26;
		        end
		        ;

		         
		        input.seek(_index['27_24']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
	end;
    if (state.backtracking>0) then 
    begin
      state.failed:=true;
      Result:=-1;
      Exit;
    end;
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 27, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TCParser.getDfa30:IDFA;
begin
  if not Assigned(dfa30) then
    dfa30:=TAntlrDFA30.Create(self);
  Result:=dfa30;  
end;

constructor TCParser.TAntlrDFA30.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=30;
  feot:=unpackEncodedString('\35\uffff');
  feof:=unpackEncodedString('\1\uffff\1\3\33\uffff');

  FMinc:=unpackEncodedString('\1\64\1\4\1\0\17\uffff\1\0\12\uffff');

  FMaxc:=unpackEncodedString('\2\64\1\0\17\uffff\1\0\12\uffff');
  faccept:=unpackEncodedString('\3\uffff\1\3\27\uffff\1\2\1\1');
  fspecial:=unpackEncodedString('\2\uffff\1\0\17\uffff\1\1\12\uffff');
  AddTransition(unpackEncodedString('\1\1'));
  AddTransition(unpackEncodedString('\1\3\22\uffff\22\3\1\uffff\4\3\2\22'+
  '\3\3\1\uffff\1\2'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA30.getDescription():string;
begin
  Result:='215:1: pointer : ( ''*'' ( type_qualifier )+ ( pointer )? | ''*'' pointer | ''*'' );';
end;


function TCParser.TAntlrDFA30.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TCParser(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[30,2] := input.LA(1);

		         
		        _index['30_2'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred55_C()) ) then 
		        begin 
		          s := 27;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['30_2']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 1 : 
		      begin
		        _LA[30,18] := input.LA(1);

		         
		        _index['30_18'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred54_C()) ) then 
		        begin 
		          s := 28;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['30_18']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
	end;
    if (state.backtracking>0) then 
    begin
      state.failed:=true;
      Result:=-1;
      Exit;
    end;
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 30, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TCParser.getDfa28:IDFA;
begin
  if not Assigned(dfa28) then
    dfa28:=TAntlrDFA28.Create(self);
  Result:=dfa28;  
end;

constructor TCParser.TAntlrDFA28.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=28;
  feot:=unpackEncodedString('\64\uffff');
  feof:=unpackEncodedString('\1\1\63\uffff');

  FMinc:=unpackEncodedString('\1\4\20\uffff\1\0\42\uffff');

  FMaxc:=unpackEncodedString('\1\64\20\uffff\1\0\42\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\2\61\uffff\1\1');
  fspecial:=unpackEncodedString('\21\uffff\1\0\42\uffff');
  AddTransition(unpackEncodedString('\1\1\22\uffff\22\1\1\uffff\4\1\2\21'+
  '\3\1\1\uffff\1\1'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA28.getDescription():string;
begin
  Result:='()+ loopback of 216:8: ( type_qualifier )+';
end;


function TCParser.TAntlrDFA28.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TCParser(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[28,17] := input.LA(1);

		         
		        _index['28_17'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred52_C()) ) then 
		        begin 
		          s := 51;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['28_17']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
	end;
    if (state.backtracking>0) then 
    begin
      state.failed:=true;
      Result:=-1;
      Exit;
    end;
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 28, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TCParser.getDfa29:IDFA;
begin
  if not Assigned(dfa29) then
    dfa29:=TAntlrDFA29.Create(self);
  Result:=dfa29;  
end;

constructor TCParser.TAntlrDFA29.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=29;
  feot:=unpackEncodedString('\64\uffff');
  feof:=unpackEncodedString('\1\2\63\uffff');

  FMinc:=unpackEncodedString('\1\4\1\0\62\uffff');

  FMaxc:=unpackEncodedString('\1\64\1\0\62\uffff');
  faccept:=unpackEncodedString('\2\uffff\1\2\60\uffff\1\1');
  fspecial:=unpackEncodedString('\1\uffff\1\0\62\uffff');
  AddTransition(unpackEncodedString('\1\2\22\uffff\22\2\1\uffff\11\2\1\uffff'+
  '\1\1'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA29.getDescription():string;
begin
  Result:='216:24: ( pointer )?';
end;


function TCParser.TAntlrDFA29.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TCParser(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[29,1] := input.LA(1);

		         
		        _index['29_1'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred53_C()) ) then 
		        begin 
		          s := 51;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 2;
		        end
		        ;

		         
		        input.seek(_index['29_1']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
	end;
    if (state.backtracking>0) then 
    begin
      state.failed:=true;
      Result:=-1;
      Exit;
    end;
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 29, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TCParser.getDfa32:IDFA;
begin
  if not Assigned(dfa32) then
    dfa32:=TAntlrDFA32.Create(self);
  Result:=dfa32;  
end;

constructor TCParser.TAntlrDFA32.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=32;
  feot:=unpackEncodedString('\22\uffff');
  feof:=unpackEncodedString('\22\uffff');

  FMinc:=unpackEncodedString('\1\31\1\4\20\uffff');

  FMaxc:=unpackEncodedString('\1\61\1\65\20\uffff');
  faccept:=unpackEncodedString('\2\uffff\1\2\1\uffff\1\1\15\uffff');
  fspecial:=unpackEncodedString('\22\uffff');
  AddTransition(unpackEncodedString('\1\1\27\uffff\1\2'));
  AddTransition(unpackEncodedString('\1\4\26\uffff\15\4\2\uffff\2\4\1\uffff'+
  '\3\4\5\uffff\1\2'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA32.getDescription():string;
begin
  Result:='()* loopback of 226:26: ( '','' parameter_declaration )*';
end;




function TCParser.getDfa33:IDFA;
begin
  if not Assigned(dfa33) then
    dfa33:=TAntlrDFA33.Create(self);
  Result:=dfa33;  
end;

constructor TCParser.TAntlrDFA33.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=33;
  feot:=unpackEncodedString('\42\uffff');
  feof:=unpackEncodedString('\1\1\41\uffff');

  FMinc:=unpackEncodedString('\1\4\3\uffff\1\0\1\uffff\1\4\12\uffff\2\0'+
    '\1\uffff\1\0\15\uffff');

  FMaxc:=unpackEncodedString('\1\64\3\uffff\1\0\1\uffff\1\64\12\uffff\2'+
    '\0\1\uffff\1\0\15\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\3\3\uffff\1\1\1\uffff\1\2\32'+
    '\uffff');
  fspecial:=unpackEncodedString('\4\uffff\1\0\14\uffff\1\1\1\2\1\uffff\1'+
    '\3\15\uffff');
  AddTransition(unpackEncodedString('\1\5\24\uffff\1\1\26\uffff\1\6\1\1'+
  '\1\7\1\uffff\1\4'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\24\26\uffff\15\7\2\uffff\2\7\1\uffff'+
  '\3\7\1\22\2\7\1\uffff\1\21'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA33.getDescription():string;
begin
  Result:='()* loopback of 230:27: ( declarator | abstract_declarator )*';
end;


function TCParser.TAntlrDFA33.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TCParser(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[33,4] := input.LA(1);

		         
		        _index['33_4'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred58_C()) ) then 
		        begin 
		          s := 5;
		        end

		        else if ( (synpred59_C()) ) then 
		        begin 
		          s := 7;
		        end
		        ;

		         
		        input.seek(_index['33_4']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 1 : 
		      begin
		        _LA[33,17] := input.LA(1);

		         
		        _index['33_17'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred58_C()) ) then 
		        begin 
		          s := 5;
		        end

		        else if ( (synpred59_C()) ) then 
		        begin 
		          s := 7;
		        end
		        ;

		         
		        input.seek(_index['33_17']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 2 : 
		      begin
		        _LA[33,18] := input.LA(1);

		         
		        _index['33_18'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred58_C()) ) then 
		        begin 
		          s := 5;
		        end

		        else if ( (synpred59_C()) ) then 
		        begin 
		          s := 7;
		        end
		        ;

		         
		        input.seek(_index['33_18']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 3 : 
		      begin
		        _LA[33,20] := input.LA(1);

		         
		        _index['33_20'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred58_C()) ) then 
		        begin 
		          s := 5;
		        end

		        else if ( (synpred59_C()) ) then 
		        begin 
		          s := 7;
		        end
		        ;

		         
		        input.seek(_index['33_20']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
	end;
    if (state.backtracking>0) then 
    begin
      state.failed:=true;
      Result:=-1;
      Exit;
    end;
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 33, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TCParser.getDfa36:IDFA;
begin
  if not Assigned(dfa36) then
    dfa36:=TAntlrDFA36.Create(self);
  Result:=dfa36;  
end;

constructor TCParser.TAntlrDFA36.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=36;
  feot:=unpackEncodedString('\43\uffff');
  feof:=unpackEncodedString('\1\3\42\uffff');

  FMinc:=unpackEncodedString('\3\4\5\uffff\32\0\1\uffff');

  FMaxc:=unpackEncodedString('\2\64\1\101\5\uffff\32\0\1\uffff');
  faccept:=unpackEncodedString('\3\uffff\1\2\36\uffff\1\1');
  fspecial:=unpackEncodedString('\10\uffff\1\0\1\1\1\2\1\3\1\4\1\5\1\6\1'+
    '\7\1\10\1\11\1\12\1\13\1\14\1\15\1\16\1\17\1\20\1\21\1\22\1\23\1\24'+
    '\1\25\1\26\1\27\1\30\1\31\1\uffff');
  AddTransition(unpackEncodedString('\1\3\24\uffff\1\3\26\uffff\1\1\1\3'+
  '\1\2\1\uffff\1\3'));
  AddTransition(unpackEncodedString('\1\14\26\uffff\4\15\1\16\1\17\1\20'+
  '\1\21\1\22\1\23\1\24\1\25\1\26\2\uffff\2\27\1\uffff\1\30\2\31\1\12\1\10'+
  '\1\13\1\uffff\1\11'));
  AddTransition(unpackEncodedString('\1\34\6\35\45\uffff\1\33\2\uffff\1'+
  '\32\1\40\1\uffff\2\40\2\uffff\1\36\1\37\1\41\2\uffff\3\40'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA36.getDescription():string;
begin
  Result:='242:12: ( direct_abstract_declarator )?';
end;


function TCParser.TAntlrDFA36.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TCParser(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[36,8] := input.LA(1);

		         
		        _index['36_8'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_8']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 1 : 
		      begin
		        _LA[36,9] := input.LA(1);

		         
		        _index['36_9'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_9']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 2 : 
		      begin
		        _LA[36,10] := input.LA(1);

		         
		        _index['36_10'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_10']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 3 : 
		      begin
		        _LA[36,11] := input.LA(1);

		         
		        _index['36_11'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_11']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 4 : 
		      begin
		        _LA[36,12] := input.LA(1);

		         
		        _index['36_12'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_12']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 5 : 
		      begin
		        _LA[36,13] := input.LA(1);

		         
		        _index['36_13'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_13']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 6 : 
		      begin
		        _LA[36,14] := input.LA(1);

		         
		        _index['36_14'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_14']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 7 : 
		      begin
		        _LA[36,15] := input.LA(1);

		         
		        _index['36_15'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_15']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 8 : 
		      begin
		        _LA[36,16] := input.LA(1);

		         
		        _index['36_16'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_16']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 9 : 
		      begin
		        _LA[36,17] := input.LA(1);

		         
		        _index['36_17'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_17']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 10 : 
		      begin
		        _LA[36,18] := input.LA(1);

		         
		        _index['36_18'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_18']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 11 : 
		      begin
		        _LA[36,19] := input.LA(1);

		         
		        _index['36_19'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_19']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 12 : 
		      begin
		        _LA[36,20] := input.LA(1);

		         
		        _index['36_20'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_20']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 13 : 
		      begin
		        _LA[36,21] := input.LA(1);

		         
		        _index['36_21'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_21']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 14 : 
		      begin
		        _LA[36,22] := input.LA(1);

		         
		        _index['36_22'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_22']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 15 : 
		      begin
		        _LA[36,23] := input.LA(1);

		         
		        _index['36_23'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_23']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 16 : 
		      begin
		        _LA[36,24] := input.LA(1);

		         
		        _index['36_24'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_24']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 17 : 
		      begin
		        _LA[36,25] := input.LA(1);

		         
		        _index['36_25'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_25']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 18 : 
		      begin
		        _LA[36,26] := input.LA(1);

		         
		        _index['36_26'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_26']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 19 : 
		      begin
		        _LA[36,27] := input.LA(1);

		         
		        _index['36_27'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_27']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 20 : 
		      begin
		        _LA[36,28] := input.LA(1);

		         
		        _index['36_28'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_28']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 21 : 
		      begin
		        _LA[36,29] := input.LA(1);

		         
		        _index['36_29'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_29']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 22 : 
		      begin
		        _LA[36,30] := input.LA(1);

		         
		        _index['36_30'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_30']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 23 : 
		      begin
		        _LA[36,31] := input.LA(1);

		         
		        _index['36_31'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_31']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 24 : 
		      begin
		        _LA[36,32] := input.LA(1);

		         
		        _index['36_32'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_32']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 25 : 
		      begin
		        _LA[36,33] := input.LA(1);

		         
		        _index['36_33'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred62_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 3;
		        end
		        ;

		         
		        input.seek(_index['36_33']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
	end;
    if (state.backtracking>0) then 
    begin
      state.failed:=true;
      Result:=-1;
      Exit;
    end;
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 36, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TCParser.getDfa38:IDFA;
begin
  if not Assigned(dfa38) then
    dfa38:=TAntlrDFA38.Create(self);
  Result:=dfa38;  
end;

constructor TCParser.TAntlrDFA38.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=38;
  feot:=unpackEncodedString('\25\uffff');
  feof:=unpackEncodedString('\25\uffff');

  FMinc:=unpackEncodedString('\1\60\1\4\23\uffff');

  FMaxc:=unpackEncodedString('\1\62\1\64\23\uffff');
  faccept:=unpackEncodedString('\2\uffff\1\2\1\uffff\1\1\20\uffff');
  fspecial:=unpackEncodedString('\25\uffff');
  AddTransition(unpackEncodedString('\1\1\1\uffff\1\2'));
  AddTransition(unpackEncodedString('\1\2\26\uffff\15\2\2\uffff\2\2\1\uffff'+
  '\3\2\1\4\1\2\1\4\1\uffff\1\4'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA38.getDescription():string;
begin
  Result:='247:4: ( ''('' abstract_declarator '')'' | abstract_declarator_suffix )';
end;




function TCParser.getDfa39:IDFA;
begin
  if not Assigned(dfa39) then
    dfa39:=TAntlrDFA39.Create(self);
  Result:=dfa39;  
end;

constructor TCParser.TAntlrDFA39.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=39;
  feot:=unpackEncodedString('\43\uffff');
  feof:=unpackEncodedString('\1\1\42\uffff');

  FMinc:=unpackEncodedString('\1\4\5\uffff\2\4\1\0\3\uffff\26\0\1\uffff');

  FMaxc:=unpackEncodedString('\1\64\5\uffff\1\64\1\101\1\0\3\uffff\26\0'+
    '\1\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\2\40\uffff\1\1');
  fspecial:=unpackEncodedString('\10\uffff\1\0\3\uffff\1\1\1\2\1\3\1\4\1'+
    '\5\1\6\1\7\1\10\1\11\1\12\1\13\1\14\1\15\1\16\1\17\1\20\1\21\1\22\1'+
    '\23\1\24\1\25\1\26\1\uffff');
  AddTransition(unpackEncodedString('\1\1\24\uffff\1\1\26\uffff\1\6\1\1'+
  '\1\7\1\uffff\1\1'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\30\26\uffff\4\14\1\15\1\16\1\17'+
  '\1\20\1\21\1\22\1\23\1\24\1\25\2\uffff\2\26\1\uffff\1\27\2\31\1\1\1\10'+
  '\1\1\1\uffff\1\1'));
  AddTransition(unpackEncodedString('\1\34\6\35\45\uffff\1\33\2\uffff\1'+
  '\32\1\40\1\uffff\2\40\2\uffff\1\36\1\37\1\41\2\uffff\3\40'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA39.getDescription():string;
begin
  Result:='()* loopback of 247:65: ( abstract_declarator_suffix )*';
end;


function TCParser.TAntlrDFA39.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TCParser(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[39,8] := input.LA(1);

		         
		        _index['39_8'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred65_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['39_8']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 1 : 
		      begin
		        _LA[39,12] := input.LA(1);

		         
		        _index['39_12'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred65_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['39_12']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 2 : 
		      begin
		        _LA[39,13] := input.LA(1);

		         
		        _index['39_13'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred65_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['39_13']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 3 : 
		      begin
		        _LA[39,14] := input.LA(1);

		         
		        _index['39_14'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred65_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['39_14']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 4 : 
		      begin
		        _LA[39,15] := input.LA(1);

		         
		        _index['39_15'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred65_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['39_15']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 5 : 
		      begin
		        _LA[39,16] := input.LA(1);

		         
		        _index['39_16'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred65_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['39_16']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 6 : 
		      begin
		        _LA[39,17] := input.LA(1);

		         
		        _index['39_17'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred65_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['39_17']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 7 : 
		      begin
		        _LA[39,18] := input.LA(1);

		         
		        _index['39_18'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred65_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['39_18']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 8 : 
		      begin
		        _LA[39,19] := input.LA(1);

		         
		        _index['39_19'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred65_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['39_19']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 9 : 
		      begin
		        _LA[39,20] := input.LA(1);

		         
		        _index['39_20'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred65_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['39_20']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 10 : 
		      begin
		        _LA[39,21] := input.LA(1);

		         
		        _index['39_21'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred65_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['39_21']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 11 : 
		      begin
		        _LA[39,22] := input.LA(1);

		         
		        _index['39_22'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred65_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['39_22']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 12 : 
		      begin
		        _LA[39,23] := input.LA(1);

		         
		        _index['39_23'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred65_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['39_23']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 13 : 
		      begin
		        _LA[39,24] := input.LA(1);

		         
		        _index['39_24'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred65_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['39_24']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 14 : 
		      begin
		        _LA[39,25] := input.LA(1);

		         
		        _index['39_25'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred65_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['39_25']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 15 : 
		      begin
		        _LA[39,26] := input.LA(1);

		         
		        _index['39_26'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred65_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['39_26']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 16 : 
		      begin
		        _LA[39,27] := input.LA(1);

		         
		        _index['39_27'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred65_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['39_27']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 17 : 
		      begin
		        _LA[39,28] := input.LA(1);

		         
		        _index['39_28'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred65_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['39_28']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 18 : 
		      begin
		        _LA[39,29] := input.LA(1);

		         
		        _index['39_29'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred65_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['39_29']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 19 : 
		      begin
		        _LA[39,30] := input.LA(1);

		         
		        _index['39_30'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred65_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['39_30']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 20 : 
		      begin
		        _LA[39,31] := input.LA(1);

		         
		        _index['39_31'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred65_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['39_31']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 21 : 
		      begin
		        _LA[39,32] := input.LA(1);

		         
		        _index['39_32'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred65_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['39_32']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 22 : 
		      begin
		        _LA[39,33] := input.LA(1);

		         
		        _index['39_33'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred65_C()) ) then 
		        begin 
		          s := 34;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 1;
		        end
		        ;

		         
		        input.seek(_index['39_33']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
	end;
    if (state.backtracking>0) then 
    begin
      state.failed:=true;
      Result:=-1;
      Exit;
    end;
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 39, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TCParser.getDfa40:IDFA;
begin
  if not Assigned(dfa40) then
    dfa40:=TAntlrDFA40.Create(self);
  Result:=dfa40;  
end;

constructor TCParser.TAntlrDFA40.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=40;
  feot:=unpackEncodedString('\32\uffff');
  feof:=unpackEncodedString('\32\uffff');

  FMinc:=unpackEncodedString('\1\60\2\4\27\uffff');

  FMaxc:=unpackEncodedString('\1\62\1\101\1\61\27\uffff');
  faccept:=unpackEncodedString('\3\uffff\1\1\1\2\6\uffff\1\3\1\4\15\uffff');
  fspecial:=unpackEncodedString('\32\uffff');
  AddTransition(unpackEncodedString('\1\2\1\uffff\1\1'));
  AddTransition(unpackEncodedString('\7\4\45\uffff\1\4\2\uffff\1\3\1\4\1'+
  '\uffff\2\4\2\uffff\3\4\2\uffff\3\4'));
  AddTransition(unpackEncodedString('\1\14\26\uffff\15\14\2\uffff\2\14\1'+
  '\uffff\3\14\1\uffff\1\13'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA40.getDescription():string;
begin
  Result:='250:1: abstract_declarator_suffix : ( ''['' '']'' | ''['' constant_expression '']'' | ''('+
  ''' '')'' | ''('' parameter_type_list '')'' );';
end;




function TCParser.getDfa43:IDFA;
begin
  if not Assigned(dfa43) then
    dfa43:=TAntlrDFA43.Create(self);
  Result:=dfa43;  
end;

constructor TCParser.TAntlrDFA43.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=43;
  feot:=unpackEncodedString('\14\uffff');
  feof:=unpackEncodedString('\14\uffff');

  FMinc:=unpackEncodedString('\1\31\1\4\12\uffff');

  FMaxc:=unpackEncodedString('\1\51\1\101\12\uffff');
  faccept:=unpackEncodedString('\2\uffff\1\2\1\uffff\1\1\7\uffff');
  fspecial:=unpackEncodedString('\14\uffff');
  AddTransition(unpackEncodedString('\1\1\17\uffff\1\2'));
  AddTransition(unpackEncodedString('\7\4\35\uffff\1\4\1\2\6\uffff\1\4\3'+
  '\uffff\1\4\1\uffff\2\4\2\uffff\3\4\2\uffff\3\4'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA43.getDescription():string;
begin
  Result:='()* loopback of 263:16: ( '','' initializer )*';
end;




function TCParser.getDfa45:IDFA;
begin
  if not Assigned(dfa45) then
    dfa45:=TAntlrDFA45.Create(self);
  Result:=dfa45;  
end;

constructor TCParser.TAntlrDFA45.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=45;
  feot:=unpackEncodedString('\23\uffff');
  feof:=unpackEncodedString('\1\1\22\uffff');

  FMinc:=unpackEncodedString('\1\30\22\uffff');

  FMaxc:=unpackEncodedString('\1\130\22\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\3\17\uffff\1\1\1\2');
  fspecial:=unpackEncodedString('\23\uffff');
  AddTransition(unpackEncodedString('\2\1\17\uffff\1\1\2\uffff\1\1\4\uffff'+
  '\1\1\1\uffff\1\1\2\uffff\1\21\1\22\7\uffff\1\1\14\uffff\15\1'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA45.getDescription():string;
begin
  Result:='()* loopback of 273:32: ( ''+'' multiplicative_expression | ''-'' multiplicative_exp'+
  'ression )*';
end;




function TCParser.getDfa46:IDFA;
begin
  if not Assigned(dfa46) then
    dfa46:=TAntlrDFA46.Create(self);
  Result:=dfa46;  
end;

constructor TCParser.TAntlrDFA46.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=46;
  feot:=unpackEncodedString('\26\uffff');
  feof:=unpackEncodedString('\1\1\25\uffff');

  FMinc:=unpackEncodedString('\1\30\25\uffff');

  FMaxc:=unpackEncodedString('\1\130\25\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\4\21\uffff\1\1\1\2\1\3');
  fspecial:=unpackEncodedString('\26\uffff');
  AddTransition(unpackEncodedString('\2\1\17\uffff\1\1\2\uffff\1\1\4\uffff'+
  '\1\1\1\uffff\1\1\1\23\1\uffff\2\1\1\24\1\25\5\uffff\1\1\14\uffff\15\1'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA46.getDescription():string;
begin
  Result:='()* loopback of 277:22: ( ''*'' cast_expression | ''/'' cast_expression | ''%'' cast_e'+
  'xpression )*';
end;




function TCParser.getDfa47:IDFA;
begin
  if not Assigned(dfa47) then
    dfa47:=TAntlrDFA47.Create(self);
  Result:=dfa47;  
end;

constructor TCParser.TAntlrDFA47.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=47;
  feot:=unpackEncodedString('\33\uffff');
  feof:=unpackEncodedString('\33\uffff');

  FMinc:=unpackEncodedString('\2\4\22\uffff\1\0\6\uffff');

  FMaxc:=unpackEncodedString('\2\101\22\uffff\1\0\6\uffff');
  faccept:=unpackEncodedString('\2\uffff\1\2\5\uffff\1\1\22\uffff');
  fspecial:=unpackEncodedString('\24\uffff\1\0\6\uffff');
  AddTransition(unpackEncodedString('\7\2\45\uffff\1\1\3\uffff\1\2\1\uffff'+
  '\2\2\2\uffff\3\2\2\uffff\3\2'));
  AddTransition(unpackEncodedString('\1\24\6\2\24\uffff\11\10\2\uffff\2'+
  '\10\1\uffff\3\10\1\2\3\uffff\1\2\1\uffff\2\2\2\uffff\3\2\2\uffff\3\2'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA47.getDescription():string;
begin
  Result:='280:1: cast_expression : ( ''('' type_name '')'' cast_expression | unary_expression '+
  ');';
end;


function TCParser.TAntlrDFA47.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TCParser(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[47,20] := input.LA(1);

		         
		        _index['47_20'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred78_C()) ) then 
		        begin 
		          s := 8;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 2;
		        end
		        ;

		         
		        input.seek(_index['47_20']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
	end;
    if (state.backtracking>0) then 
    begin
      state.failed:=true;
      Result:=-1;
      Exit;
    end;
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 47, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TCParser.getDfa48:IDFA;
begin
  if not Assigned(dfa48) then
    dfa48:=TAntlrDFA48.Create(self);
  Result:=dfa48;  
end;

constructor TCParser.TAntlrDFA48.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=48;
  feot:=unpackEncodedString('\20\uffff');
  feof:=unpackEncodedString('\20\uffff');

  FMinc:=unpackEncodedString('\1\4\6\uffff\1\4\1\0\7\uffff');

  FMaxc:=unpackEncodedString('\1\101\6\uffff\1\101\1\0\7\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\1\2\uffff\1\2\1\3\1\4\2\uffff'+
    '\1\5\5\uffff\1\6');
  fspecial:=unpackEncodedString('\10\uffff\1\0\7\uffff');
  AddTransition(unpackEncodedString('\7\1\45\uffff\1\1\3\uffff\1\6\1\uffff'+
  '\2\6\2\uffff\1\4\1\5\1\7\2\uffff\3\6'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\7\11\45\uffff\1\10\3\uffff\1\11\1'+
  '\uffff\2\11\2\uffff\3\11\2\uffff\3\11'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA48.getDescription():string;
begin
  Result:='285:1: unary_expression : ( postfix_expression | ''++'' unary_expression | ''--'' un'+
  'ary_expression | unary_operator cast_expression | ''sizeof'' unary_expression | ''s'+
  'izeof'' ''('' type_name '')'' );';
end;


function TCParser.TAntlrDFA48.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TCParser(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[48,8] := input.LA(1);

		         
		        _index['48_8'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred83_C()) ) then 
		        begin 
		          s := 9;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['48_8']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
	end;
    if (state.backtracking>0) then 
    begin
      state.failed:=true;
      Result:=-1;
      Exit;
    end;
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 48, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TCParser.getDfa49:IDFA;
begin
  if not Assigned(dfa49) then
    dfa49:=TAntlrDFA49.Create(self);
  Result:=dfa49;  
end;

constructor TCParser.TAntlrDFA49.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=49;
  feot:=unpackEncodedString('\45\uffff');
  feof:=unpackEncodedString('\1\1\44\uffff');

  FMinc:=unpackEncodedString('\1\30\27\uffff\1\4\14\uffff');

  FMaxc:=unpackEncodedString('\1\130\27\uffff\1\101\14\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\10\25\uffff\1\1\1\uffff\1\4\1'+
    '\5\1\6\1\7\1\2\1\3\6\uffff');
  fspecial:=unpackEncodedString('\45\uffff');
  AddTransition(unpackEncodedString('\3\1\16\uffff\1\1\2\uffff\1\1\3\uffff'+
  '\1\30\1\1\1\27\2\1\1\uffff\4\1\1\33\1\34\1\uffff\1\31\1\32\1\1\2\uffff'+
  '\27\1'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\7\36\45\uffff\1\36\1\35\2\uffff\1'+
  '\36\1\uffff\2\36\2\uffff\3\36\2\uffff\3\36'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA49.getDescription():string;
begin
  Result:='()* loopback of 296:9: ( ''['' expression '']'' | ''('' '')'' | ''('' argument_expression_'+
  'list '')'' | ''.'' IDENTIFIER | ''->'' IDENTIFIER | ''++'' | ''--'' )*';
end;




function TCParser.getDfa52:IDFA;
begin
  if not Assigned(dfa52) then
    dfa52:=TAntlrDFA52.Create(self);
  Result:=dfa52;  
end;

constructor TCParser.TAntlrDFA52.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=52;
  feot:=unpackEncodedString('\157\uffff');
  feof:=unpackEncodedString('\1\uffff\2\17\154\uffff');

  FMinc:=unpackEncodedString('\1\4\2\30\5\4\6\0\26\uffff\6\0\26\uffff\7'+
    '\0\14\uffff\34\0');

  FMaxc:=unpackEncodedString('\1\101\2\130\5\101\6\0\26\uffff\6\0\26\uffff'+
    '\7\0\14\uffff\34\0');
  faccept:=unpackEncodedString('\16\uffff\1\1\1\2\137\uffff');
  fspecial:=unpackEncodedString('\10\uffff\1\0\1\1\1\2\1\3\1\4\1\5\26\uffff'+
    '\1\6\1\7\1\10\1\11\1\12\1\13\26\uffff\1\14\1\15\1\16\1\17\1\20\1\21'+
    '\1\22\14\uffff\1\23\1\24\1\25\1\26\1\27\1\30\1\31\1\32\1\33\1\34\1\35'+
    '\1\36\1\37\1\40\1\41\1\42\1\43\1\44\1\45\1\46\1\47\1\50\1\51\1\52\1'+
    '\53\1\54\1\55\1\56');
  AddTransition(unpackEncodedString('\1\1\6\2\45\uffff\1\3\3\uffff\1\6\1'+
  '\uffff\2\6\2\uffff\1\4\1\5\1\7\2\uffff\3\6'));
  AddTransition(unpackEncodedString('\2\17\1\16\16\uffff\1\17\2\uffff\1'+
  '\17\3\uffff\1\11\1\17\1\10\2\17\1\uffff\4\17\1\14\1\15\1\uffff\1\12\1'+
  '\13\1\17\2\uffff\12\16\15\17'));
  AddTransition(unpackEncodedString('\2\17\1\16\16\uffff\1\17\2\uffff\1'+
  '\17\3\uffff\1\45\1\17\1\44\2\17\1\uffff\4\17\1\50\1\51\1\uffff\1\46\1'+
  '\47\1\17\2\uffff\12\16\15\17'));
  AddTransition(unpackEncodedString('\1\100\6\101\24\uffff\11\17\2\uffff'+
  '\2\17\1\uffff\3\17\1\102\3\uffff\1\105\1\uffff\2\105\2\uffff\1\103\1\104'+
  '\1\106\2\uffff\3\105'));
  AddTransition(unpackEncodedString('\1\123\6\124\45\uffff\1\125\3\uffff'+
  '\1\130\1\uffff\2\130\2\uffff\1\126\1\127\1\131\2\uffff\3\130'));
  AddTransition(unpackEncodedString('\1\132\6\133\45\uffff\1\134\3\uffff'+
  '\1\137\1\uffff\2\137\2\uffff\1\135\1\136\1\140\2\uffff\3\137'));
  AddTransition(unpackEncodedString('\1\142\6\143\45\uffff\1\141\3\uffff'+
  '\1\146\1\uffff\2\146\2\uffff\1\144\1\145\1\147\2\uffff\3\146'));
  AddTransition(unpackEncodedString('\1\151\6\152\45\uffff\1\150\3\uffff'+
  '\1\155\1\uffff\2\155\2\uffff\1\153\1\154\1\156\2\uffff\3\155'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
end;

function TCParser.TAntlrDFA52.getDescription():string;
begin
  Result:='340:1: assignment_expression : ( lvalue assignment_operator assignment_expressio'+
  'n | conditional_expression );';
end;


function TCParser.TAntlrDFA52.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TCParser(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[52,8] := input.LA(1);

		         
		        _index['52_8'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_8']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 1 : 
		      begin
		        _LA[52,9] := input.LA(1);

		         
		        _index['52_9'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_9']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 2 : 
		      begin
		        _LA[52,10] := input.LA(1);

		         
		        _index['52_10'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_10']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 3 : 
		      begin
		        _LA[52,11] := input.LA(1);

		         
		        _index['52_11'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_11']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 4 : 
		      begin
		        _LA[52,12] := input.LA(1);

		         
		        _index['52_12'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_12']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 5 : 
		      begin
		        _LA[52,13] := input.LA(1);

		         
		        _index['52_13'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_13']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 6 : 
		      begin
		        _LA[52,36] := input.LA(1);

		         
		        _index['52_36'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_36']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 7 : 
		      begin
		        _LA[52,37] := input.LA(1);

		         
		        _index['52_37'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_37']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 8 : 
		      begin
		        _LA[52,38] := input.LA(1);

		         
		        _index['52_38'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_38']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 9 : 
		      begin
		        _LA[52,39] := input.LA(1);

		         
		        _index['52_39'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_39']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 10 : 
		      begin
		        _LA[52,40] := input.LA(1);

		         
		        _index['52_40'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_40']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 11 : 
		      begin
		        _LA[52,41] := input.LA(1);

		         
		        _index['52_41'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_41']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 12 : 
		      begin
		        _LA[52,64] := input.LA(1);

		         
		        _index['52_64'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_64']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 13 : 
		      begin
		        _LA[52,65] := input.LA(1);

		         
		        _index['52_65'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_65']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 14 : 
		      begin
		        _LA[52,66] := input.LA(1);

		         
		        _index['52_66'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_66']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 15 : 
		      begin
		        _LA[52,67] := input.LA(1);

		         
		        _index['52_67'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_67']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 16 : 
		      begin
		        _LA[52,68] := input.LA(1);

		         
		        _index['52_68'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_68']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 17 : 
		      begin
		        _LA[52,69] := input.LA(1);

		         
		        _index['52_69'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_69']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 18 : 
		      begin
		        _LA[52,70] := input.LA(1);

		         
		        _index['52_70'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_70']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 19 : 
		      begin
		        _LA[52,83] := input.LA(1);

		         
		        _index['52_83'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_83']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 20 : 
		      begin
		        _LA[52,84] := input.LA(1);

		         
		        _index['52_84'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_84']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 21 : 
		      begin
		        _LA[52,85] := input.LA(1);

		         
		        _index['52_85'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_85']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 22 : 
		      begin
		        _LA[52,86] := input.LA(1);

		         
		        _index['52_86'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_86']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 23 : 
		      begin
		        _LA[52,87] := input.LA(1);

		         
		        _index['52_87'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_87']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 24 : 
		      begin
		        _LA[52,88] := input.LA(1);

		         
		        _index['52_88'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_88']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 25 : 
		      begin
		        _LA[52,89] := input.LA(1);

		         
		        _index['52_89'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_89']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 26 : 
		      begin
		        _LA[52,90] := input.LA(1);

		         
		        _index['52_90'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_90']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 27 : 
		      begin
		        _LA[52,91] := input.LA(1);

		         
		        _index['52_91'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_91']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 28 : 
		      begin
		        _LA[52,92] := input.LA(1);

		         
		        _index['52_92'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_92']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 29 : 
		      begin
		        _LA[52,93] := input.LA(1);

		         
		        _index['52_93'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_93']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 30 : 
		      begin
		        _LA[52,94] := input.LA(1);

		         
		        _index['52_94'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_94']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 31 : 
		      begin
		        _LA[52,95] := input.LA(1);

		         
		        _index['52_95'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_95']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 32 : 
		      begin
		        _LA[52,96] := input.LA(1);

		         
		        _index['52_96'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_96']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 33 : 
		      begin
		        _LA[52,97] := input.LA(1);

		         
		        _index['52_97'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_97']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 34 : 
		      begin
		        _LA[52,98] := input.LA(1);

		         
		        _index['52_98'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_98']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 35 : 
		      begin
		        _LA[52,99] := input.LA(1);

		         
		        _index['52_99'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_99']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 36 : 
		      begin
		        _LA[52,100] := input.LA(1);

		         
		        _index['52_100'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_100']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 37 : 
		      begin
		        _LA[52,101] := input.LA(1);

		         
		        _index['52_101'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_101']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 38 : 
		      begin
		        _LA[52,102] := input.LA(1);

		         
		        _index['52_102'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_102']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 39 : 
		      begin
		        _LA[52,103] := input.LA(1);

		         
		        _index['52_103'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_103']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 40 : 
		      begin
		        _LA[52,104] := input.LA(1);

		         
		        _index['52_104'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_104']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 41 : 
		      begin
		        _LA[52,105] := input.LA(1);

		         
		        _index['52_105'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_105']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 42 : 
		      begin
		        _LA[52,106] := input.LA(1);

		         
		        _index['52_106'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_106']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 43 : 
		      begin
		        _LA[52,107] := input.LA(1);

		         
		        _index['52_107'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_107']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 44 : 
		      begin
		        _LA[52,108] := input.LA(1);

		         
		        _index['52_108'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_108']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 45 : 
		      begin
		        _LA[52,109] := input.LA(1);

		         
		        _index['52_109'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_109']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 46 : 
		      begin
		        _LA[52,110] := input.LA(1);

		         
		        _index['52_110'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (synpred104_C()) ) then 
		        begin 
		          s := 14;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['52_110']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
	end;
    if (state.backtracking>0) then 
    begin
      state.failed:=true;
      Result:=-1;
      Exit;
    end;
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 52, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TCParser.getDfa54:IDFA;
begin
  if not Assigned(dfa54) then
    dfa54:=TAntlrDFA54.Create(self);
  Result:=dfa54;  
end;

constructor TCParser.TAntlrDFA54.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=54;
  feot:=unpackEncodedString('\12\uffff');
  feof:=unpackEncodedString('\1\1\11\uffff');

  FMinc:=unpackEncodedString('\1\30\11\uffff');

  FMaxc:=unpackEncodedString('\1\115\11\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\2\7\uffff\1\1');
  fspecial:=unpackEncodedString('\12\uffff');
  AddTransition(unpackEncodedString('\2\1\17\uffff\1\1\2\uffff\1\1\4\uffff'+
  '\1\1\1\uffff\1\1\30\uffff\1\1\1\11'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA54.getDescription():string;
begin
  Result:='()* loopback of 368:27: ( ''||'' logical_and_expression )*';
end;




function TCParser.getDfa55:IDFA;
begin
  if not Assigned(dfa55) then
    dfa55:=TAntlrDFA55.Create(self);
  Result:=dfa55;  
end;

constructor TCParser.TAntlrDFA55.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=55;
  feot:=unpackEncodedString('\13\uffff');
  feof:=unpackEncodedString('\1\1\12\uffff');

  FMinc:=unpackEncodedString('\1\30\12\uffff');

  FMaxc:=unpackEncodedString('\1\116\12\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\2\10\uffff\1\1');
  fspecial:=unpackEncodedString('\13\uffff');
  AddTransition(unpackEncodedString('\2\1\17\uffff\1\1\2\uffff\1\1\4\uffff'+
  '\1\1\1\uffff\1\1\30\uffff\2\1\1\12'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA55.getDescription():string;
begin
  Result:='()* loopback of 372:28: ( ''&&'' inclusive_or_expression )*';
end;




function TCParser.getDfa56:IDFA;
begin
  if not Assigned(dfa56) then
    dfa56:=TAntlrDFA56.Create(self);
  Result:=dfa56;  
end;

constructor TCParser.TAntlrDFA56.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=56;
  feot:=unpackEncodedString('\14\uffff');
  feof:=unpackEncodedString('\1\1\13\uffff');

  FMinc:=unpackEncodedString('\1\30\13\uffff');

  FMaxc:=unpackEncodedString('\1\117\13\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\2\11\uffff\1\1');
  fspecial:=unpackEncodedString('\14\uffff');
  AddTransition(unpackEncodedString('\2\1\17\uffff\1\1\2\uffff\1\1\4\uffff'+
  '\1\1\1\uffff\1\1\30\uffff\3\1\1\13'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA56.getDescription():string;
begin
  Result:='()* loopback of 376:28: ( ''|'' exclusive_or_expression )*';
end;




function TCParser.getDfa57:IDFA;
begin
  if not Assigned(dfa57) then
    dfa57:=TAntlrDFA57.Create(self);
  Result:=dfa57;  
end;

constructor TCParser.TAntlrDFA57.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=57;
  feot:=unpackEncodedString('\15\uffff');
  feof:=unpackEncodedString('\1\1\14\uffff');

  FMinc:=unpackEncodedString('\1\30\14\uffff');

  FMaxc:=unpackEncodedString('\1\120\14\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\2\12\uffff\1\1');
  fspecial:=unpackEncodedString('\15\uffff');
  AddTransition(unpackEncodedString('\2\1\17\uffff\1\1\2\uffff\1\1\4\uffff'+
  '\1\1\1\uffff\1\1\30\uffff\4\1\1\14'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA57.getDescription():string;
begin
  Result:='()* loopback of 380:19: ( ''^'' and_expression )*';
end;




function TCParser.getDfa58:IDFA;
begin
  if not Assigned(dfa58) then
    dfa58:=TAntlrDFA58.Create(self);
  Result:=dfa58;  
end;

constructor TCParser.TAntlrDFA58.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=58;
  feot:=unpackEncodedString('\16\uffff');
  feof:=unpackEncodedString('\1\1\15\uffff');

  FMinc:=unpackEncodedString('\1\30\15\uffff');

  FMaxc:=unpackEncodedString('\1\120\15\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\2\13\uffff\1\1');
  fspecial:=unpackEncodedString('\16\uffff');
  AddTransition(unpackEncodedString('\2\1\17\uffff\1\1\2\uffff\1\1\4\uffff'+
  '\1\1\1\uffff\1\1\13\uffff\1\15\14\uffff\5\1'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA58.getDescription():string;
begin
  Result:='()* loopback of 384:24: ( ''&'' equality_expression )*';
end;




function TCParser.getDfa59:IDFA;
begin
  if not Assigned(dfa59) then
    dfa59:=TAntlrDFA59.Create(self);
  Result:=dfa59;  
end;

constructor TCParser.TAntlrDFA59.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=59;
  feot:=unpackEncodedString('\17\uffff');
  feof:=unpackEncodedString('\1\1\16\uffff');

  FMinc:=unpackEncodedString('\1\30\16\uffff');

  FMaxc:=unpackEncodedString('\1\122\16\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\2\14\uffff\1\1');
  fspecial:=unpackEncodedString('\17\uffff');
  AddTransition(unpackEncodedString('\2\1\17\uffff\1\1\2\uffff\1\1\4\uffff'+
  '\1\1\1\uffff\1\1\13\uffff\1\1\14\uffff\5\1\2\16'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA59.getDescription():string;
begin
  Result:='()* loopback of 387:26: ( ( ''=='' | ''!='' ) relational_expression )*';
end;




function TCParser.getDfa60:IDFA;
begin
  if not Assigned(dfa60) then
    dfa60:=TAntlrDFA60.Create(self);
  Result:=dfa60;  
end;

constructor TCParser.TAntlrDFA60.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=60;
  feot:=unpackEncodedString('\20\uffff');
  feof:=unpackEncodedString('\1\1\17\uffff');

  FMinc:=unpackEncodedString('\1\30\17\uffff');

  FMaxc:=unpackEncodedString('\1\126\17\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\2\15\uffff\1\1');
  fspecial:=unpackEncodedString('\20\uffff');
  AddTransition(unpackEncodedString('\2\1\17\uffff\1\1\2\uffff\1\1\4\uffff'+
  '\1\1\1\uffff\1\1\13\uffff\1\1\14\uffff\7\1\4\17'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA60.getDescription():string;
begin
  Result:='()* loopback of 391:21: ( ( ''<'' | ''>'' | ''<='' | ''>='' ) shift_expression )*';
end;




function TCParser.getDfa61:IDFA;
begin
  if not Assigned(dfa61) then
    dfa61:=TAntlrDFA61.Create(self);
  Result:=dfa61;  
end;

constructor TCParser.TAntlrDFA61.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=61;
  feot:=unpackEncodedString('\21\uffff');
  feof:=unpackEncodedString('\1\1\20\uffff');

  FMinc:=unpackEncodedString('\1\30\20\uffff');

  FMaxc:=unpackEncodedString('\1\130\20\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\2\16\uffff\1\1');
  fspecial:=unpackEncodedString('\21\uffff');
  AddTransition(unpackEncodedString('\2\1\17\uffff\1\1\2\uffff\1\1\4\uffff'+
  '\1\1\1\uffff\1\1\13\uffff\1\1\14\uffff\13\1\2\20'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA61.getDescription():string;
begin
  Result:='()* loopback of 395:24: ( ( ''<<'' | ''>>'' ) additive_expression )*';
end;




function TCParser.getDfa62:IDFA;
begin
  if not Assigned(dfa62) then
    dfa62:=TAntlrDFA62.Create(self);
  Result:=dfa62;  
end;

constructor TCParser.TAntlrDFA62.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=62;
  feot:=unpackEncodedString('\55\uffff');
  feof:=unpackEncodedString('\55\uffff');

  FMinc:=unpackEncodedString('\1\4\1\30\53\uffff');

  FMaxc:=unpackEncodedString('\1\144\1\130\53\uffff');
  faccept:=unpackEncodedString('\2\uffff\1\1\1\uffff\1\2\1\3\6\uffff\1\4'+
    '\1\uffff\1\5\2\uffff\1\6\33\uffff');
  fspecial:=unpackEncodedString('\55\uffff');
  AddTransition(unpackEncodedString('\1\1\6\5\15\uffff\1\5\17\uffff\1\4'+
  '\7\uffff\1\5\3\uffff\1\5\1\uffff\2\5\2\uffff\3\5\2\uffff\3\5\27\uffff'+
  '\2\2\1\14\1\uffff\1\14\3\16\4\21'));
  AddTransition(unpackEncodedString('\3\5\21\uffff\1\2\3\uffff\1\5\1\uffff'+
  '\1\5\1\uffff\1\5\1\uffff\6\5\1\uffff\3\5\2\uffff\27\5'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA62.getDescription():string;
begin
  Result:='400:1: statement : ( labeled_statement | compound_statement | expression_stateme'+
  'nt | selection_statement | iteration_statement | jump_statement );';
end;




function TCParser.getDfa64:IDFA;
begin
  if not Assigned(dfa64) then
    dfa64:=TAntlrDFA64.Create(self);
  Result:=dfa64;  
end;

constructor TCParser.TAntlrDFA64.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=64;
  feot:=unpackEncodedString('\112\uffff');
  feof:=unpackEncodedString('\112\uffff');

  FMinc:=unpackEncodedString('\2\4\44\uffff\1\0\5\uffff\1\0\1\uffff\1\0'+
    '\33\uffff');

  FMaxc:=unpackEncodedString('\1\144\1\130\44\uffff\1\0\5\uffff\1\0\1\uffff'+
    '\1\0\33\uffff');
  faccept:=unpackEncodedString('\2\uffff\1\2\23\uffff\1\1\63\uffff');
  fspecial:=unpackEncodedString('\46\uffff\1\0\5\uffff\1\1\1\uffff\1\2\33'+
    '\uffff');
  AddTransition(unpackEncodedString('\1\1\6\2\14\uffff\1\26\1\2\2\uffff'+
  '\15\26\2\2\2\26\1\uffff\3\26\1\2\3\uffff\1\2\1\uffff\2\2\2\uffff\3\2\2'+
  '\uffff\3\2\27\uffff\3\2\1\uffff\10\2'));
  AddTransition(unpackEncodedString('\1\26\23\uffff\1\56\2\2\15\26\2\uffff'+
  '\2\26\1\2\3\26\1\46\1\uffff\1\2\1\uffff\1\54\1\uffff\6\2\1\uffff\3\2\2'+
  '\uffff\27\2'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA64.getDescription():string;
begin
  Result:='()* loopback of 420:8: ( declaration )*';
end;


function TCParser.TAntlrDFA64.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TCParser(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[64,38] := input.LA(1);

		         
		        _index['64_38'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred136_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 22;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 2;
		        end
		        ;

		         
		        input.seek(_index['64_38']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 1 : 
		      begin
		        _LA[64,44] := input.LA(1);

		         
		        _index['64_44'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred136_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 22;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 2;
		        end
		        ;

		         
		        input.seek(_index['64_44']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 2 : 
		      begin
		        _LA[64,46] := input.LA(1);

		         
		        _index['64_46'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred136_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 22;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 2;
		        end
		        ;

		         
		        input.seek(_index['64_46']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
	end;
    if (state.backtracking>0) then 
    begin
      state.failed:=true;
      Result:=-1;
      Exit;
    end;
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 64, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TCParser.getDfa65:IDFA;
begin
  if not Assigned(dfa65) then
    dfa65:=TAntlrDFA65.Create(self);
  Result:=dfa65;  
end;

constructor TCParser.TAntlrDFA65.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=65;
  feot:=unpackEncodedString('\26\uffff');
  feof:=unpackEncodedString('\26\uffff');

  FMinc:=unpackEncodedString('\1\4\25\uffff');

  FMaxc:=unpackEncodedString('\1\144\25\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\1\23\uffff\1\2');
  fspecial:=unpackEncodedString('\26\uffff');
  AddTransition(unpackEncodedString('\7\1\15\uffff\1\1\17\uffff\1\1\1\25'+
  '\6\uffff\1\1\3\uffff\1\1\1\uffff\2\1\2\uffff\3\1\2\uffff\3\1\27\uffff'+
  '\3\1\1\uffff\10\1'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA65.getDescription():string;
begin
  Result:='420:21: ( statement_list )?';
end;




function TCParser.getDfa66:IDFA;
begin
  if not Assigned(dfa66) then
    dfa66:=TAntlrDFA66.Create(self);
  Result:=dfa66;  
end;

constructor TCParser.TAntlrDFA66.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=66;
  feot:=unpackEncodedString('\27\uffff');
  feof:=unpackEncodedString('\1\1\26\uffff');

  FMinc:=unpackEncodedString('\1\4\26\uffff');

  FMaxc:=unpackEncodedString('\1\144\26\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\2\1\uffff\1\1\23\uffff');
  fspecial:=unpackEncodedString('\27\uffff');
  AddTransition(unpackEncodedString('\7\3\15\uffff\1\3\17\uffff\1\3\1\1'+
  '\6\uffff\1\3\3\uffff\1\3\1\uffff\2\3\2\uffff\3\3\2\uffff\3\3\27\uffff'+
  '\3\3\1\uffff\10\3'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA66.getDescription():string;
begin
  Result:='()+ loopback of 424:4: ( statement )+';
end;




function TCParser.getDfa72:IDFA;
begin
  if not Assigned(dfa72) then
    dfa72:=TAntlrDFA72.Create(self);
  Result:=dfa72;  
end;

constructor TCParser.TAntlrDFA72.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=72;
  feot:=unpackEncodedString('\15\uffff');
  feof:=unpackEncodedString('\15\uffff');

  FMinc:=unpackEncodedString('\1\141\3\uffff\1\4\10\uffff');

  FMaxc:=unpackEncodedString('\1\144\3\uffff\1\101\10\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\1\1\2\1\3\1\uffff\1\4\1\5\6\uffff');
  fspecial:=unpackEncodedString('\15\uffff');
  AddTransition(unpackEncodedString('\1\1\1\2\1\3\1\4'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\7\6\15\uffff\1\5\27\uffff\1\6\3\uffff'+
  '\1\6\1\uffff\2\6\2\uffff\3\6\2\uffff\3\6'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA72.getDescription():string;
begin
  Result:='443:1: jump_statement : ( ''goto'' IDENTIFIER '';'' | ''continue'' '';'' | ''break'' '';'' |'+
  ' ''return'' '';'' | ''return'' expression '';'' );';
end;




function TCParser.getDfa73:IDFA;
begin
  if not Assigned(dfa73) then
    dfa73:=TAntlrDFA73.Create(self);
  Result:=dfa73;  
end;

constructor TCParser.TAntlrDFA73.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=73;
  feot:=unpackEncodedString('\44\uffff');
  feof:=unpackEncodedString('\44\uffff');

  FMinc:=unpackEncodedString('\1\4\14\uffff\1\4\4\uffff\17\0\3\uffff');

  FMaxc:=unpackEncodedString('\1\64\14\uffff\1\64\4\uffff\17\0\3\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\1\15\uffff\1\2\24\uffff');
  fspecial:=unpackEncodedString('\22\uffff\1\0\1\1\1\2\1\3\1\4\1\5\1\6\1'+
    '\7\1\10\1\11\1\12\1\13\1\14\1\15\1\16\3\uffff');
  AddTransition(unpackEncodedString('\1\15\26\uffff\15\1\2\uffff\2\1\1\uffff'+
  '\3\1\1\17\3\uffff\1\17'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\22\22\uffff\1\17\3\uffff\4\24\1'+
  '\25\1\26\1\27\1\30\1\31\1\32\1\33\1\34\1\35\1\17\1\uffff\2\36\1\uffff'+
  '\1\37\2\40\1\23\1\uffff\1\17\1\uffff\1\1'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString('\1\uffff'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA73.getDescription():string;
begin
  Result:='63:6: ( declaration_specifiers )?';
end;


function TCParser.TAntlrDFA73.specialStateTransition(s:Integer;_input:IIntStream):integer;
var
  _s:Integer;
  nvae:ENoViableAltException;
  input: ITokenStream;
begin
  input := _input as ITokenStream;
  _s := s;
  with TCParser(recognizer) do
  begin
	case ( s ) of
		 0 : 
		      begin
		        _LA[73,18] := input.LA(1);

		         
		        _index['73_18'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred2_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['73_18']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 1 : 
		      begin
		        _LA[73,19] := input.LA(1);

		         
		        _index['73_19'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred2_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['73_19']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 2 : 
		      begin
		        _LA[73,20] := input.LA(1);

		         
		        _index['73_20'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred2_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['73_20']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 3 : 
		      begin
		        _LA[73,21] := input.LA(1);

		         
		        _index['73_21'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred2_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['73_21']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 4 : 
		      begin
		        _LA[73,22] := input.LA(1);

		         
		        _index['73_22'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred2_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['73_22']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 5 : 
		      begin
		        _LA[73,23] := input.LA(1);

		         
		        _index['73_23'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred2_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['73_23']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 6 : 
		      begin
		        _LA[73,24] := input.LA(1);

		         
		        _index['73_24'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred2_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['73_24']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 7 : 
		      begin
		        _LA[73,25] := input.LA(1);

		         
		        _index['73_25'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred2_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['73_25']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 8 : 
		      begin
		        _LA[73,26] := input.LA(1);

		         
		        _index['73_26'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred2_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['73_26']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 9 : 
		      begin
		        _LA[73,27] := input.LA(1);

		         
		        _index['73_27'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred2_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['73_27']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 10 : 
		      begin
		        _LA[73,28] := input.LA(1);

		         
		        _index['73_28'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred2_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['73_28']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 11 : 
		      begin
		        _LA[73,29] := input.LA(1);

		         
		        _index['73_29'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred2_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['73_29']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 12 : 
		      begin
		        _LA[73,30] := input.LA(1);

		         
		        _index['73_30'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred2_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['73_30']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 13 : 
		      begin
		        _LA[73,31] := input.LA(1);

		         
		        _index['73_31'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred2_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['73_31']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
		 14 : 
		      begin
		        _LA[73,32] := input.LA(1);

		         
		        _index['73_32'] := input.index();
		        input.rewind();
		        s := -1;
		        if ( (((synpred2_C()) and ((isTypeName(input.LT(1).getText()))))) ) then 
		        begin 
		          s := 1;
		        end

		        else if ( (true) ) then 
		        begin 
		          s := 15;
		        end
		        ;

		         
		        input.seek(_index['73_32']);
		        if ( s>=0 ) then
		        begin
		          Result:= s;
		          Exit;
		        end;

		      end;
	end;
    if (state.backtracking>0) then 
    begin
      state.failed:=true;
      Result:=-1;
      Exit;
    end;
    nvae :=ENoViableAltException.CreateNoViable(getDescription(), 73, _s, input);
    error(nvae);
    raise nvae;
  end;
end;


function TCParser.getDfa74:IDFA;
begin
  if not Assigned(dfa74) then
    dfa74:=TAntlrDFA74.Create(self);
  Result:=dfa74;  
end;

constructor TCParser.TAntlrDFA74.Create(ARecognizer:TAntlrBaseRecognizer);
begin
  inherited Create;
  recognizer:=ARecognizer;
  decisionNumber:=74;
  feot:=unpackEncodedString('\21\uffff');
  feof:=unpackEncodedString('\21\uffff');

  FMinc:=unpackEncodedString('\1\4\20\uffff');

  FMaxc:=unpackEncodedString('\1\57\20\uffff');
  faccept:=unpackEncodedString('\1\uffff\1\2\1\1\16\uffff');
  fspecial:=unpackEncodedString('\21\uffff');
  AddTransition(unpackEncodedString('\1\2\22\uffff\1\2\3\uffff\15\2\1\1'+
  '\1\uffff\2\2\1\uffff\3\2'));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
  AddTransition(unpackEncodedString(''));
end;

function TCParser.TAntlrDFA74.getDescription():string;
begin
  Result:='()* loopback of 63:41: ( declaration )*';
end;



 


//Begin Parser Members Implementation

function TCParser.isTypeName(name:string):Boolean;
var
  I:Integer;
  scope:TSymbols_scope;
begin
  for i := Symbols_stack.size()-1 downto 0  do
  begin
    scope := TSymbols_scope(Symbols_stack[i]);
    if ( scope.types.contains(name) ) then
    begin
	Result:=true;
	Exit;
    end;
  end;
  Result:= false;
end;
 
//End Parser Members Implementation
end.