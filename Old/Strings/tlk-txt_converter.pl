use Bioware::TLK;
use Cwd;
use Win32::FileOp;

my $base = getcwd;
my $file;
my $file_pos;

my @args = @ARGV;

my %languages = qw/
0 English
1 French
2 German
3 Italian
4 Spanish
5 Polish
128 Korean
129 Chinese_Traditional
130 Chinese_Simplified
131 Japanese
/;

my %info;

print 
"Welcome to the TLK->TXT converter, a tool designed to convert the TLK files for
the Knights of the Old Republic 1 and 2 to a .txt format for use in any common
word-processing application.

Upon selecting a TLK file, it will be processed and written to a .txt file
in the same directory as this tool.

The format is as follows:

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

print "To begin, please press Enter to select a TLK file.

";

my $f = <STDIN>;

my $file = OpenDialog(
			title=>"Select a TLK File...",
			filters=>["KotOR/TSL TLK file"=>'*.tlk'],
			options=>OFN_FILEMUSTEXIST|OFN_HIDEREADONLY
		     );

open (TLK, "<", $file);

seek TLK, 0, 0;
read TLK, $info{'version'}, 8;
read TLK, (my $lang), 4;
read TLK, (my $scount), 4;
read TLK, (my $soffset), 4;

$info{'language'} = $languages{unpack("V", $lang)};
$info{'scount'} = unpack("V", $scount)-1;
$info{'soffset'} = unpack("V", $soffset);

open (TXT, ">", $args[0] . "\\TLK-Txt.txt");
print TXT "Header:\n";
print TXT "  Language: $info{'language'}\n";
print TXT "  Number of Strings: $info{'scount'}\n";

foreach(0 .. $info{'scount'})
{
    my $flags_text;
    my $flags_sound;
    my $flags_soulen;

    my $string_num = $_;
    seek TLK, 20+(40*$string_num), 0;
    read TLK, my $flags_un, 4;
    read TLK, my $sound, 16;
    read TLK, my $blanks, 8;
    read TLK, my $offset_p, 4;
    read TLK, my $size_p, 4;
    read TLK, my $soulen, 4;

    my $flags = unpack('V', $flags_un);
    my $string_off = unpack('V', $offset_p);
    my $string_size = unpack('V', $size_p);
    $soureal = "0.0";

    if($flags == 1)
    {
        $flags_text = "Yes";
        $flags_sound = "No";
        $flags_soulen = "0.0";
    }
    elsif($flags == 2)
    {
        $flags_text = "No";
        $flags_sound = "Yes";
        $flags_soulen = "0.0";
    }
    elsif($flags == 3)
    {
        $flags_text = "Yes";
        $flags_sound = "Yes";
        $flags_soulen = "0.0";
    }
    elsif($flags == 4)
    {
        $flags_text = "No";
        $flags_sound = "No";
        $flags_soulen = $soureal;
    }
    elsif($flags == 5)
    {
        $flags_text = "Yes";
        $flags_sound = "No";
        $flags_soulen = $soureal;
    }
    elsif($flags == 6)
    {
        $flags_text = "No";
        $flags_sound = "Yes";
        $flags_soulen = $soureal;
    }
    elsif($flags == 7)
    {
        $flags_text = "Yes";
        $flags_sound = "Yes";
        $flags_soulen = $soureal;
    }

    seek TLK, $info{'soffset'} + $string_off, 0;
    read TLK, my $string, $string_size;

    print TXT "\nString $string_num:\n";
    print TXT "  Flags:\n    Sound: $flags_sound\n    SoundLength: $flags_soulen\n    Text Present: $flags_text\n";
    print TXT "  Audio: $sound\n";
    print TXT "  Text: $string\n----------";
}

close TLK;
close TXT;