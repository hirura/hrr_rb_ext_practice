#include "hrr_rb_ext_practice.h"

VALUE rb_mHrrRbExtPractice;

void
Init_hrr_rb_ext_practice(void)
{
  rb_mHrrRbExtPractice = rb_define_module("HrrRbExtPractice");
}
