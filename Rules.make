MING_VER = 0.3a

OS             = $(shell uname -s)

CC             = gcc

INCLUDES       := -I. $(INCLUDES)
LDLIBS         = $(LIBS)

STATICLIB      = libming.a
SHAREDLIB      = libming.so.$(MING_VER)

override CFLAGS                := -g -Wall $(INCLUDES) $(CFLAGS)
override LDFLAGS       :=  $(LDFLAGS)

SHLIBLDFLAGS   = -static

ifeq ($(OS), Darwin)
       override CFLAGS         += -fno-common
       SHLIBLDFLAGS            = -dynamiclib
       SHAREDLIB                       = libming.$(MING_VER).dylib
else
endif