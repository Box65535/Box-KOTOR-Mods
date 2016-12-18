use Cwd;
use Win32::FileOp;

my $base = getcwd;
my $file;
my $line;
my $text;
my $text_check = 0;
my $current_string = 0;
my $offset_from_start = 0;

my $number;
my $test_line;

my @args = @ARGV;

my %languages = qw/
English 0
French 1
German 2
Italian 3
Spanish 4
Polish 5
Korean 128
Chinese_Traditional 129
Chinese_Simplified 130
Japanese 131
/;

my %info;

print 
"Welcome to the TXT->TLK converter, a tool designed to convert TXT files to the
TLK format for the Knights of the Old Republic 1 and 2.

Upon selecting a TXT file, it will be processed and written to a .TLK file
in the same directory as this tool.

The format for the .txt file is as follows:

   Header:
      Language:
      Number of Strings:

Then for each string:

    String <TLK StrRef>:
      Flags:
        Sound: <Yes/No>
        SoundLength:
        Text Present: <Yes/No>
      Audio:
      Text:

";

if(scalar @args < 1)
{
    print "We need a path to write the output to!

Would you like to select a path? [Will default to this folder if no.] (Y\\N): ";

    my $p = <STDIN>;
    chomp $p;

    if($p =~ /y|Y/)
    {
        print "Please enter a path below: ";

        $p = <STDIN>;
        chomp $p;
    }
    else
    {
        $p = $base;
    }

    push (@args, $p);
}

print "To begin, please press Enter to select a TXT file.

";

my $f = <STDIN>;

my $file = OpenDialog(
			title=>"Select a TXT File...",
			filters=>["Plain-Text Document(.txt)"=>'*.txt'],
			options=>OFN_FILEMUSTEXIST|OFN_HIDEREADONLY
		     );

open (TXT, "<", $file);
open (TLK, ">", $args[0] . "\\TXT-TLK.tlk");
binmode TLK;

while($line = <TXT>)
{
    if($line =~ /Language:\s(.*)/)
    {
        $number = 0; $test_line = $1;
    }
    if($line =~ /Number of Strings:\s(.*)/)
    {
        $number = 1; $test_line = $1;
    }

    if($line =~ /String (.*):/)
    {
        $number = 2; $test_line = $1;
    }

    # Flags
    if($line =~ /Sound: (.*)/)
    {
        $number = 10; $test_line = $1;
    }
    if($line =~ /SoundLength: (.*)/)
    {
        $number = 11; $test_line = $1;
    }
    if($line =~ /Text Present: (.*)/)
    {
        $number = 12; $test_line = $1;
    }

    # Audio
    if($line =~ /Audio: (.*)/)
    {
        $number = 20; $test_line = $1;
    }

    # Text
    if($line =~ /----------/)
    {#print "Found 31\n";
        $number = 30;
    }
    if($line =~ /^[A-Z]|[0-9]|-|\n/)
    {
        if($number != 2)
        {
            if($line !~ /----------/)
            {
                if($text_check == 1)
                {#print "Found\n";
                    $number = 31;
                }
            }
        }
    }
    if($line =~ /Text: (.*)/s)
    {
        $number = 32; $test_line = $1; $text_check = 1;
    }

###############################################################################
    if($number == 0)
    {
#        print "Line: $1\n";
        $info{'language'} = $test_line;
    }
    if($number == 1)
    {
        $info{'scount'} = $test_line+1;
        $info{'soffset'} = 40*$info{'scount'}+20;
#        $offset_from_start = $info{'soffset'};
    }
    if($number == 2)
    {
        print "String $current_string\n";
        $current_string = $test_line;
    }
    if($number == 10)
    {
        print "Flags $current_string\n";
        if($test_line eq 'Yes') { $Strings{$current_string}{Flags} = 2; }
        if($test_line eq 'No') { $Strings{$current_string}{Flags} = 0; }
    }
    if($number == 11)
    {
        $Strings{$current_string}{Flags} += 4;
        $Strings{$current_string}{SoundLength} = $test_line;
    }
    if($number == 12)
    {
        if($test_line eq 'Yes') { $Strings{$current_string}{Flags} += 1; }
        if($test_line eq 'No') { $Strings{$current_string}{Flags} += 0; }
    }
    if($number == 20)
    {
        my $audio = $test_line;
        if($audio =~ /^[A-Z|a-z|_]/)
        {
#            print "Audio: $audio\n";
            $Strings{$current_string}{Audio} = $audio;
        }
        else
        {
            $Strings{$current_string}{Audio} = "                ";
        }
    }
    if($number == 30)
    {
        $text_check = 0;
#        print "String $current_string\n Text: $text";
        $Strings{$current_string}{Text} = $text;
        $Strings{$current_string}{Size} = length($text);
#        print "Length: " . length($text) . "Text: $text\n";
        $text = "";
    }
    if($number == 31)
    {
        $text .= $line;
    }
    if($number == 32)
    {
        $text .= $1;
    }

    $number = undef;

}

# Header
syswrite TLK, "TLK V3.0";
syswrite TLK, pack('V', $languages{$info{'Language'}});
syswrite TLK, pack('V', $info{'scount'});
syswrite TLK, pack('V', $info{'soffset'});

# String info
foreach my $new_string (sort { $a <=> $b } keys %Strings)
{
    print "New String: $new_string\n";
    syswrite TLK, pack('V', $Strings{$new_string}{Flags});

    if(length $Strings{$new_string}{Audio} < 16)
    {
        my $sample = $Strings{$new_string}{Audio};
        my $nu = 16 - length $Strings{$new_string}{Audio};
        foreach(1 .. $nu)
        {
            $Strings{$new_string}{Audio} = $sample .= " ";
        }
    }

    syswrite TLK, $Strings{$new_string}{Audio};
    syswrite TLK, pack('V', 0);
    syswrite TLK, pack('V', 0);
    # String Position
#    print "String $new_string\tOffset: $offset_from_start\n";
    syswrite TLK, pack('V', $offset_from_start);
    $offset_from_start += $Strings{$new_string}{Size}-1;

    syswrite TLK, pack('V', $Strings{$new_string}{Size}-1);
    syswrite TLK, pack('V', $Strings{$new_string}{SoundLength});
}

# Strings
foreach my $old_string (sort { $a <=> $b } keys %Strings)
{
    print "Adding $old_string\n";
    $_ = $Strings{$old_string}{Text};
    chomp $_;
    my $stri = $_;
#    print "String: $old_string\nText: $Strings{$old_string}{Text}\n";
    if($old_string == 0)
    {
        sysseek TLK, $info{'soffset'}, 0;
    }
    syswrite TLK, $stri;
}

close TLK;
close TXT;