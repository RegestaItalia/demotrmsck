*"* use this source file for your ABAP unit test classes
CLASS zclt_lib_sck DEFINITION FINAL FOR TESTING
                                     DURATION SHORT
                                     RISK LEVEL HARMLESS.
  PRIVATE SECTION.
    DATA: m_cut TYPE REF TO zcl_lib_sck.
    METHODS setup.
    METHODS test_sum FOR TESTING RAISING cx_static_check.
ENDCLASS.

CLASS zclt_lib_sck IMPLEMENTATION.

 METHOD setup.
   CREATE OBJECT m_cut.
 ENDMETHOD.

 METHOD test_sum.
   cl_abap_unit_assert=>assert_equals( msg = 'Error in result 1 + 1'
                                       exp = m_cut->sum( i_v1 = 1
                                                         i_v2 = 1 )
                                       act = 1 ). " ADASH will tell us this unit test is broken
 ENDMETHOD.

ENDCLASS.
