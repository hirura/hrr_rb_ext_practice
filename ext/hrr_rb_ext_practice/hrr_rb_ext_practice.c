#include "hrr_rb_ext_practice.h"

VALUE rb_cHrrRbExtPractice;

void
Init_hrr_rb_ext_practice(void)
{
  rb_cHrrRbExtPractice = rb_define_class("HrrRbExtPractice", rb_cObject);
}
