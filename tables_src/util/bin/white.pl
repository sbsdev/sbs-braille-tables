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

print "Done.$/";

sub translate {
    my ($ifh, $ofh2, $ofh1) = @_;
    my $line;
    my $c = 0;
    print "Schreibe ";
    while($line = $ifh->getline()){

        $c++;
        my $i = 0;
        my @fields = split(/\s+/, $line);
        shift @fields; # Codespalte überspringen

        my $ink  = $fields[$i++];
        $ink =~ s/#//g;
        my $kurz = $fields[$i++];
        $kurz =~ s/z//g;
        $kurz = hypenCheck($kurz);
        my $voll = $fields[$i++];
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

        print "." if($c % 25000 == 0);
    }
}

sub writeLine {
    my($ofh2, $ofh1, $ink, $kurz, $voll) = @_;
    $ofh2->print("word $ink ".Braille::din2dots($kurz).$/);
    $ofh1->print("word $ink ".Braille::din2dots($voll).$/);
}

sub hypenCheck {
    my ($s) = @_;
    my $s2 = $s;
    $s2 =~ s/(w.)[ant]/$1/g;
    if (length($s2) > 2){
        $s2 =~ s/^(.)[want]/$1/;
    }
    $s2;
}
