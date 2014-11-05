#!/usr/bin/env perl
#
# $Id$

use strict;

use Test::More tests => 4386;

use FindBin;
use lib "$FindBin::Bin/lib";
use My_Growth_Test;

require_ok('Medical::Growth::NHANES_2000::BMI_for_Age::Child::Male');

my $h = Medical::Growth::NHANES_2000::BMI_for_Age::Child::Male->new;
My_Growth_Test::run_data_tests($h);

is( $h->bmi( 20, 100 ), 20, 'BMI computation: 20' );
is( $h->bmi( 30, 100 ), 30, 'BMI computation: 30' );
is( sprintf( '%5.2f', $h->bmi( 20, 110 ) ), '16.53', 'BMI computation: 16.53' );
ok( !defined( $h->bmi( undef, 110 ) ), 'BMI computation: missing weight' );
ok( !defined( $h->bmi(20) ), 'BMI computation: missing height' );

__DATA__
# age %ile value
 24.0	 3	 14.521
 24.0	 5	 14.737
 24.0	10	 15.090
 24.0	25	 15.742
 24.0	50	 16.575
 24.0	75	 17.557
 24.0	85	 18.162
 24.0	90	 18.609
 24.0	95	 19.338
 24.0	97	 19.860
 24.5	 3	 14.503
 24.5	 5	 14.719
 24.5	10	 15.071
 24.5	25	 15.720
 24.5	50	 16.548
 24.5	75	 17.521
 24.5	85	 18.120
 24.5	90	 18.561
 24.5	95	 19.279
 24.5	97	 19.792
 25.5	 3	 14.469
 25.5	 5	 14.684
 25.5	10	 15.033
 25.5	25	 15.676
 25.5	50	 16.494
 25.5	75	 17.451
 25.5	85	 18.037
 25.5	90	 18.467
 25.5	95	 19.165
 25.5	97	 19.661
 26.5	 3	 14.435
 26.5	 5	 14.648
 26.5	10	 14.996
 26.5	25	 15.634
 26.5	50	 16.443
 26.5	75	 17.384
 26.5	85	 17.957
 26.5	90	 18.377
 26.5	95	 19.056
 26.5	97	 19.537
 27.5	 3	 14.401
 27.5	 5	 14.614
 27.5	10	 14.960
 27.5	25	 15.593
 27.5	50	 16.392
 27.5	75	 17.319
 27.5	85	 17.880
 27.5	90	 18.291
 27.5	95	 18.952
 27.5	97	 19.418
 28.5	 3	 14.368
 28.5	 5	 14.580
 28.5	10	 14.924
 28.5	25	 15.552
 28.5	50	 16.343
 28.5	75	 17.256
 28.5	85	 17.807
 28.5	90	 18.209
 28.5	95	 18.853
 28.5	97	 19.307
 29.5	 3	 14.335
 29.5	 5	 14.546
 29.5	10	 14.889
 29.5	25	 15.513
 29.5	50	 16.296
 29.5	75	 17.195
 29.5	85	 17.737
 29.5	90	 18.130
 29.5	95	 18.759
 29.5	97	 19.201
 30.5	 3	 14.303
 30.5	 5	 14.513
 30.5	10	 14.854
 30.5	25	 15.474
 30.5	50	 16.250
 30.5	75	 17.137
 30.5	85	 17.669
 30.5	90	 18.055
 30.5	95	 18.671
 30.5	97	 19.101
 31.5	 3	 14.271
 31.5	 5	 14.481
 31.5	10	 14.820
 31.5	25	 15.436
 31.5	50	 16.205
 31.5	75	 17.081
 31.5	85	 17.605
 31.5	90	 17.984
 31.5	95	 18.587
 31.5	97	 19.008
 32.5	 3	 14.240
 32.5	 5	 14.449
 32.5	10	 14.787
 32.5	25	 15.400
 32.5	50	 16.161
 32.5	75	 17.028
 32.5	85	 17.544
 32.5	90	 17.916
 32.5	95	 18.508
 32.5	97	 18.920
 33.5	 3	 14.209
 33.5	 5	 14.418
 33.5	10	 14.755
 33.5	25	 15.363
 33.5	50	 16.119
 33.5	75	 16.976
 33.5	85	 17.485
 33.5	90	 17.852
 33.5	95	 18.434
 33.5	97	 18.838
 34.5	 3	 14.180
 34.5	 5	 14.387
 34.5	10	 14.723
 34.5	25	 15.328
 34.5	50	 16.078
 34.5	75	 16.926
 34.5	85	 17.429
 34.5	90	 17.791
 34.5	95	 18.364
 34.5	97	 18.761
 35.5	 3	 14.151
 35.5	 5	 14.358
 35.5	10	 14.691
 35.5	25	 15.294
 35.5	50	 16.039
 35.5	75	 16.879
 35.5	85	 17.376
 35.5	90	 17.734
 35.5	95	 18.299
 35.5	97	 18.690
 36.5	 3	 14.122
 36.5	 5	 14.329
 36.5	10	 14.661
 36.5	25	 15.260
 36.5	50	 16.000
 36.5	75	 16.834
 36.5	85	 17.326
 36.5	90	 17.680
 36.5	95	 18.238
 36.5	97	 18.624
 37.5	 3	 14.095
 37.5	 5	 14.300
 37.5	10	 14.631
 37.5	25	 15.227
 37.5	50	 15.963
 37.5	75	 16.790
 37.5	85	 17.279
 37.5	90	 17.630
 37.5	95	 18.182
 37.5	97	 18.564
 38.5	 3	 14.068
 38.5	 5	 14.272
 38.5	10	 14.602
 38.5	25	 15.195
 38.5	50	 15.927
 38.5	75	 16.749
 38.5	85	 17.234
 38.5	90	 17.582
 38.5	95	 18.131
 38.5	97	 18.509
 39.5	 3	 14.041
 39.5	 5	 14.245
 39.5	10	 14.573
 39.5	25	 15.164
 39.5	50	 15.892
 39.5	75	 16.710
 39.5	85	 17.192
 39.5	90	 17.538
 39.5	95	 18.083
 39.5	97	 18.459
 40.5	 3	 14.016
 40.5	 5	 14.219
 40.5	10	 14.545
 40.5	25	 15.133
 40.5	50	 15.858
 40.5	75	 16.673
 40.5	85	 17.153
 40.5	90	 17.497
 40.5	95	 18.040
 40.5	97	 18.415
 41.5	 3	 13.991
 41.5	 5	 14.193
 41.5	10	 14.518
 41.5	25	 15.104
 41.5	50	 15.826
 41.5	75	 16.637
 41.5	85	 17.116
 41.5	90	 17.459
 41.5	95	 18.001
 41.5	97	 18.375
 42.5	 3	 13.967
 42.5	 5	 14.168
 42.5	10	 14.492
 42.5	25	 15.075
 42.5	50	 15.794
 42.5	75	 16.603
 42.5	85	 17.081
 42.5	90	 17.425
 42.5	95	 17.966
 42.5	97	 18.340
 43.5	 3	 13.944
 43.5	 5	 14.144
 43.5	10	 14.466
 43.5	25	 15.046
 43.5	50	 15.764
 43.5	75	 16.572
 43.5	85	 17.049
 43.5	90	 17.393
 43.5	95	 17.935
 43.5	97	 18.309
 44.5	 3	 13.921
 44.5	 5	 14.120
 44.5	10	 14.440
 44.5	25	 15.019
 44.5	50	 15.734
 44.5	75	 16.542
 44.5	85	 17.020
 44.5	90	 17.364
 44.5	95	 17.907
 44.5	97	 18.284
 45.5	 3	 13.900
 45.5	 5	 14.097
 45.5	10	 14.416
 45.5	25	 14.992
 45.5	50	 15.706
 45.5	75	 16.514
 45.5	85	 16.993
 45.5	90	 17.338
 45.5	95	 17.884
 45.5	97	 18.263
 46.5	 3	 13.879
 46.5	 5	 14.075
 46.5	10	 14.392
 46.5	25	 14.966
 46.5	50	 15.679
 46.5	75	 16.487
 46.5	85	 16.968
 46.5	90	 17.315
 46.5	95	 17.864
 46.5	97	 18.247
 47.5	 3	 13.858
 47.5	 5	 14.054
 47.5	10	 14.369
 47.5	25	 14.941
 47.5	50	 15.653
 47.5	75	 16.463
 47.5	85	 16.945
 47.5	90	 17.294
 47.5	95	 17.848
 47.5	97	 18.235
 48.5	 3	 13.839
 48.5	 5	 14.033
 48.5	10	 14.347
 48.5	25	 14.917
 48.5	50	 15.628
 48.5	75	 16.440
 48.5	85	 16.925
 48.5	90	 17.277
 48.5	95	 17.836
 48.5	97	 18.227
 49.5	 3	 13.820
 49.5	 5	 14.013
 49.5	10	 14.325
 49.5	25	 14.894
 49.5	50	 15.604
 49.5	75	 16.418
 49.5	85	 16.907
 49.5	90	 17.262
 49.5	95	 17.827
 49.5	97	 18.224
 50.5	 3	 13.802
 50.5	 5	 13.994
 50.5	10	 14.305
 50.5	25	 14.871
 50.5	50	 15.582
 50.5	75	 16.399
 50.5	85	 16.891
 50.5	90	 17.249
 50.5	95	 17.822
 50.5	97	 18.224
 51.5	 3	 13.784
 51.5	 5	 13.975
 51.5	10	 14.284
 51.5	25	 14.849
 51.5	50	 15.560
 51.5	75	 16.381
 51.5	85	 16.877
 51.5	90	 17.239
 51.5	95	 17.820
 51.5	97	 18.229
 52.5	 3	 13.768
 52.5	 5	 13.957
 52.5	10	 14.265
 52.5	25	 14.828
 52.5	50	 15.540
 52.5	75	 16.365
 52.5	85	 16.865
 52.5	90	 17.231
 52.5	95	 17.821
 52.5	97	 18.238
 53.5	 3	 13.752
 53.5	 5	 13.940
 53.5	10	 14.247
 53.5	25	 14.808
 53.5	50	 15.521
 53.5	75	 16.350
 53.5	85	 16.855
 53.5	90	 17.226
 53.5	95	 17.825
 53.5	97	 18.251
 54.5	 3	 13.736
 54.5	 5	 13.924
 54.5	10	 14.229
 54.5	25	 14.789
 54.5	50	 15.503
 54.5	75	 16.337
 54.5	85	 16.848
 54.5	90	 17.224
 54.5	95	 17.833
 54.5	97	 18.267
 55.5	 3	 13.721
 55.5	 5	 13.908
 55.5	10	 14.212
 55.5	25	 14.771
 55.5	50	 15.486
 55.5	75	 16.325
 55.5	85	 16.842
 55.5	90	 17.223
 55.5	95	 17.843
 55.5	97	 18.287
 56.5	 3	 13.707
 56.5	 5	 13.893
 56.5	10	 14.195
 56.5	25	 14.754
 56.5	50	 15.470
 56.5	75	 16.316
 56.5	85	 16.838
 56.5	90	 17.225
 56.5	95	 17.857
 56.5	97	 18.311
 57.5	 3	 13.693
 57.5	 5	 13.878
 57.5	10	 14.180
 57.5	25	 14.738
 57.5	50	 15.455
 57.5	75	 16.307
 57.5	85	 16.836
 57.5	90	 17.229
 57.5	95	 17.873
 57.5	97	 18.339
 58.5	 3	 13.680
 58.5	 5	 13.864
 58.5	10	 14.165
 58.5	25	 14.723
 58.5	50	 15.442
 58.5	75	 16.300
 58.5	85	 16.836
 58.5	90	 17.235
 58.5	95	 17.893
 58.5	97	 18.370
 59.5	 3	 13.668
 59.5	 5	 13.851
 59.5	10	 14.151
 59.5	25	 14.708
 59.5	50	 15.430
 59.5	75	 16.295
 59.5	85	 16.837
 59.5	90	 17.243
 59.5	95	 17.914
 59.5	97	 18.404
 60.5	 3	 13.656
 60.5	 5	 13.839
 60.5	10	 14.138
 60.5	25	 14.695
 60.5	50	 15.419
 60.5	75	 16.291
 60.5	85	 16.841
 60.5	90	 17.253
 60.5	95	 17.939
 60.5	97	 18.441
 61.5	 3	 13.645
 61.5	 5	 13.827
 61.5	10	 14.125
 61.5	25	 14.683
 61.5	50	 15.409
 61.5	75	 16.289
 61.5	85	 16.846
 61.5	90	 17.266
 61.5	95	 17.966
 61.5	97	 18.482
 62.5	 3	 13.634
 62.5	 5	 13.815
 62.5	10	 14.114
 62.5	25	 14.671
 62.5	50	 15.401
 62.5	75	 16.289
 62.5	85	 16.853
 62.5	90	 17.280
 62.5	95	 17.996
 62.5	97	 18.525
 63.5	 3	 13.624
 63.5	 5	 13.805
 63.5	10	 14.103
 63.5	25	 14.661
 63.5	50	 15.394
 63.5	75	 16.290
 63.5	85	 16.862
 63.5	90	 17.296
 63.5	95	 18.028
 63.5	97	 18.572
 64.5	 3	 13.614
 64.5	 5	 13.795
 64.5	10	 14.092
 64.5	25	 14.652
 64.5	50	 15.388
 64.5	75	 16.292
 64.5	85	 16.872
 64.5	90	 17.314
 64.5	95	 18.062
 64.5	97	 18.621
 65.5	 3	 13.605
 65.5	 5	 13.785
 65.5	10	 14.083
 65.5	25	 14.643
 65.5	50	 15.383
 65.5	75	 16.296
 65.5	85	 16.884
 65.5	90	 17.334
 65.5	95	 18.099
 65.5	97	 18.673
 66.5	 3	 13.596
 66.5	 5	 13.776
 66.5	10	 14.074
 66.5	25	 14.636
 66.5	50	 15.380
 66.5	75	 16.301
 66.5	85	 16.898
 66.5	90	 17.356
 66.5	95	 18.138
 66.5	97	 18.728
 67.5	 3	 13.588
 67.5	 5	 13.768
 67.5	10	 14.066
 67.5	25	 14.629
 67.5	50	 15.377
 67.5	75	 16.308
 67.5	85	 16.913
 67.5	90	 17.380
 67.5	95	 18.179
 67.5	97	 18.786
 68.5	 3	 13.580
 68.5	 5	 13.761
 68.5	10	 14.059
 68.5	25	 14.624
 68.5	50	 15.376
 68.5	75	 16.316
 68.5	85	 16.930
 68.5	90	 17.405
 68.5	95	 18.222
 68.5	97	 18.846
 69.5	 3	 13.573
 69.5	 5	 13.754
 69.5	10	 14.053
 69.5	25	 14.619
 69.5	50	 15.376
 69.5	75	 16.326
 69.5	85	 16.949
 69.5	90	 17.432
 69.5	95	 18.267
 69.5	97	 18.908
 70.5	 3	 13.566
 70.5	 5	 13.747
 70.5	10	 14.047
 70.5	25	 14.616
 70.5	50	 15.377
 70.5	75	 16.337
 70.5	85	 16.969
 70.5	90	 17.461
 70.5	95	 18.314
 70.5	97	 18.973
 71.5	 3	 13.560
 71.5	 5	 13.741
 71.5	10	 14.042
 71.5	25	 14.613
 71.5	50	 15.380
 71.5	75	 16.350
 71.5	85	 16.991
 71.5	90	 17.491
 71.5	95	 18.363
 71.5	97	 19.040
 72.5	 3	 13.554
 72.5	 5	 13.736
 72.5	10	 14.038
 72.5	25	 14.611
 72.5	50	 15.384
 72.5	75	 16.363
 72.5	85	 17.014
 72.5	90	 17.523
 72.5	95	 18.414
 72.5	97	 19.109
 73.5	 3	 13.549
 73.5	 5	 13.732
 73.5	10	 14.034
 73.5	25	 14.610
 73.5	50	 15.388
 73.5	75	 16.379
 73.5	85	 17.039
 73.5	90	 17.557
 73.5	95	 18.467
 73.5	97	 19.180
 74.5	 3	 13.545
 74.5	 5	 13.728
 74.5	10	 14.031
 74.5	25	 14.611
 74.5	50	 15.394
 74.5	75	 16.395
 74.5	85	 17.065
 74.5	90	 17.592
 74.5	95	 18.522
 74.5	97	 19.253
 75.5	 3	 13.541
 75.5	 5	 13.724
 75.5	10	 14.029
 75.5	25	 14.612
 75.5	50	 15.401
 75.5	75	 16.413
 75.5	85	 17.093
 75.5	90	 17.629
 75.5	95	 18.578
 75.5	97	 19.328
 76.5	 3	 13.537
 76.5	 5	 13.721
 76.5	10	 14.028
 76.5	25	 14.614
 76.5	50	 15.409
 76.5	75	 16.433
 76.5	85	 17.122
 76.5	90	 17.667
 76.5	95	 18.636
 76.5	97	 19.406
 77.5	 3	 13.534
 77.5	 5	 13.719
 77.5	10	 14.027
 77.5	25	 14.616
 77.5	50	 15.419
 77.5	75	 16.453
 77.5	85	 17.152
 77.5	90	 17.707
 77.5	95	 18.695
 77.5	97	 19.484
 78.5	 3	 13.532
 78.5	 5	 13.718
 78.5	10	 14.027
 78.5	25	 14.620
 78.5	50	 15.429
 78.5	75	 16.475
 78.5	85	 17.184
 78.5	90	 17.748
 78.5	95	 18.756
 78.5	97	 19.565
 79.5	 3	 13.530
 79.5	 5	 13.717
 79.5	10	 14.028
 79.5	25	 14.625
 79.5	50	 15.440
 79.5	75	 16.498
 79.5	85	 17.217
 79.5	90	 17.790
 79.5	95	 18.819
 79.5	97	 19.647
 80.5	 3	 13.528
 80.5	 5	 13.716
 80.5	10	 14.029
 80.5	25	 14.630
 80.5	50	 15.453
 80.5	75	 16.522
 80.5	85	 17.251
 80.5	90	 17.834
 80.5	95	 18.883
 80.5	97	 19.731
 81.5	 3	 13.528
 81.5	 5	 13.717
 81.5	10	 14.031
 81.5	25	 14.637
 81.5	50	 15.466
 81.5	75	 16.548
 81.5	85	 17.287
 81.5	90	 17.879
 81.5	95	 18.948
 81.5	97	 19.816
 82.5	 3	 13.527
 82.5	 5	 13.718
 82.5	10	 14.034
 82.5	25	 14.644
 82.5	50	 15.481
 82.5	75	 16.574
 82.5	85	 17.324
 82.5	90	 17.925
 82.5	95	 19.015
 82.5	97	 19.903
 83.5	 3	 13.528
 83.5	 5	 13.719
 83.5	10	 14.038
 83.5	25	 14.652
 83.5	50	 15.496
 83.5	75	 16.602
 83.5	85	 17.362
 83.5	90	 17.973
 83.5	95	 19.083
 83.5	97	 19.991
 84.5	 3	 13.529
 84.5	 5	 13.721
 84.5	10	 14.042
 84.5	25	 14.661
 84.5	50	 15.513
 84.5	75	 16.631
 84.5	85	 17.401
 84.5	90	 18.022
 84.5	95	 19.152
 84.5	97	 20.081
 85.5	 3	 13.530
 85.5	 5	 13.724
 85.5	10	 14.047
 85.5	25	 14.671
 85.5	50	 15.530
 85.5	75	 16.661
 85.5	85	 17.442
 85.5	90	 18.072
 85.5	95	 19.223
 85.5	97	 20.171
 86.5	 3	 13.532
 86.5	 5	 13.727
 86.5	10	 14.053
 86.5	25	 14.681
 86.5	50	 15.549
 86.5	75	 16.692
 86.5	85	 17.483
 86.5	90	 18.123
 86.5	95	 19.295
 86.5	97	 20.263
 87.5	 3	 13.535
 87.5	 5	 13.731
 87.5	10	 14.059
 87.5	25	 14.692
 87.5	50	 15.568
 87.5	75	 16.724
 87.5	85	 17.526
 87.5	90	 18.175
 87.5	95	 19.368
 87.5	97	 20.356
 88.5	 3	 13.538
 88.5	 5	 13.736
 88.5	10	 14.066
 88.5	25	 14.705
 88.5	50	 15.588
 88.5	75	 16.758
 88.5	85	 17.570
 88.5	90	 18.229
 88.5	95	 19.442
 88.5	97	 20.450
 89.5	 3	 13.542
 89.5	 5	 13.741
 89.5	10	 14.074
 89.5	25	 14.717
 89.5	50	 15.610
 89.5	75	 16.792
 89.5	85	 17.615
 89.5	90	 18.283
 89.5	95	 19.517
 89.5	97	 20.545
 90.5	 3	 13.547
 90.5	 5	 13.747
 90.5	10	 14.082
 90.5	25	 14.731
 90.5	50	 15.632
 90.5	75	 16.827
 90.5	85	 17.660
 90.5	90	 18.339
 90.5	95	 19.593
 90.5	97	 20.642
 91.5	 3	 13.552
 91.5	 5	 13.754
 91.5	10	 14.091
 91.5	25	 14.746
 91.5	50	 15.655
 91.5	75	 16.863
 91.5	85	 17.707
 91.5	90	 18.396
 91.5	95	 19.670
 91.5	97	 20.739
 92.5	 3	 13.557
 92.5	 5	 13.761
 92.5	10	 14.101
 92.5	25	 14.761
 92.5	50	 15.679
 92.5	75	 16.900
 92.5	85	 17.755
 92.5	90	 18.453
 92.5	95	 19.748
 92.5	97	 20.836
 93.5	 3	 13.564
 93.5	 5	 13.769
 93.5	10	 14.112
 93.5	25	 14.777
 93.5	50	 15.703
 93.5	75	 16.938
 93.5	85	 17.804
 93.5	90	 18.512
 93.5	95	 19.827
 93.5	97	 20.935
 94.5	 3	 13.570
 94.5	 5	 13.777
 94.5	10	 14.123
 94.5	25	 14.794
 94.5	50	 15.729
 94.5	75	 16.977
 94.5	85	 17.854
 94.5	90	 18.571
 94.5	95	 19.906
 94.5	97	 21.034
 95.5	 3	 13.578
 95.5	 5	 13.786
 95.5	10	 14.135
 95.5	25	 14.811
 95.5	50	 15.755
 95.5	75	 17.017
 95.5	85	 17.904
 95.5	90	 18.631
 95.5	95	 19.987
 95.5	97	 21.135
 96.5	 3	 13.586
 96.5	 5	 13.796
 96.5	10	 14.147
 96.5	25	 14.830
 96.5	50	 15.782
 96.5	75	 17.058
 96.5	85	 17.956
 96.5	90	 18.692
 96.5	95	 20.068
 96.5	97	 21.235
 97.5	 3	 13.595
 97.5	 5	 13.806
 97.5	10	 14.160
 97.5	25	 14.849
 97.5	50	 15.810
 97.5	75	 17.100
 97.5	85	 18.008
 97.5	90	 18.754
 97.5	95	 20.150
 97.5	97	 21.337
 98.5	 3	 13.604
 98.5	 5	 13.817
 98.5	10	 14.174
 98.5	25	 14.868
 98.5	50	 15.839
 98.5	75	 17.142
 98.5	85	 18.061
 98.5	90	 18.817
 98.5	95	 20.233
 98.5	97	 21.439
 99.5	 3	 13.614
 99.5	 5	 13.829
 99.5	10	 14.189
 99.5	25	 14.889
 99.5	50	 15.869
 99.5	75	 17.185
 99.5	85	 18.115
 99.5	90	 18.880
 99.5	95	 20.316
 99.5	97	 21.541
