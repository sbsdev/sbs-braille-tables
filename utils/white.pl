#!/usr/bin/perl
#
# This is a straight port of the corresponding WhiteToLiblouis.java program.
#
use strict;
use warnings;
use utf8;
use File::Basename;
use IO::Handle;
use Braille;

STDERR->autoflush(1);
STDOUT->autoflush(1);

my $gPrgName = basename ($0);

if (@ARGV != 3){
    die "Usage: $gPrgName white.mod_src sbs-de-g2-white.mod sbs-de-g1-white.mod";
}

my ($input, $output2, $output1) = @ARGV;

my ($ifh, $ofh2, $ofh1);
open($ifh, "<:crlf", $input) || die "failed to open '$input' for reading :$!";
open($ofh2, ">", $output2) || die "failed to open '$output2' for writing :$!";
open($ofh1, ">", $output1) || die "failed to open '$output1' for writing :$!";

translate($ifh, $ofh2, $ofh1);

close($ifh) || die "failed to close '$input':$!";
close($ofh2) || die "failed to close '$output2':$!";
close($ofh1) || die "failed to close '$output1':$!";

sub translate {
    my ($ifh, $ofh2, $ofh1) = @_;
    while(my $line = $ifh->getline()){

        my ($ignore, $ink, $kurz, $voll)  = split(/\s+/, $line);
        $ink =~ s/#//g;
        $kurz =~ s/z//g;
        $kurz = hypenCheck($kurz);
        $voll = hypenCheck($voll);

        # Eszett für CH auflösen
        if ( $ink =~ m/ß/ ) {
            my $ink2 = $ink;
            $ink2 =~ s/ß/ss/g;
            my $kurz2 = $kurz;
            $kurz2 =~ s/tß/^/g;
            $kurz2 =~ s/ß/^/g;
            my $voll2 = $voll;
            $voll2 =~ s/t\^/StS/g;
            $voll2 =~ s/\^/SS/g;
            writeLine($ofh2, $ofh1, $ink2, $kurz2, $voll2);
        }

        # Eszett nur alte Rechtschreibung
        if ( $ink =~ m/~/ ) {
            my $ink2 = $ink;
            $ink2 =~ s/~/s/g;
            my $voll2 = $voll;
            $voll2 =~ s/§/SS/g;
            writeLine($ofh2, $ofh1, $ink2, $kurz, $voll2);
        }
        my $ink2 = $ink;
        $ink2 =~ s/s~/ß/g;
        writeLine($ofh2, $ofh1, $ink2, $kurz, $voll);
    }
}

sub writeLine {
    my($ofh2, $ofh1, $ink, $kurz, $voll) = @_;
    $ofh2->print("word $ink ".Braille::din2dots($kurz).$/);
    $ofh1->print("word $ink ".Braille::din2dots($voll).$/);
}

sub hypenCheck {
    my ($s) = @_;
    # Trennmarke an Position 2 nach Wortgrenze eliminieren.
    $s =~ s/(w.)[ant]/$1/g;
    # Trennmarke an Position 2 im Wort eliminieren
    $s =~ s/^(.)[want]/$1/ if (length($s) > 2);
    $s;
}