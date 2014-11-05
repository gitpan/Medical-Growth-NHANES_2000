#!/usr/bin/env perl

use strict;

use Test::More tests => 3925;

use FindBin;
use lib "$FindBin::Bin/lib";
use My_Growth_Test;

require_ok('Medical::Growth::NHANES_2000::Weight_for_Age::Child::Female');

my $h = Medical::Growth::NHANES_2000::Weight_for_Age::Child::Female->new;
My_Growth_Test::run_data_tests($h);

__DATA__
# age %ile value
 24.0	 3	  9.986
 24.0	 5	 10.210
 24.0	10	 10.574
 24.0	25	 11.234
 24.0	50	 12.055
 24.0	75	 12.987
 24.0	90	 13.938
 24.0	95	 14.566
 24.0	97	 15.002
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
 36.5	 3	 11.388
 36.5	 5	 11.655
 36.5	10	 12.093
 36.5	25	 12.902
 36.5	50	 13.941
 36.5	75	 15.165
 36.5	90	 16.468
 36.5	95	 17.362
 36.5	97	 17.998
 37.5	 3	 11.497
 37.5	 5	 11.768
 37.5	10	 12.212
 37.5	25	 13.035
 37.5	50	 14.094
 37.5	75	 15.344
 37.5	90	 16.680
 37.5	95	 17.600
 37.5	97	 18.255
 38.5	 3	 11.607
 38.5	 5	 11.882
 38.5	10	 12.333
 38.5	25	 13.170
 38.5	50	 14.248
 38.5	75	 15.526
 38.5	90	 16.895
 38.5	95	 17.840
 38.5	97	 18.515
 39.5	 3	 11.718
 39.5	 5	 11.997
 39.5	10	 12.454
 39.5	25	 13.305
 39.5	50	 14.404
 39.5	75	 15.709
 39.5	90	 17.112
 39.5	95	 18.084
 39.5	97	 18.778
 40.5	 3	 11.830
 40.5	 5	 12.113
 40.5	10	 12.577
 40.5	25	 13.442
 40.5	50	 14.562
 40.5	75	 15.894
 40.5	90	 17.332
 40.5	95	 18.330
 40.5	97	 19.045
 41.5	 3	 11.943
 41.5	 5	 12.230
 41.5	10	 12.702
 41.5	25	 13.581
 41.5	50	 14.721
 41.5	75	 16.081
 41.5	90	 17.554
 41.5	95	 18.579
 41.5	97	 19.315
 42.5	 3	 12.058
 42.5	 5	 12.349
 42.5	10	 12.827
 42.5	25	 13.721
 42.5	50	 14.881
 42.5	75	 16.270
 42.5	90	 17.778
 42.5	95	 18.830
 42.5	97	 19.587
 43.5	 3	 12.173
 43.5	 5	 12.469
 43.5	10	 12.954
 43.5	25	 13.862
 43.5	50	 15.043
 43.5	75	 16.461
 43.5	90	 18.004
 43.5	95	 19.085
 43.5	97	 19.863
 44.5	 3	 12.291
 44.5	 5	 12.590
 44.5	10	 13.083
 44.5	25	 14.005
 44.5	50	 15.207
 44.5	75	 16.654
 44.5	90	 18.233
 44.5	95	 19.342
 44.5	97	 20.142
 45.5	 3	 12.410
 45.5	 5	 12.713
 45.5	10	 13.213
 45.5	25	 14.149
 45.5	50	 15.373
 45.5	75	 16.848
 45.5	90	 18.464
 45.5	95	 19.601
 45.5	97	 20.424
 46.5	 3	 12.530
 46.5	 5	 12.837
 46.5	10	 13.344
 46.5	25	 14.295
 46.5	50	 15.540
 46.5	75	 17.044
 46.5	90	 18.697
 46.5	95	 19.863
 46.5	97	 20.709
 47.5	 3	 12.651
 47.5	 5	 12.963
 47.5	10	 13.477
 47.5	25	 14.442
 47.5	50	 15.708
 47.5	75	 17.242
 47.5	90	 18.932
 47.5	95	 20.127
 47.5	97	 20.996
 48.5	 3	 12.774
 48.5	 5	 13.090
 48.5	10	 13.611
 48.5	25	 14.591
 48.5	50	 15.878
 48.5	75	 17.441
 48.5	90	 19.169
 48.5	95	 20.394
 48.5	97	 21.286
 49.5	 3	 12.899
 49.5	 5	 13.219
 49.5	10	 13.747
 49.5	25	 14.741
 49.5	50	 16.050
 49.5	75	 17.643
 49.5	90	 19.407
 49.5	95	 20.663
 49.5	97	 21.579
 50.5	 3	 13.024
 50.5	 5	 13.348
 50.5	10	 13.884
 50.5	25	 14.893
 50.5	50	 16.223
 50.5	75	 17.845
 50.5	90	 19.648
 50.5	95	 20.934
 50.5	97	 21.874
 51.5	 3	 13.151
 51.5	 5	 13.480
 51.5	10	 14.022
 51.5	25	 15.046
 51.5	50	 16.397
 51.5	75	 18.050
 51.5	90	 19.890
 51.5	95	 21.207
 51.5	97	 22.171
 52.5	 3	 13.280
 52.5	 5	 13.612
 52.5	10	 14.162
 52.5	25	 15.200
 52.5	50	 16.573
 52.5	75	 18.255
 52.5	90	 20.135
 52.5	95	 21.482
 52.5	97	 22.470
 53.5	 3	 13.409
 53.5	 5	 13.746
 53.5	10	 14.303
 53.5	25	 15.355
 53.5	50	 16.750
 53.5	75	 18.462
 53.5	90	 20.380
 53.5	95	 21.759
 53.5	97	 22.772
 54.5	 3	 13.540
 54.5	 5	 13.880
 54.5	10	 14.445
 54.5	25	 15.512
 54.5	50	 16.928
 54.5	75	 18.671
 54.5	90	 20.628
 54.5	95	 22.038
 54.5	97	 23.076
 55.5	 3	 13.671
 55.5	 5	 14.016
 55.5	10	 14.588
 55.5	25	 15.670
 55.5	50	 17.108
 55.5	75	 18.881
 55.5	90	 20.877
 55.5	95	 22.319
 55.5	97	 23.382
 56.5	 3	 13.804
 56.5	 5	 14.153
 56.5	10	 14.732
 56.5	25	 15.829
 56.5	50	 17.289
 56.5	75	 19.092
 56.5	90	 21.128
 56.5	95	 22.601
 56.5	97	 23.691
 57.5	 3	 13.937
 57.5	 5	 14.291
 57.5	10	 14.877
 57.5	25	 15.989
 57.5	50	 17.471
 57.5	75	 19.305
 57.5	90	 21.380
 57.5	95	 22.886
 57.5	97	 24.001
 58.5	 3	 14.072
 58.5	 5	 14.429
 58.5	10	 15.023
 58.5	25	 16.150
 58.5	50	 17.654
 58.5	75	 19.519
 58.5	90	 21.634
 58.5	95	 23.172
 58.5	97	 24.313
 59.5	 3	 14.207
 59.5	 5	 14.569
 59.5	10	 15.170
 59.5	25	 16.312
 59.5	50	 17.838
 59.5	75	 19.734
 59.5	90	 21.889
 59.5	95	 23.460
 59.5	97	 24.628
 60.5	 3	 14.343
 60.5	 5	 14.709
 60.5	10	 15.318
 60.5	25	 16.475
 60.5	50	 18.023
 60.5	75	 19.950
 60.5	90	 22.146
 60.5	95	 23.750
 60.5	97	 24.944
 61.5	 3	 14.479
 61.5	 5	 14.850
 61.5	10	 15.466
 61.5	25	 16.639
 61.5	50	 18.210
 61.5	75	 20.168
 61.5	90	 22.405
 61.5	95	 24.042
 61.5	97	 25.263
 62.5	 3	 14.617
 62.5	 5	 14.992
 62.5	10	 15.615
 62.5	25	 16.803
 62.5	50	 18.397
 62.5	75	 20.388
 62.5	90	 22.665
 62.5	95	 24.336
 62.5	97	 25.583
 63.5	 3	 14.754
 63.5	 5	 15.134
 63.5	10	 15.765
 63.5	25	 16.969
 63.5	50	 18.586
 63.5	75	 20.608
 63.5	90	 22.927
 63.5	95	 24.631
 63.5	97	 25.906
 64.5	 3	 14.892
 64.5	 5	 15.277
 64.5	10	 15.916
 64.5	25	 17.136
 64.5	50	 18.775
 64.5	75	 20.830
 64.5	90	 23.190
 64.5	95	 24.929
 64.5	97	 26.231
 65.5	 3	 15.031
 65.5	 5	 15.420
 65.5	10	 16.067
 65.5	25	 17.303
 65.5	50	 18.966
 65.5	75	 21.053
 65.5	90	 23.456
 65.5	95	 25.229
 65.5	97	 26.558
 66.5	 3	 15.170
 66.5	 5	 15.564
 66.5	10	 16.219
 66.5	25	 17.471
 66.5	50	 19.158
 66.5	75	 21.278
 66.5	90	 23.723
 66.5	95	 25.531
 66.5	97	 26.888
 67.5	 3	 15.310
 67.5	 5	 15.708
 67.5	10	 16.372
 67.5	25	 17.640
 67.5	50	 19.351
 67.5	75	 21.505
 67.5	90	 23.992
 67.5	95	 25.835
 67.5	97	 27.220
 68.5	 3	 15.450
 68.5	 5	 15.853
 68.5	10	 16.525
 68.5	25	 17.810
 68.5	50	 19.546
 68.5	75	 21.733
 68.5	90	 24.264
 68.5	95	 26.141
 68.5	97	 27.555
 69.5	 3	 15.590
 69.5	 5	 15.998
 69.5	10	 16.679
 69.5	25	 17.981
 69.5	50	 19.742
 69.5	75	 21.963
 69.5	90	 24.537
 69.5	95	 26.450
 69.5	97	 27.892
 70.5	 3	 15.730
 70.5	 5	 16.144
 70.5	10	 16.833
 70.5	25	 18.153
 70.5	50	 19.938
 70.5	75	 22.194
 70.5	90	 24.813
 70.5	95	 26.762
 70.5	97	 28.232
 71.5	 3	 15.871
 71.5	 5	 16.290
 71.5	10	 16.988
 71.5	25	 18.325
 71.5	50	 20.137
 71.5	75	 22.428
 71.5	90	 25.091
 71.5	95	 27.076
 71.5	97	 28.575
 72.5	 3	 16.012
 72.5	 5	 16.436
 72.5	10	 17.143
 72.5	25	 18.499
 72.5	50	 20.336
 72.5	75	 22.663
 72.5	90	 25.371
 72.5	95	 27.393
 72.5	97	 28.922
 73.5	 3	 16.153
 73.5	 5	 16.583
 73.5	10	 17.299
 73.5	25	 18.674
 73.5	50	 20.537
 73.5	75	 22.900
 73.5	90	 25.655
 73.5	95	 27.713
 73.5	97	 29.271
 74.5	 3	 16.295
 74.5	 5	 16.730
 74.5	10	 17.456
 74.5	25	 18.849
 74.5	50	 20.740
 74.5	75	 23.140
 74.5	90	 25.941
 74.5	95	 28.036
 74.5	97	 29.624
 75.5	 3	 16.436
 75.5	 5	 16.877
 75.5	10	 17.613
 75.5	25	 19.026
 75.5	50	 20.944
 75.5	75	 23.381
 75.5	90	 26.229
 75.5	95	 28.362
 75.5	97	 29.980
 76.5	 3	 16.578
 76.5	 5	 17.025
 76.5	10	 17.771
 76.5	25	 19.203
 76.5	50	 21.150
 76.5	75	 23.626
 76.5	90	 26.521
 76.5	95	 28.692
 76.5	97	 30.340
 77.5	 3	 16.721
 77.5	 5	 17.174
 77.5	10	 17.930
 77.5	25	 19.382
 77.5	50	 21.358
 77.5	75	 23.872
 77.5	90	 26.816
 77.5	95	 29.025
 77.5	97	 30.703
 78.5	 3	 16.863
 78.5	 5	 17.323
 78.5	10	 18.089
 78.5	25	 19.562
 78.5	50	 21.567
 78.5	75	 24.121
 78.5	90	 27.114
 78.5	95	 29.362
 78.5	97	 31.071
 79.5	 3	 17.007
 79.5	 5	 17.472
 79.5	10	 18.249
 79.5	25	 19.744
 79.5	50	 21.779
 79.5	75	 24.373
 79.5	90	 27.416
 79.5	95	 29.703
 79.5	97	 31.442
 80.5	 3	 17.150
 80.5	 5	 17.622
 80.5	10	 18.410
 80.5	25	 19.926
 80.5	50	 21.992
 80.5	75	 24.627
 80.5	90	 27.721
 80.5	95	 30.048
 80.5	97	 31.818
 81.5	 3	 17.294
 81.5	 5	 17.772
 81.5	10	 18.572
 81.5	25	 20.110
 81.5	50	 22.208
 81.5	75	 24.885
 81.5	90	 28.030
 81.5	95	 30.397
 81.5	97	 32.199
 82.5	 3	 17.438
 82.5	 5	 17.924
 82.5	10	 18.734
 82.5	25	 20.296
 82.5	50	 22.426
 82.5	75	 25.145
 82.5	90	 28.342
 82.5	95	 30.750
 82.5	97	 32.584
 83.5	 3	 17.583
 83.5	 5	 18.075
 83.5	10	 18.898
 83.5	25	 20.483
 83.5	50	 22.646
 83.5	75	 25.409
 83.5	90	 28.659
 83.5	95	 31.108
 83.5	97	 32.974
 84.5	 3	 17.729
 84.5	 5	 18.228
 84.5	10	 19.063
 84.5	25	 20.672
 84.5	50	 22.868
 84.5	75	 25.675
 84.5	90	 28.980
 84.5	95	 31.470
 84.5	97	 33.368
 85.5	 3	 17.875
 85.5	 5	 18.382
 85.5	10	 19.229
 85.5	25	 20.862
 85.5	50	 23.093
 85.5	75	 25.946
 85.5	90	 29.305
 85.5	95	 31.838
 85.5	97	 33.768
 86.5	 3	 18.022
 86.5	 5	 18.536
 86.5	10	 19.396
 86.5	25	 21.054
 86.5	50	 23.320
 86.5	75	 26.219
 86.5	90	 29.634
 86.5	95	 32.210
 86.5	97	 34.173
 87.5	 3	 18.169
 87.5	 5	 18.691
 87.5	10	 19.565
 87.5	25	 21.249
 87.5	50	 23.551
 87.5	75	 26.497
 87.5	90	 29.968
 87.5	95	 32.587
 87.5	97	 34.583
 88.5	 3	 18.318
 88.5	 5	 18.848
 88.5	10	 19.734
 88.5	25	 21.445
 88.5	50	 23.783
 88.5	75	 26.778
 88.5	90	 30.307
 88.5	95	 32.969
 88.5	97	 34.999
 89.5	 3	 18.467
 89.5	 5	 19.005
 89.5	10	 19.906
 89.5	25	 21.643
 89.5	50	 24.019
 89.5	75	 27.062
 89.5	90	 30.650
 89.5	95	 33.357
 89.5	97	 35.420
 90.5	 3	 18.617
 90.5	 5	 19.164
 90.5	10	 20.078
 90.5	25	 21.843
 90.5	50	 24.258
 90.5	75	 27.351
 90.5	90	 30.998
 90.5	95	 33.750
 90.5	97	 35.847
 91.5	 3	 18.769
 91.5	 5	 19.324
 91.5	10	 20.253
 91.5	25	 22.046
 91.5	50	 24.500
 91.5	75	 27.644
 91.5	90	 31.351
 91.5	95	 34.149
 91.5	97	 36.280
 92.5	 3	 18.921
 92.5	 5	 19.485
 92.5	10	 20.429
 92.5	25	 22.250
 92.5	50	 24.745
 92.5	75	 27.941
 92.5	90	 31.710
 92.5	95	 34.553
 92.5	97	 36.719
 93.5	 3	 19.075
 93.5	 5	 19.648
 93.5	10	 20.606
 93.5	25	 22.458
 93.5	50	 24.993
 93.5	75	 28.242
 93.5	90	 32.073
 93.5	95	 34.963
 93.5	97	 37.164
 94.5	 3	 19.230
 94.5	 5	 19.812
 94.5	10	 20.786
 94.5	25	 22.667
 94.5	50	 25.244
 94.5	75	 28.547
 94.5	90	 32.441
 94.5	95	 35.378
 94.5	97	 37.615
 95.5	 3	 19.387
 95.5	 5	 19.978
 95.5	10	 20.968
 95.5	25	 22.880
 95.5	50	 25.499
 95.5	75	 28.856
 95.5	90	 32.815
 95.5	95	 35.800
 95.5	97	 38.072
 96.5	 3	 19.545
 96.5	 5	 20.145
 96.5	10	 21.151
 96.5	25	 23.094
 96.5	50	 25.757
 96.5	75	 29.170
 96.5	90	 33.194
 96.5	95	 36.227
 96.5	97	 38.535
 97.5	 3	 19.704
 97.5	 5	 20.315
 97.5	10	 21.337
 97.5	25	 23.312
 97.5	50	 26.019
 97.5	75	 29.489
 97.5	90	 33.579
 97.5	95	 36.660
 97.5	97	 39.005
 98.5	 3	 19.866
 98.5	 5	 20.486
 98.5	10	 21.525
 98.5	25	 23.532
 98.5	50	 26.284
 98.5	75	 29.812
 98.5	90	 33.969
 98.5	95	 37.100
 98.5	97	 39.481
 99.5	 3	 20.029
 99.5	 5	 20.659
 99.5	10	 21.715
 99.5	25	 23.756
 99.5	50	 26.553
 99.5	75	 30.139
 99.5	90	 34.364
 99.5	95	 37.545
 99.5	97	 39.963