100.5	 3	 13.625
100.5	 5	 13.841
100.5	10	 14.204
100.5	25	 14.910
100.5	50	 15.899
100.5	75	 17.229
100.5	85	 18.170
100.5	90	 18.945
100.5	95	 20.400
100.5	97	 21.644
101.5	 3	 13.636
101.5	 5	 13.854
101.5	10	 14.220
101.5	25	 14.932
101.5	50	 15.930
101.5	75	 17.274
101.5	85	 18.225
101.5	90	 19.010
101.5	95	 20.484
101.5	97	 21.747
102.5	 3	 13.648
102.5	 5	 13.867
102.5	10	 14.236
102.5	25	 14.955
102.5	50	 15.962
102.5	75	 17.319
102.5	85	 18.281
102.5	90	 19.075
102.5	95	 20.569
102.5	97	 21.850
103.5	 3	 13.660
103.5	 5	 13.882
103.5	10	 14.253
103.5	25	 14.978
103.5	50	 15.994
103.5	75	 17.366
103.5	85	 18.338
103.5	90	 19.141
103.5	95	 20.655
103.5	97	 21.954
104.5	 3	 13.673
104.5	 5	 13.896
104.5	10	 14.271
104.5	25	 15.002
104.5	50	 16.027
104.5	75	 17.412
104.5	85	 18.396
104.5	90	 19.208
104.5	95	 20.741
104.5	97	 22.058
105.5	 3	 13.687
105.5	 5	 13.912
105.5	10	 14.290
105.5	25	 15.026
105.5	50	 16.061
105.5	75	 17.460
105.5	85	 18.454
105.5	90	 19.276
105.5	95	 20.827
105.5	97	 22.163
106.5	 3	 13.701
106.5	 5	 13.928
106.5	10	 14.309
106.5	25	 15.052
106.5	50	 16.096
106.5	75	 17.508
106.5	85	 18.513
106.5	90	 19.344
106.5	95	 20.914
106.5	97	 22.267
107.5	 3	 13.716
107.5	 5	 13.945
107.5	10	 14.329
107.5	25	 15.078
107.5	50	 16.131
107.5	75	 17.557
107.5	85	 18.572
107.5	90	 19.412
107.5	95	 21.001
107.5	97	 22.372
108.5	 3	 13.732
108.5	 5	 13.962
108.5	10	 14.349
108.5	25	 15.104
108.5	50	 16.167
108.5	75	 17.607
108.5	85	 18.632
108.5	90	 19.481
108.5	95	 21.089
108.5	97	 22.477
109.5	 3	 13.748
109.5	 5	 13.980
109.5	10	 14.370
109.5	25	 15.132
109.5	50	 16.204
109.5	75	 17.657
109.5	85	 18.693
109.5	90	 19.551
109.5	95	 21.177
109.5	97	 22.581
110.5	 3	 13.765
110.5	 5	 13.999
110.5	10	 14.392
110.5	25	 15.160
110.5	50	 16.241
110.5	75	 17.708
110.5	85	 18.754
110.5	90	 19.621
110.5	95	 21.265
110.5	97	 22.686
111.5	 3	 13.782
111.5	 5	 14.018
111.5	10	 14.414
111.5	25	 15.188
111.5	50	 16.279
111.5	75	 17.759
111.5	85	 18.816
111.5	90	 19.692
111.5	95	 21.353
111.5	97	 22.791
112.5	 3	 13.800
112.5	 5	 14.038
112.5	10	 14.437
112.5	25	 15.217
112.5	50	 16.317
112.5	75	 17.811
112.5	85	 18.878
112.5	90	 19.763
112.5	95	 21.442
112.5	97	 22.896
113.5	 3	 13.819
113.5	 5	 14.058
113.5	10	 14.461
113.5	25	 15.247
113.5	50	 16.356
113.5	75	 17.864
113.5	85	 18.940
113.5	90	 19.834
113.5	95	 21.531
113.5	97	 23.000
114.5	 3	 13.838
114.5	 5	 14.079
114.5	10	 14.485
114.5	25	 15.278
114.5	50	 16.396
114.5	75	 17.917
114.5	85	 19.003
114.5	90	 19.906
114.5	95	 21.619
114.5	97	 23.105
115.5	 3	 13.858
115.5	 5	 14.101
115.5	10	 14.510
115.5	25	 15.309
115.5	50	 16.436
115.5	75	 17.970
115.5	85	 19.067
115.5	90	 19.978
115.5	95	 21.708
115.5	97	 23.209
116.5	 3	 13.879
116.5	 5	 14.123
116.5	10	 14.535
116.5	25	 15.340
116.5	50	 16.477
116.5	75	 18.024
116.5	85	 19.131
116.5	90	 20.050
116.5	95	 21.797
116.5	97	 23.313
117.5	 3	 13.900
117.5	 5	 14.146
117.5	10	 14.561
117.5	25	 15.372
117.5	50	 16.519
117.5	75	 18.079
117.5	85	 19.195
117.5	90	 20.123
117.5	95	 21.887
117.5	97	 23.417
118.5	 3	 13.922
118.5	 5	 14.170
118.5	10	 14.588
118.5	25	 15.405
118.5	50	 16.561
118.5	75	 18.134
118.5	85	 19.260
118.5	90	 20.196
118.5	95	 21.976
118.5	97	 23.521
119.5	 3	 13.944
119.5	 5	 14.194
119.5	10	 14.615
119.5	25	 15.439
119.5	50	 16.603
119.5	75	 18.189
119.5	85	 19.325
119.5	90	 20.269
119.5	95	 22.065
119.5	97	 23.624
120.5	 3	 13.967
120.5	 5	 14.219
120.5	10	 14.643
120.5	25	 15.473
120.5	50	 16.646
120.5	75	 18.245
120.5	85	 19.390
120.5	90	 20.343
120.5	95	 22.154
120.5	97	 23.727
121.5	 3	 13.990
121.5	 5	 14.244
121.5	10	 14.671
121.5	25	 15.507
121.5	50	 16.690
121.5	75	 18.302
121.5	85	 19.456
121.5	90	 20.416
121.5	95	 22.243
121.5	97	 23.830
122.5	 3	 14.014
122.5	 5	 14.270
122.5	10	 14.700
122.5	25	 15.542
122.5	50	 16.734
122.5	75	 18.358
122.5	85	 19.522
122.5	90	 20.490
122.5	95	 22.332
122.5	97	 23.932
123.5	 3	 14.039
123.5	 5	 14.296
123.5	10	 14.729
123.5	25	 15.578
123.5	50	 16.778
123.5	75	 18.415
123.5	85	 19.589
123.5	90	 20.564
123.5	95	 22.421
123.5	97	 24.034
124.5	 3	 14.064
124.5	 5	 14.323
124.5	10	 14.760
124.5	25	 15.614
124.5	50	 16.823
124.5	75	 18.473
124.5	85	 19.655
124.5	90	 20.639
124.5	95	 22.510
124.5	97	 24.135
125.5	 3	 14.090
125.5	 5	 14.351
125.5	10	 14.790
125.5	25	 15.651
125.5	50	 16.869
125.5	75	 18.531
125.5	85	 19.722
125.5	90	 20.713
125.5	95	 22.599
125.5	97	 24.236
126.5	 3	 14.117
126.5	 5	 14.379
126.5	10	 14.821
126.5	25	 15.688
126.5	50	 16.915
126.5	75	 18.589
126.5	85	 19.789
126.5	90	 20.788
126.5	95	 22.687
126.5	97	 24.336
127.5	 3	 14.144
127.5	 5	 14.408
127.5	10	 14.853
127.5	25	 15.726
127.5	50	 16.962
127.5	75	 18.648
127.5	85	 19.857
127.5	90	 20.862
127.5	95	 22.776
127.5	97	 24.436
128.5	 3	 14.171
128.5	 5	 14.437
128.5	10	 14.886
128.5	25	 15.764
128.5	50	 17.009
128.5	75	 18.707
128.5	85	 19.924
128.5	90	 20.937
128.5	95	 22.864
128.5	97	 24.535
129.5	 3	 14.199
129.5	 5	 14.467
129.5	10	 14.918
129.5	25	 15.803
129.5	50	 17.056
129.5	75	 18.766
129.5	85	 19.992
129.5	90	 21.012
129.5	95	 22.952
129.5	97	 24.634
130.5	 3	 14.228
130.5	 5	 14.498
130.5	10	 14.952
130.5	25	 15.843
130.5	50	 17.104
130.5	75	 18.826
130.5	85	 20.060
130.5	90	 21.087
130.5	95	 23.039
130.5	97	 24.732
131.5	 3	 14.257
131.5	 5	 14.529
131.5	10	 14.986
131.5	25	 15.882
131.5	50	 17.152
131.5	75	 18.886
131.5	85	 20.128
131.5	90	 21.162
131.5	95	 23.127
131.5	97	 24.829
132.5	 3	 14.287
132.5	 5	 14.560
132.5	10	 15.020
132.5	25	 15.923
132.5	50	 17.201
132.5	75	 18.946
132.5	85	 20.197
132.5	90	 21.237
132.5	95	 23.214
132.5	97	 24.926
133.5	 3	 14.317
133.5	 5	 14.592
133.5	10	 15.055
133.5	25	 15.963
133.5	50	 17.250
133.5	75	 19.006
133.5	85	 20.265
133.5	90	 21.312
133.5	95	 23.300
133.5	97	 25.022
134.5	 3	 14.348
134.5	 5	 14.625
134.5	10	 15.091
134.5	25	 16.005
134.5	50	 17.300
134.5	75	 19.067
134.5	85	 20.334
134.5	90	 21.387
134.5	95	 23.387
134.5	97	 25.118
135.5	 3	 14.379
135.5	 5	 14.658
135.5	10	 15.127
135.5	25	 16.046
135.5	50	 17.349
135.5	75	 19.128
135.5	85	 20.402
135.5	90	 21.462
135.5	95	 23.473
135.5	97	 25.213
136.5	 3	 14.411
136.5	 5	 14.691
136.5	10	 15.163
136.5	25	 16.089
136.5	50	 17.400
136.5	75	 19.189
136.5	85	 20.471
136.5	90	 21.537
136.5	95	 23.559
136.5	97	 25.307
137.5	 3	 14.443
137.5	 5	 14.725
137.5	10	 15.200
137.5	25	 16.131
137.5	50	 17.450
137.5	75	 19.251
137.5	85	 20.540
137.5	90	 21.611
137.5	95	 23.644
137.5	97	 25.400
138.5	 3	 14.476
138.5	 5	 14.760
138.5	10	 15.238
138.5	25	 16.174
138.5	50	 17.501
138.5	75	 19.312
138.5	85	 20.609
138.5	90	 21.686
138.5	95	 23.729
138.5	97	 25.493
139.5	 3	 14.510
139.5	 5	 14.795
139.5	10	 15.275
139.5	25	 16.218
139.5	50	 17.553
139.5	75	 19.374
139.5	85	 20.678
139.5	90	 21.761
139.5	95	 23.814
139.5	97	 25.585
140.5	 3	 14.544
140.5	 5	 14.831
140.5	10	 15.314
140.5	25	 16.262
140.5	50	 17.604
140.5	75	 19.436
140.5	85	 20.747
140.5	90	 21.836
140.5	95	 23.898
140.5	97	 25.676
141.5	 3	 14.578
141.5	 5	 14.867
141.5	10	 15.353
141.5	25	 16.306
141.5	50	 17.657
141.5	75	 19.498
141.5	85	 20.816
141.5	90	 21.910
141.5	95	 23.981
141.5	97	 25.766
142.5	 3	 14.613
142.5	 5	 14.903
142.5	10	 15.392
142.5	25	 16.351
142.5	50	 17.709
142.5	75	 19.561
142.5	85	 20.886
142.5	90	 21.984
142.5	95	 24.065
142.5	97	 25.856
143.5	 3	 14.648
143.5	 5	 14.940
143.5	10	 15.432
143.5	25	 16.396
143.5	50	 17.762
143.5	75	 19.623
143.5	85	 20.955
143.5	90	 22.059
143.5	95	 24.148
143.5	97	 25.944
144.5	 3	 14.684
144.5	 5	 14.977
144.5	10	 15.472
144.5	25	 16.442
144.5	50	 17.815
144.5	75	 19.686
144.5	85	 21.024
144.5	90	 22.133
144.5	95	 24.230
144.5	97	 26.032
145.5	 3	 14.720
145.5	 5	 15.015
145.5	10	 15.512
145.5	25	 16.488
145.5	50	 17.868
145.5	75	 19.749
145.5	85	 21.093
145.5	90	 22.207
145.5	95	 24.312
145.5	97	 26.119
146.5	 3	 14.757
146.5	 5	 15.054
146.5	10	 15.554
146.5	25	 16.534
146.5	50	 17.922
146.5	75	 19.812
146.5	85	 21.162
146.5	90	 22.281
146.5	95	 24.393
146.5	97	 26.206
147.5	 3	 14.794
147.5	 5	 15.092
147.5	10	 15.595
147.5	25	 16.581
147.5	50	 17.975
147.5	75	 19.875
147.5	85	 21.231
147.5	90	 22.354
147.5	95	 24.474
147.5	97	 26.291
148.5	 3	 14.832
148.5	 5	 15.132
148.5	10	 15.637
148.5	25	 16.628
148.5	50	 18.030
148.5	75	 19.938
148.5	85	 21.300
148.5	90	 22.428
148.5	95	 24.554
148.5	97	 26.376
149.5	 3	 14.870
149.5	 5	 15.171
149.5	10	 15.679
149.5	25	 16.675
149.5	50	 18.084
149.5	75	 20.002
149.5	85	 21.370
149.5	90	 22.501
149.5	95	 24.634
149.5	97	 26.459
150.5	 3	 14.908
150.5	 5	 15.211
150.5	10	 15.722
150.5	25	 16.723
150.5	50	 18.139
150.5	75	 20.065
150.5	85	 21.439
150.5	90	 22.574
150.5	95	 24.714
150.5	97	 26.542
151.5	 3	 14.947
151.5	 5	 15.252
151.5	10	 15.765
151.5	25	 16.771
151.5	50	 18.194
151.5	75	 20.129
151.5	85	 21.507
151.5	90	 22.647
151.5	95	 24.792
151.5	97	 26.624
152.5	 3	 14.986
152.5	 5	 15.292
152.5	10	 15.808
152.5	25	 16.819
152.5	50	 18.249
152.5	75	 20.192
152.5	85	 21.576
152.5	90	 22.720
152.5	95	 24.871
152.5	97	 26.705
153.5	 3	 15.026
153.5	 5	 15.333
153.5	10	 15.852
153.5	25	 16.868
153.5	50	 18.304
153.5	75	 20.256
153.5	85	 21.645
153.5	90	 22.792
153.5	95	 24.948
153.5	97	 26.785
154.5	 3	 15.066
154.5	 5	 15.375
154.5	10	 15.896
154.5	25	 16.917
154.5	50	 18.360
154.5	75	 20.320
154.5	85	 21.714
154.5	90	 22.865
154.5	95	 25.025
154.5	97	 26.865
155.5	 3	 15.106
155.5	 5	 15.417
155.5	10	 15.940
155.5	25	 16.966
155.5	50	 18.416
155.5	75	 20.383
155.5	85	 21.783
155.5	90	 22.937
155.5	95	 25.102
155.5	97	 26.943
156.5	 3	 15.147
156.5	 5	 15.459
156.5	10	 15.985
156.5	25	 17.016
156.5	50	 18.472
156.5	75	 20.447
156.5	85	 21.851
156.5	90	 23.008
156.5	95	 25.178
156.5	97	 27.021
157.5	 3	 15.188
157.5	 5	 15.502
157.5	10	 16.030
157.5	25	 17.066
157.5	50	 18.528
157.5	75	 20.511
157.5	85	 21.919
157.5	90	 23.080
157.5	95	 25.254
157.5	97	 27.097
158.5	 3	 15.229
158.5	 5	 15.545
158.5	10	 16.076
158.5	25	 17.116
158.5	50	 18.584
158.5	75	 20.575
158.5	85	 21.988
158.5	90	 23.151
158.5	95	 25.329
158.5	97	 27.173
159.5	 3	 15.271
159.5	 5	 15.588
159.5	10	 16.122
159.5	25	 17.166
159.5	50	 18.641
159.5	75	 20.639
159.5	85	 22.056
159.5	90	 23.222
159.5	95	 25.403
159.5	97	 27.248
160.5	 3	 15.313
160.5	 5	 15.632
160.5	10	 16.168
160.5	25	 17.217
160.5	50	 18.698
160.5	75	 20.703
160.5	85	 22.124
160.5	90	 23.293
160.5	95	 25.477
160.5	97	 27.322
161.5	 3	 15.356
161.5	 5	 15.676
161.5	10	 16.214
161.5	25	 17.268
161.5	50	 18.755
161.5	75	 20.767
161.5	85	 22.192
161.5	90	 23.363
161.5	95	 25.550
161.5	97	 27.395
162.5	 3	 15.398
162.5	 5	 15.720
162.5	10	 16.261
162.5	25	 17.319
162.5	50	 18.812
162.5	75	 20.831
162.5	85	 22.260
162.5	90	 23.434
162.5	95	 25.623
162.5	97	 27.468
163.5	 3	 15.441
163.5	 5	 15.764
163.5	10	 16.307
163.5	25	 17.371
163.5	50	 18.869
163.5	75	 20.895
163.5	85	 22.327
163.5	90	 23.504
163.5	95	 25.695
163.5	97	 27.539
164.5	 3	 15.485
164.5	 5	 15.809
164.5	10	 16.355
164.5	25	 17.422
164.5	50	 18.927
164.5	75	 20.959
164.5	85	 22.395
164.5	90	 23.573
164.5	95	 25.766
164.5	97	 27.610
165.5	 3	 15.528
165.5	 5	 15.854
165.5	10	 16.402
165.5	25	 17.474
165.5	50	 18.984
165.5	75	 21.023
165.5	85	 22.462
165.5	90	 23.643
165.5	95	 25.837
165.5	97	 27.680
166.5	 3	 15.572
166.5	 5	 15.899
166.5	10	 16.450
166.5	25	 17.526
166.5	50	 19.042
166.5	75	 21.087
166.5	85	 22.529
166.5	90	 23.712
166.5	95	 25.908
166.5	97	 27.749
167.5	 3	 15.616
167.5	 5	 15.945
167.5	10	 16.498
167.5	25	 17.578
167.5	50	 19.100
167.5	75	 21.150
167.5	85	 22.596
167.5	90	 23.780
167.5	95	 25.977
167.5	97	 27.817
168.5	 3	 15.661
168.5	 5	 15.991
168.5	10	 16.546
168.5	25	 17.631
168.5	50	 19.158
168.5	75	 21.214
168.5	85	 22.663
168.5	90	 23.849
168.5	95	 26.047
168.5	97	 27.884
169.5	 3	 15.705
169.5	 5	 16.037
169.5	10	 16.594
169.5	25	 17.683
169.5	50	 19.216
169.5	75	 21.278
169.5	85	 22.730
169.5	90	 23.917
169.5	95	 26.115
169.5	97	 27.951
170.5	 3	 15.750
170.5	 5	 16.083
170.5	10	 16.643
170.5	25	 17.736
170.5	50	 19.274
170.5	75	 21.342
170.5	85	 22.796
170.5	90	 23.985
170.5	95	 26.184
170.5	97	 28.017
171.5	 3	 15.795
171.5	 5	 16.129
171.5	10	 16.691
171.5	25	 17.789
171.5	50	 19.332
171.5	75	 21.406
171.5	85	 22.863
171.5	90	 24.053
171.5	95	 26.251
171.5	97	 28.082
172.5	 3	 15.840
172.5	 5	 16.176
172.5	10	 16.740
172.5	25	 17.842
172.5	50	 19.390
172.5	75	 21.469
172.5	85	 22.929
172.5	90	 24.120
172.5	95	 26.318
172.5	97	 28.146
173.5	 3	 15.886
173.5	 5	 16.223
173.5	10	 16.789
173.5	25	 17.895
173.5	50	 19.448
173.5	75	 21.533
173.5	85	 22.995
173.5	90	 24.187
173.5	95	 26.385
173.5	97	 28.210
174.5	 3	 15.932
174.5	 5	 16.270
174.5	10	 16.838
174.5	25	 17.949
174.5	50	 19.507
174.5	75	 21.596
174.5	85	 23.061
174.5	90	 24.254
174.5	95	 26.451
174.5	97	 28.273
175.5	 3	 15.977
175.5	 5	 16.317
175.5	10	 16.888
175.5	25	 18.002
175.5	50	 19.565
175.5	75	 21.660
175.5	85	 23.126
175.5	90	 24.320
175.5	95	 26.516
175.5	97	 28.335
176.5	 3	 16.023
176.5	 5	 16.364
176.5	10	 16.937
176.5	25	 18.056
176.5	50	 19.624
176.5	75	 21.723
176.5	85	 23.192
176.5	90	 24.386
176.5	95	 26.582
176.5	97	 28.396
177.5	 3	 16.069
177.5	 5	 16.412
177.5	10	 16.987
177.5	25	 18.109
177.5	50	 19.682
177.5	75	 21.786
177.5	85	 23.257
177.5	90	 24.452
177.5	95	 26.646
177.5	97	 28.457
178.5	 3	 16.116
178.5	 5	 16.459
178.5	10	 17.037
178.5	25	 18.163
178.5	50	 19.741
178.5	75	 21.849
178.5	85	 23.322
178.5	90	 24.518
178.5	95	 26.710
178.5	97	 28.517
179.5	 3	 16.162
179.5	 5	 16.507
179.5	10	 17.087
179.5	25	 18.217
179.5	50	 19.799
179.5	75	 21.912
179.5	85	 23.387
179.5	90	 24.583
179.5	95	 26.774
179.5	97	 28.577
180.5	 3	 16.208
180.5	 5	 16.555
180.5	10	 17.137
180.5	25	 18.271
180.5	50	 19.858
180.5	75	 21.975
180.5	85	 23.451
180.5	90	 24.648
180.5	95	 26.837
180.5	97	 28.636
181.5	 3	 16.255
181.5	 5	 16.603
181.5	10	 17.187
181.5	25	 18.325
181.5	50	 19.916
181.5	75	 22.038
181.5	85	 23.516
181.5	90	 24.712
181.5	95	 26.900
181.5	97	 28.694
182.5	 3	 16.302
182.5	 5	 16.651
182.5	10	 17.237
182.5	25	 18.379
182.5	50	 19.975
182.5	75	 22.101
182.5	85	 23.580
182.5	90	 24.777
182.5	95	 26.962
182.5	97	 28.752
183.5	 3	 16.348
183.5	 5	 16.699
183.5	10	 17.287
183.5	25	 18.433
183.5	50	 20.033
183.5	75	 22.164
183.5	85	 23.644
183.5	90	 24.841
183.5	95	 27.024
183.5	97	 28.809
184.5	 3	 16.395
184.5	 5	 16.747
184.5	10	 17.337
184.5	25	 18.487
184.5	50	 20.092
184.5	75	 22.226
184.5	85	 23.708
184.5	90	 24.905
184.5	95	 27.085
184.5	97	 28.866
185.5	 3	 16.442
185.5	 5	 16.795
185.5	10	 17.388
185.5	25	 18.541
185.5	50	 20.150
185.5	75	 22.288
185.5	85	 23.771
185.5	90	 24.968
185.5	95	 27.146
185.5	97	 28.922
186.5	 3	 16.489
186.5	 5	 16.843
186.5	10	 17.438
186.5	25	 18.595
186.5	50	 20.209
186.5	75	 22.351
186.5	85	 23.835
186.5	90	 25.032
186.5	95	 27.207
186.5	97	 28.978
187.5	 3	 16.536
187.5	 5	 16.891
187.5	10	 17.488
187.5	25	 18.649
187.5	50	 20.267
187.5	75	 22.413
187.5	85	 23.898
187.5	90	 25.095
187.5	95	 27.267
187.5	97	 29.033
188.5	 3	 16.583
188.5	 5	 16.940
188.5	10	 17.539
188.5	25	 18.703
188.5	50	 20.325
188.5	75	 22.475
188.5	85	 23.961
188.5	90	 25.158
188.5	95	 27.327
188.5	97	 29.088
189.5	 3	 16.630
189.5	 5	 16.988
189.5	10	 17.589
189.5	25	 18.757
189.5	50	 20.383
189.5	75	 22.537
189.5	85	 24.024
189.5	90	 25.220
189.5	95	 27.387
189.5	97	 29.143
190.5	 3	 16.677
190.5	 5	 17.036
190.5	10	 17.639
190.5	25	 18.811
190.5	50	 20.442
190.5	75	 22.598
190.5	85	 24.086
190.5	90	 25.283
190.5	95	 27.446
190.5	97	 29.197
191.5	 3	 16.724
191.5	 5	 17.084
191.5	10	 17.690
191.5	25	 18.865
191.5	50	 20.500
191.5	75	 22.660
191.5	85	 24.149
191.5	90	 25.345
191.5	95	 27.505
191.5	97	 29.251
192.5	 3	 16.770
192.5	 5	 17.132
192.5	10	 17.740
192.5	25	 18.919
192.5	50	 20.558
192.5	75	 22.721
192.5	85	 24.211
192.5	90	 25.407
192.5	95	 27.564
192.5	97	 29.305
193.5	 3	 16.817
193.5	 5	 17.181
193.5	10	 17.790
193.5	25	 18.973
193.5	50	 20.616
193.5	75	 22.782
193.5	85	 24.273
193.5	90	 25.468
193.5	95	 27.622
193.5	97	 29.358
194.5	 3	 16.864
194.5	 5	 17.229
194.5	10	 17.840
194.5	25	 19.027
194.5	50	 20.673
194.5	75	 22.843
194.5	85	 24.335
194.5	90	 25.530
194.5	95	 27.681
194.5	97	 29.412
195.5	 3	 16.911
195.5	 5	 17.277
195.5	10	 17.890
195.5	25	 19.080
195.5	50	 20.731
195.5	75	 22.904
195.5	85	 24.396
195.5	90	 25.591
195.5	95	 27.739
195.5	97	 29.465
196.5	 3	 16.957
196.5	 5	 17.325
196.5	10	 17.940
196.5	25	 19.134
196.5	50	 20.788
196.5	75	 22.965
196.5	85	 24.458
196.5	90	 25.652
196.5	95	 27.797
196.5	97	 29.518
197.5	 3	 17.004
197.5	 5	 17.372
197.5	10	 17.990
197.5	25	 19.187
197.5	50	 20.846
197.5	75	 23.026
197.5	85	 24.519
197.5	90	 25.713
197.5	95	 27.855
197.5	97	 29.571
198.5	 3	 17.050
198.5	 5	 17.420
198.5	10	 18.039
198.5	25	 19.240
198.5	50	 20.903
198.5	75	 23.086
198.5	85	 24.580
198.5	90	 25.774
198.5	95	 27.912
198.5	97	 29.623
199.5	 3	 17.096
199.5	 5	 17.467
199.5	10	 18.089
199.5	25	 19.293
199.5	50	 20.960
199.5	75	 23.146
199.5	85	 24.641
199.5	90	 25.834
199.5	95	 27.970
199.5	97	 29.676
200.5	 3	 17.143
200.5	 5	 17.515
200.5	10	 18.138
200.5	25	 19.346
200.5	50	 21.017
200.5	75	 23.206
200.5	85	 24.702
200.5	90	 25.895
200.5	95	 28.027
200.5	97	 29.729
201.5	 3	 17.189
201.5	 5	 17.562
201.5	10	 18.188
201.5	25	 19.399
201.5	50	 21.074
201.5	75	 23.266
201.5	85	 24.763
201.5	90	 25.955
201.5	95	 28.085
201.5	97	 29.782
202.5	 3	 17.234
202.5	 5	 17.609
202.5	10	 18.237
202.5	25	 19.452
202.5	50	 21.130
202.5	75	 23.326
202.5	85	 24.823
202.5	90	 26.015
202.5	95	 28.142
202.5	97	 29.835
203.5	 3	 17.280
203.5	 5	 17.656
203.5	10	 18.286
203.5	25	 19.504
203.5	50	 21.186
203.5	75	 23.386
203.5	85	 24.883
203.5	90	 26.075
203.5	95	 28.199
203.5	97	 29.888
204.5	 3	 17.325
204.5	 5	 17.703
204.5	10	 18.334
204.5	25	 19.556
204.5	50	 21.242
204.5	75	 23.445
204.5	85	 24.944
204.5	90	 26.135
204.5	95	 28.257
204.5	97	 29.941
205.5	 3	 17.371
205.5	 5	 17.749
205.5	10	 18.383
205.5	25	 19.608
205.5	50	 21.298
205.5	75	 23.504
205.5	85	 25.004
205.5	90	 26.195
205.5	95	 28.314
205.5	97	 29.994
206.5	 3	 17.416
206.5	 5	 17.796
206.5	10	 18.431
206.5	25	 19.660
206.5	50	 21.354
206.5	75	 23.563
206.5	85	 25.064
206.5	90	 26.255
206.5	95	 28.372
206.5	97	 30.048
207.5	 3	 17.461
207.5	 5	 17.842
207.5	10	 18.479
207.5	25	 19.712
207.5	50	 21.409
207.5	75	 23.622
207.5	85	 25.123
207.5	90	 26.314
207.5	95	 28.429
207.5	97	 30.102
208.5	 3	 17.505
208.5	 5	 17.888
208.5	10	 18.527
208.5	25	 19.763
208.5	50	 21.465
208.5	75	 23.680
208.5	85	 25.183
208.5	90	 26.374
208.5	95	 28.487
208.5	97	 30.157
209.5	 3	 17.550
209.5	 5	 17.933
209.5	10	 18.575
209.5	25	 19.814
209.5	50	 21.520
209.5	75	 23.739
209.5	85	 25.242
209.5	90	 26.434
209.5	95	 28.545
209.5	97	 30.212
210.5	 3	 17.594
210.5	 5	 17.978
210.5	10	 18.622
210.5	25	 19.864
210.5	50	 21.574
210.5	75	 23.797
210.5	85	 25.302
210.5	90	 26.493
210.5	95	 28.603
210.5	97	 30.267
211.5	 3	 17.637
211.5	 5	 18.023
211.5	10	 18.669
211.5	25	 19.915
211.5	50	 21.629
211.5	75	 23.855
211.5	85	 25.361
211.5	90	 26.553
211.5	95	 28.662
211.5	97	 30.323
212.5	 3	 17.681
212.5	 5	 18.068
212.5	10	 18.715
212.5	25	 19.965
212.5	50	 21.683
212.5	75	 23.913
212.5	85	 25.420
212.5	90	 26.612
212.5	95	 28.720
212.5	97	 30.379
213.5	 3	 17.724
213.5	 5	 18.112
213.5	10	 18.762
213.5	25	 20.015
213.5	50	 21.736
213.5	75	 23.970
213.5	85	 25.479
213.5	90	 26.672
213.5	95	 28.779
213.5	97	 30.436
214.5	 3	 17.767
214.5	 5	 18.156
214.5	10	 18.808
214.5	25	 20.064
214.5	50	 21.790
214.5	75	 24.028
214.5	85	 25.538
214.5	90	 26.732
214.5	95	 28.839
214.5	97	 30.494
215.5	 3	 17.809
215.5	 5	 18.200
215.5	10	 18.853
215.5	25	 20.113
215.5	50	 21.843
215.5	75	 24.085
215.5	85	 25.597
215.5	90	 26.791
215.5	95	 28.898
215.5	97	 30.552
216.5	 3	 17.852
216.5	 5	 18.243
216.5	10	 18.899
216.5	25	 20.162
216.5	50	 21.896
216.5	75	 24.142
216.5	85	 25.656
216.5	90	 26.851
216.5	95	 28.959
216.5	97	 30.611
217.5	 3	 17.893
217.5	 5	 18.286
217.5	10	 18.943
217.5	25	 20.210
217.5	50	 21.948
217.5	75	 24.198
217.5	85	 25.715
217.5	90	 26.911
217.5	95	 29.019
217.5	97	 30.671
218.5	 3	 17.935
218.5	 5	 18.329
218.5	10	 18.988
218.5	25	 20.258
218.5	50	 22.001
218.5	75	 24.255
218.5	85	 25.774
218.5	90	 26.971
218.5	95	 29.080
218.5	97	 30.732
219.5	 3	 17.976
219.5	 5	 18.371
219.5	10	 19.032
219.5	25	 20.306
219.5	50	 22.052
219.5	75	 24.311
219.5	85	 25.832
219.5	90	 27.031
219.5	95	 29.142
219.5	97	 30.794
220.5	 3	 18.016
220.5	 5	 18.413
220.5	10	 19.076
220.5	25	 20.353
220.5	50	 22.104
220.5	75	 24.367
220.5	85	 25.891
220.5	90	 27.091
220.5	95	 29.204
220.5	97	 30.857
221.5	 3	 18.057
221.5	 5	 18.454
221.5	10	 19.119
221.5	25	 20.399
221.5	50	 22.155
221.5	75	 24.423
221.5	85	 25.950
221.5	90	 27.152
221.5	95	 29.267
221.5	97	 30.921
222.5	 3	 18.096
222.5	 5	 18.495
222.5	10	 19.162
222.5	25	 20.446
222.5	50	 22.205
222.5	75	 24.479
222.5	85	 26.008
222.5	90	 27.213
222.5	95	 29.330
222.5	97	 30.986
223.5	 3	 18.136
223.5	 5	 18.536
223.5	10	 19.204
223.5	25	 20.491
223.5	50	 22.256
223.5	75	 24.535
223.5	85	 26.067
223.5	90	 27.273
223.5	95	 29.394
223.5	97	 31.052
224.5	 3	 18.174
224.5	 5	 18.576
224.5	10	 19.246
224.5	25	 20.537
224.5	50	 22.306
224.5	75	 24.590
224.5	85	 26.126
224.5	90	 27.335
224.5	95	 29.459
224.5	97	 31.119
225.5	 3	 18.213
225.5	 5	 18.615
225.5	10	 19.287
225.5	25	 20.582
225.5	50	 22.355
225.5	75	 24.645
225.5	85	 26.184
225.5	90	 27.396
225.5	95	 29.525
225.5	97	 31.187
226.5	 3	 18.251
226.5	 5	 18.654
226.5	10	 19.328
226.5	25	 20.626
226.5	50	 22.404
226.5	75	 24.700
226.5	85	 26.243
226.5	90	 27.457
226.5	95	 29.591
226.5	97	 31.257
227.5	 3	 18.288
227.5	 5	 18.692
227.5	10	 19.368
227.5	25	 20.670
227.5	50	 22.453
227.5	75	 24.755
227.5	85	 26.302
227.5	90	 27.519
227.5	95	 29.659
227.5	97	 31.329
228.5	 3	 18.325
228.5	 5	 18.730
228.5	10	 19.408
228.5	25	 20.713
228.5	50	 22.501
228.5	75	 24.809
228.5	85	 26.361
228.5	90	 27.582
228.5	95	 29.727
228.5	97	 31.402
229.5	 3	 18.361
229.5	 5	 18.767
229.5	10	 19.447
229.5	25	 20.756
229.5	50	 22.548
229.5	75	 24.864
229.5	85	 26.419
229.5	90	 27.644
229.5	95	 29.796
229.5	97	 31.476
230.5	 3	 18.396
230.5	 5	 18.804
230.5	10	 19.485
230.5	25	 20.798
230.5	50	 22.596
230.5	75	 24.918
230.5	85	 26.478
230.5	90	 27.707
230.5	95	 29.866
230.5	97	 31.552
231.5	 3	 18.431
231.5	 5	 18.840
231.5	10	 19.523
231.5	25	 20.839
231.5	50	 22.642
231.5	75	 24.972
231.5	85	 26.538
231.5	90	 27.770
231.5	95	 29.937
231.5	97	 31.629
232.5	 3	 18.466
232.5	 5	 18.876
232.5	10	 19.561
232.5	25	 20.880
232.5	50	 22.689
232.5	75	 25.025
232.5	85	 26.597
232.5	90	 27.834
232.5	95	 30.009
232.5	97	 31.709
233.5	 3	 18.500
233.5	 5	 18.911
233.5	10	 19.597
233.5	25	 20.921
233.5	50	 22.735
233.5	75	 25.079
233.5	85	 26.656
233.5	90	 27.898
233.5	95	 30.083
233.5	97	 31.790
234.5	 3	 18.533
234.5	 5	 18.945
234.5	10	 19.633
234.5	25	 20.960
234.5	50	 22.780
234.5	75	 25.132
234.5	85	 26.716
234.5	90	 27.963
234.5	95	 30.157
234.5	97	 31.873
235.5	 3	 18.565
235.5	 5	 18.978
235.5	10	 19.669
235.5	25	 20.999
235.5	50	 22.825
235.5	75	 25.186
235.5	85	 26.775
235.5	90	 28.028
235.5	95	 30.233
235.5	97	 31.958
236.5	 3	 18.597
236.5	 5	 19.011
236.5	10	 19.703
236.5	25	 21.038
236.5	50	 22.869
236.5	75	 25.239
236.5	85	 26.835
236.5	90	 28.094
236.5	95	 30.310
236.5	97	 32.045
237.5	 3	 18.628
237.5	 5	 19.043
237.5	10	 19.737
237.5	25	 21.076
237.5	50	 22.913
237.5	75	 25.292
237.5	85	 26.895
237.5	90	 28.160
237.5	95	 30.388
237.5	97	 32.133
238.5	 3	 18.659
238.5	 5	 19.075
238.5	10	 19.771
238.5	25	 21.113
238.5	50	 22.956
238.5	75	 25.345
238.5	85	 26.955
238.5	90	 28.227
238.5	95	 30.468
238.5	97	 32.225
239.5	 3	 18.688
239.5	 5	 19.106
239.5	10	 19.803
239.5	25	 21.149
239.5	50	 22.999
239.5	75	 25.397
239.5	85	 27.016
239.5	90	 28.294
239.5	95	 30.549
239.5	97	 32.318
240.0	 3	 18.703
240.0	 5	 19.121
240.0	10	 19.819
240.0	25	 21.167
240.0	50	 23.020
240.0	75	 25.424
240.0	85	 27.046
240.0	90	 28.328
240.0	95	 30.590
240.0	97	 32.365
240.5	 3	 18.717
240.5	 5	 19.135
240.5	10	 19.835
240.5	25	 21.185
240.5	50	 23.041
240.5	75	 25.450
240.5	85	 27.076
240.5	90	 28.362
240.5	95	 30.631
240.5	97	 32.413