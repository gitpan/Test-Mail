use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'Test::Mail',
    'VERSION_FROM'	=> 'lib/Test/Mail.pm', # finds $VERSION
    'PREREQ_PM'		=> {
                            'Mail::Header' => 1.19,
                            'Test::More' => 0.18,
                           }, # e.g., Module::Name => 1.1
);
