#include "hrr_rb_ext_practice.h"
#include <stdio.h>

VALUE rb_cHrrRbExtPractice;

VALUE
singleton_method(VALUE self)
{
  return rb_str_new2("singleton method");
}

VALUE
instance_method(VALUE self)
{
  return rb_str_new2("instance method");
}

VALUE
private_method(VALUE self)
{
  return rb_str_new2("private method");
}

VALUE
syscall_error(VALUE self)
{
  FILE *fp;
  char path[] = "file/does/not/exist";
  fp = fopen(path, "r");
  if (fp == NULL)
    rb_sys_fail(path);
  fclose(fp);
  return Qnil;
}

void
Init_hrr_rb_ext_practice(void)
{
  rb_cHrrRbExtPractice = rb_define_class("HrrRbExtPractice", rb_cObject);
  rb_define_singleton_method(rb_cHrrRbExtPractice, "singleton_method", singleton_method, 0);
  rb_define_method(rb_cHrrRbExtPractice, "instance_method", instance_method, 0);
  rb_define_private_method(rb_cHrrRbExtPractice, "private_method", private_method, 0);
  rb_define_singleton_method(rb_cHrrRbExtPractice, "syscall_error", syscall_error, 0);
}
