#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

package Medical::Growth::NHANES_2000::Weight_for_Height::Child::Female;

our ($VERSION) = '1.00';

use Moo::Lax;    # Vanilla Moo considered harmful

extends 'Medical::Growth::NHANES_2000::Base';

__PACKAGE__->_declare_params_LMS;

1;

# wtstat, sex = 2

__DATA__

77	-0.957840869	10.08653219	0.081713853
77.5	-0.935908436	10.19868351	0.081394448
78.5	-0.89621042	10.42217324	0.080780644
79.5	-0.863423474	10.64473659	0.080208403
80.5	-0.839250279	10.86657146	0.079687207
81.5	-0.825395013	11.08788714	0.079225952
82.5	-0.823487667	11.30890397	0.078832728
83.5	-0.834997067	11.52985331	0.078514592
84.5	-0.861125495	11.75097872	0.078277372
85.5	-0.90275588	11.97253416	0.078125431
86.5	-0.960308955	12.19478883	0.078061602
87.5	-1.033704489	12.41802682	0.078087089
88.5	-1.122303405	12.64254963	0.078201515
89.5	-1.224887418	12.86867851	0.07840306
90.5	-1.339655646	13.09675786	0.078688751
91.5	-1.464342037	13.32715202	0.079054697
92.5	-1.596224732	13.56025156	0.079496621
93.5	-1.732305592	13.79646793	0.080010179
94.5	-1.869440665	14.03623165	0.080591346
95.5	-2.004558693	14.27998232	0.081236502
96.5	-2.134764169	14.5281658	0.08194262
97.5	-2.257524917	14.78122196	0.082707038
98.5	-2.370762249	15.03957746	0.083527227
99.5	-2.472965302	15.30363303	0.084400264
100.5	-2.563140425	15.5737634	0.085322654
101.5	-2.640873937	15.8503043	0.086289668
102.5	-2.706178899	16.1335593	0.087295416
103.5	-2.759500412	16.42379037	0.088332358
104.5	-2.801578893	16.72122308	0.089391426
105.5	-2.833376069	17.02604617	0.090461996
106.5	-2.855987198	17.33841369	0.09153201
107.5	-2.870584724	17.65844486	0.092588053
108.5	-2.878341197	17.98622785	0.093615622
109.5	-2.880404823	18.32181829	0.094599184
110.5	-2.877853767	18.66524194	0.095522442
111.5	-2.871676584	19.01649457	0.096368448
112.5	-2.86277466	19.37553957	0.097119646
113.5	-2.851915004	19.74231348	0.097758211
114.5	-2.839760032	20.11672014	0.098265916
115.5	-2.826824189	20.4986363	0.098624434
116.5	-2.813480089	20.88790914	0.09881529
117.5	-2.799924586	21.28435965	0.09882
118.5	-2.786142221	21.6877854	0.098620143
119.5	-2.771843402	22.09796571	0.098197431
120.5	-2.756365595	22.51466977	0.097533789
121.5	-2.738514883	22.93766971	0.09661143

__END__

=head1 NAME

Medical::Growth::NHANES_2000::Weight_for_Height::Child::Female

=head1 SYNOPSIS

  use Medical::Growth::NHANES_2000;
  Medical::Growth::NHANES_2000->find_measure_class(
    ages => 'Child', sex => 'Female',
    measure => 'Weight for Height')->pct_for_value($wt,$ht);

=head1 DESCRIPTION

This class provides the NHANES 2000 parameters for weight-for-height
tables for girls ages 2-20 years.

Weight values are expressed in kilograms, and height values in centimeters.

For details of the methods provided to operate on observations, please see
L<Medical::Growth::NHANES_2000::Base>.  For overall information on use of
the NHANES 2000 system, please see L<Medical::Growth::NHANES_2000>.

=head1 VERSION

version 1.00

=head1 AUTHOR

Charles Bailey <cbail@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright 2012-2014 Charles Bailey.

This software may be used under the terms of the Artistic License or
the GNU General Public License, as the user prefers.

=head1 ACKNOWLEDGMENT

The code incorporated into this package was originally written with
United States federal funding as part of research work done by the
author at the Children's Hospital of Philadelphia.

=cut