100.5	 3	 20.194
100.5	 5	 20.834
100.5	10	 21.907
100.5	25	 23.982
100.5	50	 26.826
100.5	75	 30.471
100.5	90	 34.765
100.5	95	 37.996
100.5	97	 40.451
101.5	 3	 20.360
101.5	 5	 21.011
101.5	10	 22.102
101.5	25	 24.211
101.5	50	 27.102
101.5	75	 30.808
101.5	90	 35.172
101.5	95	 38.453
101.5	97	 40.946
102.5	 3	 20.529
102.5	 5	 21.191
102.5	10	 22.299
102.5	25	 24.443
102.5	50	 27.382
102.5	75	 31.149
102.5	90	 35.583
102.5	95	 38.917
102.5	97	 41.447
103.5	 3	 20.700
103.5	 5	 21.372
103.5	10	 22.499
103.5	25	 24.678
103.5	50	 27.666
103.5	75	 31.495
103.5	90	 36.001
103.5	95	 39.386
103.5	97	 41.954
104.5	 3	 20.873
104.5	 5	 21.556
104.5	10	 22.701
104.5	25	 24.916
104.5	50	 27.954
104.5	75	 31.846
104.5	90	 36.424
104.5	95	 39.861
104.5	97	 42.468
105.5	 3	 21.048
105.5	 5	 21.743
105.5	10	 22.906
105.5	25	 25.158
105.5	50	 28.245
105.5	75	 32.201
105.5	90	 36.852
105.5	95	 40.342
105.5	97	 42.988
106.5	 3	 21.226
106.5	 5	 21.931
106.5	10	 23.114
106.5	25	 25.403
106.5	50	 28.541
106.5	75	 32.561
106.5	90	 37.285
106.5	95	 40.828
106.5	97	 43.513
107.5	 3	 21.406
107.5	 5	 22.123
107.5	10	 23.325
107.5	25	 25.650
107.5	50	 28.840
107.5	75	 32.925
107.5	90	 37.724
107.5	95	 41.321
107.5	97	 44.045
108.5	 3	 21.588
108.5	 5	 22.317
108.5	10	 23.538
108.5	25	 25.902
108.5	50	 29.143
108.5	75	 33.294
108.5	90	 38.168
108.5	95	 41.819
108.5	97	 44.582
109.5	 3	 21.773
109.5	 5	 22.513
109.5	10	 23.754
109.5	25	 26.156
109.5	50	 29.450
109.5	75	 33.667
109.5	90	 38.617
109.5	95	 42.322
109.5	97	 45.125
110.5	 3	 21.961
110.5	 5	 22.713
110.5	10	 23.974
110.5	25	 26.414
110.5	50	 29.760
110.5	75	 34.045
110.5	90	 39.070
110.5	95	 42.831
110.5	97	 45.674
111.5	 3	 22.151
111.5	 5	 22.915
111.5	10	 24.196
111.5	25	 26.675
111.5	50	 30.075
111.5	75	 34.427
111.5	90	 39.529
111.5	95	 43.345
111.5	97	 46.228
112.5	 3	 22.344
112.5	 5	 23.120
112.5	10	 24.421
112.5	25	 26.939
112.5	50	 30.393
112.5	75	 34.813
112.5	90	 39.993
112.5	95	 43.864
112.5	97	 46.788
113.5	 3	 22.540
113.5	 5	 23.328
113.5	10	 24.649
113.5	25	 27.207
113.5	50	 30.715
113.5	75	 35.203
113.5	90	 40.461
113.5	95	 44.388
113.5	97	 47.352
114.5	 3	 22.739
114.5	 5	 23.539
114.5	10	 24.880
114.5	25	 27.478
114.5	50	 31.040
114.5	75	 35.597
114.5	90	 40.933
114.5	95	 44.917
114.5	97	 47.922
115.5	 3	 22.940
115.5	 5	 23.752
115.5	10	 25.115
115.5	25	 27.752
115.5	50	 31.369
115.5	75	 35.995
115.5	90	 41.410
115.5	95	 45.450
115.5	97	 48.496
116.5	 3	 23.144
116.5	 5	 23.969
116.5	10	 25.352
116.5	25	 28.030
116.5	50	 31.702
116.5	75	 36.397
116.5	90	 41.891
116.5	95	 45.987
116.5	97	 49.075
117.5	 3	 23.352
117.5	 5	 24.188
117.5	10	 25.592
117.5	25	 28.310
117.5	50	 32.037
117.5	75	 36.803
117.5	90	 42.375
117.5	95	 46.529
117.5	97	 49.658
118.5	 3	 23.562
118.5	 5	 24.411
118.5	10	 25.836
118.5	25	 28.594
118.5	50	 32.376
118.5	75	 37.211
118.5	90	 42.863
118.5	95	 47.074
118.5	97	 50.244
119.5	 3	 23.775
119.5	 5	 24.637
119.5	10	 26.082
119.5	25	 28.881
119.5	50	 32.719
119.5	75	 37.624
119.5	90	 43.355
119.5	95	 47.623
119.5	97	 50.835
120.5	 3	 23.991
120.5	 5	 24.865
120.5	10	 26.331
120.5	25	 29.171
120.5	50	 33.064
120.5	75	 38.039
120.5	90	 43.850
120.5	95	 48.175
120.5	97	 51.429
121.5	 3	 24.211
121.5	 5	 25.097
121.5	10	 26.584
121.5	25	 29.464
121.5	50	 33.412
121.5	75	 38.457
121.5	90	 44.348
121.5	95	 48.730
121.5	97	 52.026
122.5	 3	 24.433
122.5	 5	 25.331
122.5	10	 26.839
122.5	25	 29.759
122.5	50	 33.763
122.5	75	 38.878
122.5	90	 44.848
122.5	95	 49.288
122.5	97	 52.627
123.5	 3	 24.658
123.5	 5	 25.569
123.5	10	 27.097
123.5	25	 30.058
123.5	50	 34.117
123.5	75	 39.301
123.5	90	 45.352
123.5	95	 49.849
123.5	97	 53.230
124.5	 3	 24.887
124.5	 5	 25.809
124.5	10	 27.358
124.5	25	 30.359
124.5	50	 34.473
124.5	75	 39.727
124.5	90	 45.857
124.5	95	 50.412
124.5	97	 53.835
125.5	 3	 25.118
125.5	 5	 26.053
125.5	10	 27.622
125.5	25	 30.663
125.5	50	 34.831
125.5	75	 40.154
125.5	90	 46.364
125.5	95	 50.977
125.5	97	 54.442
126.5	 3	 25.352
126.5	 5	 26.299
126.5	10	 27.889
126.5	25	 30.969
126.5	50	 35.192
126.5	75	 40.584
126.5	90	 46.873
126.5	95	 51.543
126.5	97	 55.051
127.5	 3	 25.589
127.5	 5	 26.549
127.5	10	 28.159
127.5	25	 31.278
127.5	50	 35.554
127.5	75	 41.015
127.5	90	 47.383
127.5	95	 52.111
127.5	97	 55.661
128.5	 3	 25.830
128.5	 5	 26.801
128.5	10	 28.431
128.5	25	 31.589
128.5	50	 35.919
128.5	75	 41.448
128.5	90	 47.894
128.5	95	 52.680
128.5	97	 56.272
129.5	 3	 26.073
129.5	 5	 27.055
129.5	10	 28.705
129.5	25	 31.902
129.5	50	 36.285
129.5	75	 41.881
129.5	90	 48.406
129.5	95	 53.249
129.5	97	 56.884
130.5	 3	 26.319
130.5	 5	 27.313
130.5	10	 28.982
130.5	25	 32.217
130.5	50	 36.652
130.5	75	 42.316
130.5	90	 48.918
130.5	95	 53.818
130.5	97	 57.496
131.5	 3	 26.567
131.5	 5	 27.573
131.5	10	 29.262
131.5	25	 32.534
131.5	50	 37.021
131.5	75	 42.751
131.5	90	 49.431
131.5	95	 54.388
131.5	97	 58.108
132.5	 3	 26.819
132.5	 5	 27.836
132.5	10	 29.543
132.5	25	 32.852
132.5	50	 37.391
132.5	75	 43.187
132.5	90	 49.943
132.5	95	 54.957
132.5	97	 58.720
133.5	 3	 27.073
133.5	 5	 28.101
133.5	10	 29.827
133.5	25	 33.173
133.5	50	 37.761
133.5	75	 43.622
133.5	90	 50.454
133.5	95	 55.525
133.5	97	 59.331
134.5	 3	 27.329
134.5	 5	 28.368
134.5	10	 30.113
134.5	25	 33.494
134.5	50	 38.133
134.5	75	 44.057
134.5	90	 50.965
134.5	95	 56.093
134.5	97	 59.941
135.5	 3	 27.588
135.5	 5	 28.638
135.5	10	 30.401
135.5	25	 33.817
135.5	50	 38.504
135.5	75	 44.492
135.5	90	 51.475
135.5	95	 56.659
135.5	97	 60.550
136.5	 3	 27.850
136.5	 5	 28.910
136.5	10	 30.690
136.5	25	 34.141
136.5	50	 38.876
136.5	75	 44.926
136.5	90	 51.983
136.5	95	 57.223
136.5	97	 61.156
137.5	 3	 28.114
137.5	 5	 29.184
137.5	10	 30.981
137.5	25	 34.466
137.5	50	 39.248
137.5	75	 45.359
137.5	90	 52.489
137.5	95	 57.784
137.5	97	 61.761
138.5	 3	 28.380
138.5	 5	 29.460
138.5	10	 31.274
138.5	25	 34.791
138.5	50	 39.619
138.5	75	 45.790
138.5	90	 52.993
138.5	95	 58.344
138.5	97	 62.363
139.5	 3	 28.648
139.5	 5	 29.738
139.5	10	 31.568
139.5	25	 35.117
139.5	50	 39.990
139.5	75	 46.220
139.5	90	 53.494
139.5	95	 58.900
139.5	97	 62.962
140.5	 3	 28.919
140.5	 5	 30.018
140.5	10	 31.864
140.5	25	 35.444
140.5	50	 40.360
140.5	75	 46.648
140.5	90	 53.992
140.5	95	 59.453
140.5	97	 63.558
141.5	 3	 29.191
141.5	 5	 30.299
141.5	10	 32.160
141.5	25	 35.771
141.5	50	 40.729
141.5	75	 47.074
141.5	90	 54.488
141.5	95	 60.003
141.5	97	 64.150
142.5	 3	 29.465
142.5	 5	 30.582
142.5	10	 32.458
142.5	25	 36.097
142.5	50	 41.097
142.5	75	 47.497
142.5	90	 54.979
142.5	95	 60.549
142.5	97	 64.738
143.5	 3	 29.740
143.5	 5	 30.866
143.5	10	 32.756
143.5	25	 36.424
143.5	50	 41.463
143.5	75	 47.917
143.5	90	 55.467
143.5	95	 61.090
143.5	97	 65.322
144.5	 3	 30.018
144.5	 5	 31.151
144.5	10	 33.055
144.5	25	 36.750
144.5	50	 41.828
144.5	75	 48.334
144.5	90	 55.950
144.5	95	 61.627
144.5	97	 65.901
145.5	 3	 30.296
145.5	 5	 31.437
145.5	10	 33.354
145.5	25	 37.075
145.5	50	 42.191
145.5	75	 48.748
145.5	90	 56.429
145.5	95	 62.159
145.5	97	 66.475
146.5	 3	 30.576
146.5	 5	 31.724
146.5	10	 33.654
146.5	25	 37.399
146.5	50	 42.551
146.5	75	 49.158
146.5	90	 56.904
146.5	95	 62.685
146.5	97	 67.044
147.5	 3	 30.857
147.5	 5	 32.012
147.5	10	 33.954
147.5	25	 37.723
147.5	50	 42.909
147.5	75	 49.564
147.5	90	 57.372
147.5	95	 63.206
147.5	97	 67.608
148.5	 3	 31.138
148.5	 5	 32.301
148.5	10	 34.253
148.5	25	 38.045
148.5	50	 43.264
148.5	75	 49.966
148.5	90	 57.836
148.5	95	 63.721
148.5	97	 68.165
149.5	 3	 31.421
149.5	 5	 32.589
149.5	10	 34.553
149.5	25	 38.366
149.5	50	 43.617
149.5	75	 50.363
149.5	90	 58.294
149.5	95	 64.230
149.5	97	 68.716
150.5	 3	 31.704
150.5	 5	 32.878
150.5	10	 34.852
150.5	25	 38.685
150.5	50	 43.966
150.5	75	 50.756
150.5	90	 58.745
150.5	95	 64.733
150.5	97	 69.261
151.5	 3	 31.988
151.5	 5	 33.167
151.5	10	 35.150
151.5	25	 39.003
151.5	50	 44.312
151.5	75	 51.143
151.5	90	 59.191
151.5	95	 65.228
151.5	97	 69.798
152.5	 3	 32.272
152.5	 5	 33.456
152.5	10	 35.448
152.5	25	 39.318
152.5	50	 44.654
152.5	75	 51.525
152.5	90	 59.629
152.5	95	 65.717
152.5	97	 70.329
153.5	 3	 32.556
153.5	 5	 33.745
153.5	10	 35.745
153.5	25	 39.631
153.5	50	 44.993
153.5	75	 51.902
153.5	90	 60.061
153.5	95	 66.198
153.5	97	 70.853
154.5	 3	 32.839
154.5	 5	 34.033
154.5	10	 36.040
154.5	25	 39.942
154.5	50	 45.327
154.5	75	 52.273
154.5	90	 60.486
154.5	95	 66.671
154.5	97	 71.368
155.5	 3	 33.123
155.5	 5	 34.321
155.5	10	 36.334
155.5	25	 40.250
155.5	50	 45.658
155.5	75	 52.638
155.5	90	 60.903
155.5	95	 67.137
155.5	97	 71.876
156.5	 3	 33.406
156.5	 5	 34.607
156.5	10	 36.627
156.5	25	 40.556
156.5	50	 45.984
156.5	75	 52.997
156.5	90	 61.313
156.5	95	 67.594
156.5	97	 72.376
157.5	 3	 33.689
157.5	 5	 34.893
157.5	10	 36.918
157.5	25	 40.858
157.5	50	 46.305
157.5	75	 53.350
157.5	90	 61.715
157.5	95	 68.044
157.5	97	 72.868
158.5	 3	 33.970
158.5	 5	 35.177
158.5	10	 37.207
158.5	25	 41.157
158.5	50	 46.622
158.5	75	 53.696
158.5	90	 62.109
158.5	95	 68.485
158.5	97	 73.351
159.5	 3	 34.251
159.5	 5	 35.460
159.5	10	 37.494
159.5	25	 41.453
159.5	50	 46.933
159.5	75	 54.035
159.5	90	 62.495
159.5	95	 68.917
159.5	97	 73.826
160.5	 3	 34.531
160.5	 5	 35.741
160.5	10	 37.779
160.5	25	 41.746
160.5	50	 47.240
160.5	75	 54.368
160.5	90	 62.872
160.5	95	 69.340
160.5	97	 74.292
161.5	 3	 34.809
161.5	 5	 36.021
161.5	10	 38.061
161.5	25	 42.034
161.5	50	 47.541
161.5	75	 54.693
161.5	90	 63.241
161.5	95	 69.754
161.5	97	 74.749
162.5	 3	 35.085
162.5	 5	 36.299
162.5	10	 38.341
162.5	25	 42.319
162.5	50	 47.837
162.5	75	 55.012
162.5	90	 63.601
162.5	95	 70.160
162.5	97	 75.197
163.5	 3	 35.360
163.5	 5	 36.574
163.5	10	 38.617
163.5	25	 42.600
163.5	50	 48.127
163.5	75	 55.323
163.5	90	 63.953
163.5	95	 70.556
163.5	97	 75.635
164.5	 3	 35.633
164.5	 5	 36.847
164.5	10	 38.891
164.5	25	 42.877
164.5	50	 48.411
164.5	75	 55.626
164.5	90	 64.295
164.5	95	 70.942
164.5	97	 76.065
165.5	 3	 35.904
165.5	 5	 37.118
165.5	10	 39.162
165.5	25	 43.149
165.5	50	 48.690
165.5	75	 55.922
165.5	90	 64.629
165.5	95	 71.319
165.5	97	 76.485
166.5	 3	 36.172
166.5	 5	 37.386
166.5	10	 39.430
166.5	25	 43.418
166.5	50	 48.963
166.5	75	 56.210
166.5	90	 64.953
166.5	95	 71.687
166.5	97	 76.895
167.5	 3	 36.438
167.5	 5	 37.651
167.5	10	 39.694
167.5	25	 43.681
167.5	50	 49.230
167.5	75	 56.491
167.5	90	 65.269
167.5	95	 72.044
167.5	97	 77.297
168.5	 3	 36.701
168.5	 5	 37.913
168.5	10	 39.955
168.5	25	 43.940
168.5	50	 49.491
168.5	75	 56.764
168.5	90	 65.575
168.5	95	 72.393
168.5	97	 77.688
169.5	 3	 36.962
169.5	 5	 38.172
169.5	10	 40.212
169.5	25	 44.194
169.5	50	 49.745
169.5	75	 57.030
169.5	90	 65.872
169.5	95	 72.731
169.5	97	 78.070
170.5	 3	 37.219
170.5	 5	 38.428
170.5	10	 40.465
170.5	25	 44.444
170.5	50	 49.994
170.5	75	 57.287
170.5	90	 66.160
170.5	95	 73.060
170.5	97	 78.443
171.5	 3	 37.473
171.5	 5	 38.680
171.5	10	 40.714
171.5	25	 44.688
171.5	50	 50.236
171.5	75	 57.537
171.5	90	 66.439
171.5	95	 73.379
171.5	97	 78.805
172.5	 3	 37.724
172.5	 5	 38.929
172.5	10	 40.958
172.5	25	 44.927
172.5	50	 50.472
172.5	75	 57.779
172.5	90	 66.709
172.5	95	 73.689
172.5	97	 79.159
173.5	 3	 37.971
173.5	 5	 39.173
173.5	10	 41.199
173.5	25	 45.162
173.5	50	 50.702
173.5	75	 58.013
173.5	90	 66.970
173.5	95	 73.989
173.5	97	 79.503
174.5	 3	 38.215
174.5	 5	 39.414
174.5	10	 41.435
174.5	25	 45.391
174.5	50	 50.925
174.5	75	 58.240
174.5	90	 67.221
174.5	95	 74.280
174.5	97	 79.837
175.5	 3	 38.454
175.5	 5	 39.651
175.5	10	 41.667
175.5	25	 45.615
175.5	50	 51.143
175.5	75	 58.459
175.5	90	 67.464
175.5	95	 74.561
175.5	97	 80.162
176.5	 3	 38.690
176.5	 5	 39.883
176.5	10	 41.894
176.5	25	 45.833
176.5	50	 51.354
176.5	75	 58.671
176.5	90	 67.698
176.5	95	 74.832
176.5	97	 80.477
177.5	 3	 38.922
177.5	 5	 40.111
177.5	10	 42.117
177.5	25	 46.046
177.5	50	 51.558
177.5	75	 58.875
177.5	90	 67.923
177.5	95	 75.095
177.5	97	 80.784
178.5	 3	 39.149
178.5	 5	 40.335
178.5	10	 42.335
178.5	25	 46.254
178.5	50	 51.757
178.5	75	 59.072
178.5	90	 68.140
178.5	95	 75.348
178.5	97	 81.081
179.5	 3	 39.372
179.5	 5	 40.554
179.5	10	 42.548
179.5	25	 46.457
179.5	50	 51.949
179.5	75	 59.261
179.5	90	 68.348
179.5	95	 75.592
179.5	97	 81.369
180.5	 3	 39.590
180.5	 5	 40.768
180.5	10	 42.756
180.5	25	 46.654
180.5	50	 52.136
180.5	75	 59.444
180.5	90	 68.549
180.5	95	 75.828
180.5	97	 81.648
181.5	 3	 39.804
181.5	 5	 40.978
181.5	10	 42.960
181.5	25	 46.846
181.5	50	 52.316
181.5	75	 59.620
181.5	90	 68.741
181.5	95	 76.055
181.5	97	 81.919
182.5	 3	 40.013
182.5	 5	 41.183
182.5	10	 43.158
182.5	25	 47.033
182.5	50	 52.491
182.5	75	 59.789
182.5	90	 68.926
182.5	95	 76.274
182.5	97	 82.181
183.5	 3	 40.217
183.5	 5	 41.383
183.5	10	 43.351
183.5	25	 47.215
183.5	50	 52.660
183.5	75	 59.952
183.5	90	 69.103
183.5	95	 76.484
183.5	97	 82.434
184.5	 3	 40.416
184.5	 5	 41.578
184.5	10	 43.539
184.5	25	 47.391
184.5	50	 52.823
184.5	75	 60.108
184.5	90	 69.273
184.5	95	 76.687
184.5	97	 82.679
185.5	 3	 40.611
185.5	 5	 41.768
185.5	10	 43.723
185.5	25	 47.562
185.5	50	 52.981
185.5	75	 60.258
185.5	90	 69.435
185.5	95	 76.881
185.5	97	 82.917
186.5	 3	 40.800
186.5	 5	 41.953
186.5	10	 43.901
186.5	25	 47.728
186.5	50	 53.133
186.5	75	 60.403
186.5	90	 69.592
186.5	95	 77.069
186.5	97	 83.146
187.5	 3	 40.984
187.5	 5	 42.133
187.5	10	 44.074
187.5	25	 47.888
187.5	50	 53.281
187.5	75	 60.542
187.5	90	 69.741
187.5	95	 77.249
187.5	97	 83.367
188.5	 3	 41.163
188.5	 5	 42.308
188.5	10	 44.242
188.5	25	 48.044
188.5	50	 53.423
188.5	75	 60.676
188.5	90	 69.885
188.5	95	 77.422
188.5	97	 83.581
189.5	 3	 41.337
189.5	 5	 42.478
189.5	10	 44.405
189.5	25	 48.195
189.5	50	 53.560
189.5	75	 60.804
189.5	90	 70.023
189.5	95	 77.589
189.5	97	 83.788
190.5	 3	 41.506
190.5	 5	 42.642
190.5	10	 44.563
190.5	25	 48.341
190.5	50	 53.693
190.5	75	 60.928
190.5	90	 70.155
190.5	95	 77.749
190.5	97	 83.988
191.5	 3	 41.669
191.5	 5	 42.802
191.5	10	 44.716
191.5	25	 48.483
191.5	50	 53.821
191.5	75	 61.047
191.5	90	 70.282
191.5	95	 77.903
191.5	97	 84.180
192.5	 3	 41.827
192.5	 5	 42.956
192.5	10	 44.864
192.5	25	 48.620
192.5	50	 53.945
192.5	75	 61.162
192.5	90	 70.405
192.5	95	 78.052
192.5	97	 84.366
193.5	 3	 41.980
193.5	 5	 43.106
193.5	10	 45.008
193.5	25	 48.752
193.5	50	 54.065
193.5	75	 61.274
193.5	90	 70.523
193.5	95	 78.195
193.5	97	 84.546
194.5	 3	 42.128
194.5	 5	 43.250
194.5	10	 45.146
194.5	25	 48.880
194.5	50	 54.182
194.5	75	 61.381
194.5	90	 70.637
194.5	95	 78.334
194.5	97	 84.720
195.5	 3	 42.271
195.5	 5	 43.390
195.5	10	 45.280
195.5	25	 49.004
195.5	50	 54.294
195.5	75	 61.485
195.5	90	 70.748
195.5	95	 78.467
195.5	97	 84.887
196.5	 3	 42.409
196.5	 5	 43.524
196.5	10	 45.410
196.5	25	 49.124
196.5	50	 54.403
196.5	75	 61.587
196.5	90	 70.855
196.5	95	 78.597
196.5	97	 85.049
197.5	 3	 42.542
197.5	 5	 43.654
197.5	10	 45.535
197.5	25	 49.240
197.5	50	 54.509
197.5	75	 61.685
197.5	90	 70.959
197.5	95	 78.722
197.5	97	 85.205
198.5	 3	 42.669
198.5	 5	 43.779
198.5	10	 45.655
198.5	25	 49.353
198.5	50	 54.612
198.5	75	 61.782
198.5	90	 71.061
198.5	95	 78.844
198.5	97	 85.357
199.5	 3	 42.792
199.5	 5	 43.899
199.5	10	 45.771
199.5	25	 49.462
199.5	50	 54.713
199.5	75	 61.876
199.5	90	 71.160
199.5	95	 78.962
199.5	97	 85.503
200.5	 3	 42.910
200.5	 5	 44.015
200.5	10	 45.884
200.5	25	 49.567
200.5	50	 54.810
200.5	75	 61.969
200.5	90	 71.258
200.5	95	 79.077
200.5	97	 85.644
201.5	 3	 43.024
201.5	 5	 44.127
201.5	10	 45.992
201.5	25	 49.669
201.5	50	 54.906
201.5	75	 62.060
201.5	90	 71.354
201.5	95	 79.190
201.5	97	 85.781
202.5	 3	 43.132
202.5	 5	 44.234
202.5	10	 46.096
202.5	25	 49.769
202.5	50	 55.000
202.5	75	 62.150
202.5	90	 71.449
202.5	95	 79.300
202.5	97	 85.914
203.5	 3	 43.237
203.5	 5	 44.337
203.5	10	 46.197
203.5	25	 49.865
203.5	50	 55.092
203.5	75	 62.239
203.5	90	 71.543
203.5	95	 79.408
203.5	97	 86.042
204.5	 3	 43.336
204.5	 5	 44.436
204.5	10	 46.294
204.5	25	 49.959
204.5	50	 55.182
204.5	75	 62.328
204.5	90	 71.637
204.5	95	 79.515
204.5	97	 86.167
205.5	 3	 43.432
205.5	 5	 44.530
205.5	10	 46.388
205.5	25	 50.051
205.5	50	 55.271
205.5	75	 62.416
205.5	90	 71.731
205.5	95	 79.620
205.5	97	 86.288
206.5	 3	 43.524
206.5	 5	 44.622
206.5	10	 46.478
206.5	25	 50.140
206.5	50	 55.360
206.5	75	 62.505
206.5	90	 71.825
206.5	95	 79.724
206.5	97	 86.406
207.5	 3	 43.611
207.5	 5	 44.709
207.5	10	 46.565
207.5	25	 50.227
207.5	50	 55.447
207.5	75	 62.593
207.5	90	 71.919
207.5	95	 79.828
207.5	97	 86.520
208.5	 3	 43.695
208.5	 5	 44.793
208.5	10	 46.650
208.5	25	 50.313
208.5	50	 55.534
208.5	75	 62.683
208.5	90	 72.014
208.5	95	 79.930
208.5	97	 86.632
209.5	 3	 43.775
209.5	 5	 44.874
209.5	10	 46.732
209.5	25	 50.396
209.5	50	 55.620
209.5	75	 62.773
209.5	90	 72.110
209.5	95	 80.032
209.5	97	 86.740
210.5	 3	 43.852
210.5	 5	 44.952
210.5	10	 46.811
210.5	25	 50.478
210.5	50	 55.706
210.5	75	 62.864
210.5	90	 72.207
210.5	95	 80.134
210.5	97	 86.846
211.5	 3	 43.925
211.5	 5	 45.026
211.5	10	 46.888
211.5	25	 50.559
211.5	50	 55.792
211.5	75	 62.957
211.5	90	 72.306
211.5	95	 80.236
211.5	97	 86.950
212.5	 3	 43.995
212.5	 5	 45.098
212.5	10	 46.962
212.5	25	 50.639
212.5	50	 55.879
212.5	75	 63.051
212.5	90	 72.406
212.5	95	 80.339
212.5	97	 87.051
213.5	 3	 44.063
213.5	 5	 45.167
213.5	10	 47.035
213.5	25	 50.718
213.5	50	 55.966
213.5	75	 63.146
213.5	90	 72.508
213.5	95	 80.441
213.5	97	 87.150
214.5	 3	 44.127
214.5	 5	 45.234
214.5	10	 47.106
214.5	25	 50.796
214.5	50	 56.053
214.5	75	 63.243
214.5	90	 72.612
214.5	95	 80.544
214.5	97	 87.247
215.5	 3	 44.188
215.5	 5	 45.298
215.5	10	 47.174
215.5	25	 50.873
215.5	50	 56.141
215.5	75	 63.342
215.5	90	 72.718
215.5	95	 80.648
215.5	97	 87.342
216.5	 3	 44.247
216.5	 5	 45.360
216.5	10	 47.242
216.5	25	 50.950
216.5	50	 56.230
216.5	75	 63.443
216.5	90	 72.826
216.5	95	 80.752
216.5	97	 87.435
217.5	 3	 44.304
217.5	 5	 45.420
217.5	10	 47.307
217.5	25	 51.026
217.5	50	 56.319
217.5	75	 63.546
217.5	90	 72.935
217.5	95	 80.856
217.5	97	 87.526
218.5	 3	 44.358
218.5	 5	 45.478
218.5	10	 47.372
218.5	25	 51.102
218.5	50	 56.410
218.5	75	 63.651
218.5	90	 73.047
218.5	95	 80.962
218.5	97	 87.615
219.5	 3	 44.410
219.5	 5	 45.534
219.5	10	 47.435
219.5	25	 51.178
219.5	50	 56.501
219.5	75	 63.757
219.5	90	 73.161
219.5	95	 81.067
219.5	97	 87.703
220.5	 3	 44.460
220.5	 5	 45.589
220.5	10	 47.496
220.5	25	 51.254
220.5	50	 56.593
220.5	75	 63.866
220.5	90	 73.276
220.5	95	 81.174
220.5	97	 87.790
221.5	 3	 44.508
221.5	 5	 45.642
221.5	10	 47.557
221.5	25	 51.329
221.5	50	 56.686
221.5	75	 63.976
221.5	90	 73.393
221.5	95	 81.280
221.5	97	 87.874
222.5	 3	 44.554
222.5	 5	 45.693
222.5	10	 47.617
222.5	25	 51.404
222.5	50	 56.780
222.5	75	 64.088
222.5	90	 73.512
222.5	95	 81.387
222.5	97	 87.958
223.5	 3	 44.598
223.5	 5	 45.743
223.5	10	 47.676
223.5	25	 51.479
223.5	50	 56.875
223.5	75	 64.201
223.5	90	 73.632
223.5	95	 81.494
223.5	97	 88.039
224.5	 3	 44.641
224.5	 5	 45.791
224.5	10	 47.733
224.5	25	 51.554
224.5	50	 56.970
224.5	75	 64.316
224.5	90	 73.753
224.5	95	 81.601
224.5	97	 88.119
225.5	 3	 44.682
225.5	 5	 45.838
225.5	10	 47.790
225.5	25	 51.628
225.5	50	 57.066
225.5	75	 64.431
225.5	90	 73.874
225.5	95	 81.708
225.5	97	 88.197
226.5	 3	 44.721
226.5	 5	 45.883
226.5	10	 47.845
226.5	25	 51.702
226.5	50	 57.161
226.5	75	 64.547
226.5	90	 73.995
226.5	95	 81.813
226.5	97	 88.274
227.5	 3	 44.759
227.5	 5	 45.928
227.5	10	 47.900
227.5	25	 51.775
227.5	50	 57.257
227.5	75	 64.663
227.5	90	 74.117
227.5	95	 81.918
227.5	97	 88.348
228.5	 3	 44.795
228.5	 5	 45.970
228.5	10	 47.953
228.5	25	 51.847
228.5	50	 57.352
228.5	75	 64.778
228.5	90	 74.237
228.5	95	 82.021
228.5	97	 88.421
229.5	 3	 44.830
229.5	 5	 46.011
229.5	10	 48.004
229.5	25	 51.918
229.5	50	 57.446
229.5	75	 64.893
229.5	90	 74.357
229.5	95	 82.123
229.5	97	 88.491
230.5	 3	 44.862
230.5	 5	 46.050
230.5	10	 48.055
230.5	25	 51.988
230.5	50	 57.538
230.5	75	 65.006
230.5	90	 74.474
230.5	95	 82.222
230.5	97	 88.559
231.5	 3	 44.893
231.5	 5	 46.088
231.5	10	 48.103
231.5	25	 52.056
231.5	50	 57.629
231.5	75	 65.117
231.5	90	 74.589
231.5	95	 82.319
231.5	97	 88.625
232.5	 3	 44.922
232.5	 5	 46.123
232.5	10	 48.149
232.5	25	 52.121
232.5	50	 57.717
232.5	75	 65.225
232.5	90	 74.701
232.5	95	 82.413
232.5	97	 88.687
233.5	 3	 44.949
233.5	 5	 46.156
233.5	10	 48.192
233.5	25	 52.184
233.5	50	 57.802
233.5	75	 65.330
233.5	90	 74.809
233.5	95	 82.503
233.5	97	 88.747
234.5	 3	 44.973
234.5	 5	 46.187
234.5	10	 48.233
234.5	25	 52.243
234.5	50	 57.883
234.5	75	 65.430
234.5	90	 74.912
234.5	95	 82.589
234.5	97	 88.804
235.5	 3	 44.994
235.5	 5	 46.214
235.5	10	 48.271
235.5	25	 52.298
235.5	50	 57.960
235.5	75	 65.524
235.5	90	 75.010
235.5	95	 82.669
235.5	97	 88.857
236.5	 3	 45.013
236.5	 5	 46.239
236.5	10	 48.304
236.5	25	 52.349
236.5	50	 58.030
236.5	75	 65.612
236.5	90	 75.100
236.5	95	 82.744
236.5	97	 88.906
237.5	 3	 45.028
237.5	 5	 46.259
237.5	10	 48.334
237.5	25	 52.395
237.5	50	 58.095
237.5	75	 65.693
237.5	90	 75.184
237.5	95	 82.813
237.5	97	 88.952
238.5	 3	 45.039
238.5	 5	 46.275
238.5	10	 48.358
238.5	25	 52.434
238.5	50	 58.151
238.5	75	 65.764
238.5	90	 75.258
238.5	95	 82.875
238.5	97	 88.993
239.5	 3	 45.045
239.5	 5	 46.286
239.5	10	 48.377
239.5	25	 52.466
239.5	50	 58.199
239.5	75	 65.826
239.5	90	 75.323
239.5	95	 82.930
239.5	97	 89.029
240.0	 3	 45.047
240.0	 5	 46.290
240.0	10	 48.383
240.0	25	 52.479
240.0	50	 58.219
240.0	75	 65.852
240.0	90	 75.352
240.0	95	 82.954
240.0	97	 89.045
