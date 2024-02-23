CLASS zcl_lib_sck DEFINITION
 PUBLIC
 FINAL
 CREATE PUBLIC .
  PUBLIC SECTION.
    CONSTANTS: version TYPE string VALUE '1.0.0'.
    CLASS-METHODS sum
      IMPORTING i_v1            TYPE i
                i_v2            TYPE i
      RETURNING VALUE(r_result) TYPE i.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lib_sck IMPLEMENTATION.

  METHOD sum.
    r_result = i_v1 + i_v2 . " abapLint will tell us something is wrong with this line (space_before_dot)
  ENDMETHOD.

ENDCLASS.

