#!/usr/bin/perl -w
# Generated by swftoperl converter included with ming. Have fun. 

# Change this to your needs. If you installed perl-ming global you don't need this.
#use lib("/home/peter/mystuff/lib/site_perl");

# We import all because our converter is not so clever to select only needed. ;-)
use SWF qw(:ALL);
# Just copy from a sample, needed to use Constants like SWFFILL_RADIAL_GRADIENT
use SWF::Constants qw(:Text :Button :DisplayItem :Fill);

die "Usage: ".$0." <sourcedir>\n" unless @ARGV;
$mediadir="$ARGV[0]/../Media";

$m = SWF::Movie::newSWFMovieWithVersion(8);

SWF::setScale(1.0);
#Unknown block type 69

# SWF_DEFINELOSSLESS 

# Bitmap 1 (lossless). To extract:

# swfextract -p 1 -o character1.png $swf
$character1 = new SWF::Bitmap($mediadir . '/image01.png');

# SWF_DEFINESHAPE3 

# Shape 2 (TYPE=3, RECT=-10,2010 -10,2010)
$character2 = new SWF::Shape();
#1 fillstyle(s)
# BitmapID: 1 
$character2_f0 = $character2->addBitmapFill($character1,SWFFILL_CLIPPED_BITMAP);
$character2_f0->scaleTo(20.000000);
#1 linestyles(s)
$character2_l0_width = 20;
$character2_l0_red   = 0x00;
$character2_l0_green = 0x00;
$character2_l0_blue  = 0x00;
$character2_l0_alpha = 0xff;
# StateLineStyle: 1 
$character2->setLine($character2_l0_width, $character2_l0_red, $character2_l0_green, $character2_l0_blue, $character2_l0_alpha);
$character2->setRightFill($character2_f0);
$character2->drawLine(2000, 0);
$character2->drawLine(0, 2000);
$character2->drawLine(-2000, 0);
$character2->drawLine(0, -2000);

# SWF_PLACEOBJECT2 
$i1 = $m->add($character2);
$i1->setDepth(1);
# PlaceFlagHasMatrix 

# SWF_SHOWFRAME 
$m->nextFrame(); # end of frame 1 

# SWF_END 

$m->save("test05.swf");