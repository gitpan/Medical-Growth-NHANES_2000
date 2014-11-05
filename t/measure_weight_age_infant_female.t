#!/usr/bin/env perl

use strict;

use Test::More tests => 685;

use FindBin;
use lib "$FindBin::Bin/lib";
use My_Growth_Test;

require_ok('Medical::Growth::NHANES_2000::Weight_for_Age::Infant::Female');

my $h = Medical::Growth::NHANES_2000::Weight_for_Age::Infant::Female->new;
My_Growth_Test::run_data_tests($h);

__DATA__
# age %ile value
  0.0	 3	  2.414
  0.0	 5	  2.548
  0.0	10	  2.747
  0.0	25	  3.065
  0.0	50	  3.399
  0.0	75	  3.718
  0.0	90	  3.993
  0.0	95	  4.153
  0.0	97	  4.255
  0.5	 3	  2.757
  0.5	 5	  2.894
  0.5	10	  3.102
  0.5	25	  3.438
  0.5	50	  3.798
  0.5	75	  4.146
  0.5	90	  4.450
  0.5	95	  4.629
  0.5	97	  4.744
  1.5	 3	  3.402
  1.5	 5	  3.548
  1.5	10	  3.770
  1.5	25	  4.139
  1.5	50	  4.545
  1.5	75	  4.947
  1.5	90	  5.306
  1.5	95	  5.519
  1.5	97	  5.657
  2.5	 3	  3.998
  2.5	 5	  4.151
  2.5	10	  4.387
  2.5	25	  4.785
  2.5	50	  5.231
  2.5	75	  5.680
  2.5	90	  6.088
  2.5	95	  6.333
  2.5	97	  6.493
  3.5	 3	  4.547
  3.5	 5	  4.707
  3.5	10	  4.956
  3.5	25	  5.379
  3.5	50	  5.860
  3.5	75	  6.352
  3.5	90	  6.803
  3.5	95	  7.077
  3.5	97	  7.256
  4.5	 3	  5.055
  4.5	 5	  5.220
  4.5	10	  5.480
  4.5	25	  5.926
  4.5	50	  6.438
  4.5	75	  6.967
  4.5	90	  7.457
  4.5	95	  7.757
  4.5	97	  7.955
  5.5	 3	  5.523
  5.5	 5	  5.694
  5.5	10	  5.964
  5.5	25	  6.429
  5.5	50	  6.968
  5.5	75	  7.530
  5.5	90	  8.056
  5.5	95	  8.380
  5.5	97	  8.594
  6.5	 3	  5.954
  6.5	 5	  6.131
  6.5	10	  6.409
  6.5	25	  6.892
  6.5	50	  7.455
  6.5	75	  8.047
  6.5	90	  8.606
  6.5	95	  8.952
  6.5	97	  9.181
  7.5	 3	  6.353
  7.5	 5	  6.533
  7.5	10	  6.819
  7.5	25	  7.317
  7.5	50	  7.902
  7.5	75	  8.522
  7.5	90	  9.110
  7.5	95	  9.476
  7.5	97	  9.720
  8.5	 3	  6.720
  8.5	 5	  6.905
  8.5	10	  7.197
  8.5	25	  7.710
  8.5	50	  8.314
  8.5	75	  8.958
  8.5	90	  9.574
  8.5	95	  9.958
  8.5	97	 10.215
  9.5	 3	  7.060
  9.5	 5	  7.248
  9.5	10	  7.546
  9.5	25	  8.071
  9.5	50	  8.693
  9.5	75	  9.360
  9.5	90	 10.001
  9.5	95	 10.403
  9.5	97	 10.673
 10.5	 3	  7.373
 10.5	 5	  7.564
 10.5	10	  7.868
 10.5	25	  8.404
 10.5	50	  9.043
 10.5	75	  9.731
 10.5	90	 10.395
 10.5	95	 10.815
 10.5	97	 11.096
 11.5	 3	  7.663
 11.5	 5	  7.857
 11.5	10	  8.166
 11.5	25	  8.713
 11.5	50	  9.367
 11.5	75	 10.074
 11.5	90	 10.761
 11.5	95	 11.196
 11.5	97	 11.489
 12.5	 3	  7.931
 12.5	 5	  8.128
 12.5	10	  8.441
 12.5	25	  8.998
 12.5	50	  9.666
 12.5	75	 10.393
 12.5	90	 11.101
 12.5	95	 11.551
 12.5	97	 11.855
 13.5	 3	  8.179
 13.5	 5	  8.378
 13.5	10	  8.697
 13.5	25	  9.262
 13.5	50	  9.944
 13.5	75	 10.689
 13.5	90	 11.418
 13.5	95	 11.883
 13.5	97	 12.198
 14.5	 3	  8.410
 14.5	 5	  8.611
 14.5	10	  8.934
 14.5	25	  9.508
 14.5	50	 10.203
 14.5	75	 10.965
 14.5	90	 11.715
 14.5	95	 12.195
 14.5	97	 12.521
 15.5	 3	  8.624
 15.5	 5	  8.828
 15.5	10	  9.154
 15.5	25	  9.737
 15.5	50	 10.445
 15.5	75	 11.225
 15.5	90	 11.994
 15.5	95	 12.489
 15.5	97	 12.826
 16.5	 3	  8.823
 16.5	 5	  9.029
 16.5	10	  9.360
 16.5	25	  9.952
 16.5	50	 10.673
 16.5	75	 11.469
 16.5	90	 12.259
 16.5	95	 12.768
 16.5	97	 13.115
 17.5	 3	  9.010
 17.5	 5	  9.218
 17.5	10	  9.553
 17.5	25	 10.153
 17.5	50	 10.886
 17.5	75	 11.700
 17.5	90	 12.510
 17.5	95	 13.034
 17.5	97	 13.392
 18.5	 3	  9.184
 18.5	 5	  9.395
 18.5	10	  9.734
 18.5	25	 10.342
 18.5	50	 11.089
 18.5	75	 11.919
 18.5	90	 12.750
 18.5	95	 13.289
 18.5	97	 13.658
 19.5	 3	  9.348
 19.5	 5	  9.561
 19.5	10	  9.904
 19.5	25	 10.522
 19.5	50	 11.281
 19.5	75	 12.129
 19.5	90	 12.980
 19.5	95	 13.535
 19.5	97	 13.915
 20.5	 3	  9.503
 20.5	 5	  9.718
 20.5	10	 10.065
 20.5	25	 10.692
 20.5	50	 11.464
 20.5	75	 12.330
 20.5	90	 13.203
 20.5	95	 13.773
 20.5	97	 14.165
 21.5	 3	  9.649
 21.5	 5	  9.867
 21.5	10	 10.219
 21.5	25	 10.854
 21.5	50	 11.640
 21.5	75	 12.524
 21.5	90	 13.418
 21.5	95	 14.005
 21.5	97	 14.409
 22.5	 3	  9.788
 22.5	 5	 10.009
 22.5	10	 10.365
 22.5	25	 11.010
 22.5	50	 11.810
 22.5	75	 12.713
 22.5	90	 13.629
 22.5	95	 14.232
 22.5	97	 14.648
 23.5	 3	  9.921
 23.5	 5	 10.144
 23.5	10	 10.506
 23.5	25	 11.160
 23.5	50	 11.975
 23.5	75	 12.896
 23.5	90	 13.836
 23.5	95	 14.456
 23.5	97	 14.884
 24.5	 3	 10.049
 24.5	 5	 10.275
 24.5	10	 10.641
 24.5	25	 11.306
 24.5	50	 12.135
 24.5	75	 13.076
 24.5	90	 14.039
 24.5	95	 14.677
 24.5	97	 15.118
 25.5	 3	 10.172
 25.5	 5	 10.401
 25.5	10	 10.772
 25.5	25	 11.447
 25.5	50	 12.291
 25.5	75	 13.253
 25.5	90	 14.240
 25.5	95	 14.896
 25.5	97	 15.351
 26.5	 3	 10.291
 26.5	 5	 10.523
 26.5	10	 10.899
 26.5	25	 11.585
 26.5	50	 12.445
 26.5	75	 13.428
 26.5	90	 14.440
 26.5	95	 15.114
 26.5	97	 15.584
 27.5	 3	 10.407
 27.5	 5	 10.642
 27.5	10	 11.023
 27.5	25	 11.720
 27.5	50	 12.596
 27.5	75	 13.601
 27.5	90	 14.639
 27.5	95	 15.332
 27.5	97	 15.816
 28.5	 3	 10.520
 28.5	 5	 10.758
 28.5	10	 11.145
 28.5	25	 11.854
 28.5	50	 12.746
 28.5	75	 13.773
 28.5	90	 14.837
 28.5	95	 15.551
 28.5	97	 16.050
 29.5	 3	 10.631
 29.5	 5	 10.873
 29.5	10	 11.266
 29.5	25	 11.986
 29.5	50	 12.895
 29.5	75	 13.944
 29.5	90	 15.036
 29.5	95	 15.771
 29.5	97	 16.285
 30.5	 3	 10.741
 30.5	 5	 10.986
 30.5	10	 11.385
 30.5	25	 12.117
 30.5	50	 13.044
 30.5	75	 14.116
 30.5	90	 15.236
 30.5	95	 15.992
 30.5	97	 16.522
 31.5	 3	 10.849
 31.5	 5	 11.098
 31.5	10	 11.503
 31.5	25	 12.247
 31.5	50	 13.192
 31.5	75	 14.288
 31.5	90	 15.437
 31.5	95	 16.214
 31.5	97	 16.761
 32.5	 3	 10.957
 32.5	 5	 11.209
 32.5	10	 11.621
 32.5	25	 12.378
 32.5	50	 13.340
 32.5	75	 14.461
 32.5	90	 15.640
 32.5	95	 16.439
 32.5	97	 17.002
 33.5	 3	 11.065
 33.5	 5	 11.321
 33.5	10	 11.738
 33.5	25	 12.508
 33.5	50	 13.489
 33.5	75	 14.635
 33.5	90	 15.844
 33.5	95	 16.666
 33.5	97	 17.247
 34.5	 3	 11.172
 34.5	 5	 11.432
 34.5	10	 11.856
 34.5	25	 12.639
 34.5	50	 13.639
 34.5	75	 14.810
 34.5	90	 16.050
 34.5	95	 16.896
 34.5	97	 17.494
 35.5	 3	 11.280
 35.5	 5	 11.543
 35.5	10	 11.974
 35.5	25	 12.770
 35.5	50	 13.789
 35.5	75	 14.986
 35.5	90	 16.258
 35.5	95	 17.128
 35.5	97	 17.745
 36.0	 3	 11.334
 36.0	 5	 11.599
 36.0	10	 12.033
 36.0	25	 12.836
 36.0	50	 13.865
 36.0	75	 15.075
 36.0	90	 16.362
 36.0	95	 17.245
 36.0	97	 17.871