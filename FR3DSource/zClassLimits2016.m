% zClassLimits stores the cutoffs for the computer classification of pairs
% according to displacement, normal vector, and angle of rotation.  As such,
% it is the repository of expert knowledge of pair classifications.

% The main categories have integer values
% The subcategories have decimal parts.
% For decimal parts smaller than 0.5, the same hydrogen bonds will be checked
% as for the main category.
% For decimal parts 0.5 and larger, no hydrogen bonds will be checked

function [ClassLimits, CurrentVersion] = zClassLimits;

CurrentVersion = 7.3;                       % version number of class limits

% 7.3 2011-03-11 Added base-ribose interactions to zInteractionRange
% 7.4 2012-11-21 Added AA 1.1 (it seems it used to be there, was removed?)

ClassLimits = zeros(50,12,16);

% For each paircode there is a matrix B which tells the upper and lower
% limits of various variables.
% The first column of B is the category, as in zListCategoryNames
% Some categories are further subdivided with decimal extensions.
% Columns 2 and 3 of B are upper and lower limits on displ(1).
% Columns 4 and 5 of B are upper and lower limits on displ(2).
% Columns 6 and 7 of B are upper and lower limits on displ(3).
% Columns 8 and 9 of B are upper and lower limits on normal(3).
% Columns 10 and 11 of B are limits on Ang (FlipAng or RotAng, depending on
% normal(3)).

% AA pairs (paircode 1) ------------------------------------------------------

%B =    [  1    5.0  6.5  8.0 10.0 -3.0  3.0 -1.1 -0.7   70  105];  % cWw
B =    [  1    5.2  7.2  8.3 10.4 -3.0  3.0 -1.1 -0.7   75  105];  % cWw moved up and right, ang tightened left 2015-06-13
%B =  [B; [  1.1  6.0  8.2  7.0  8.3 -3.0  3.0 -1.1 -0.7   60   95]];  % cWw CLZ 2012-11-21
B =  [B; [  1.1  6.5  8.2  6.2  8.3 -3.0  3.0 -1.1 -0.7   55   85]];  % cWw CLZ 2012-11-21; moved right and down, ang moved left 2015-06-15 CLZ
%B =    [  1    5.0  6.8  8.0 10.0 -3.0  3.0 -1.1 -0.7   70  105];  % cWw
%B = [B;[  1.1  6.0  8.0  6.5  8.0 -3.0  3.0 -1.1 -0.7   55   80]]; % cWW
%B = [B;[  2    5.1  8.0  7.7  9.8 -3.0  3.0  0.58  1.1  155  195]]; % tWW
B = [B;[  2    5.1  8.2  7.7  9.8 -3.0  3.0  0.58  1.1  155  195]]; % tWW, stretched right 2015-06-15 CLZ
%B = [B;[  3    5.2  7.2 -1.9 -0.9 -3.5  3.5  0.6  1.1   45   75]]; % cis WC-H?
%B = [B;[  4    3.2  6.6  7.6  9.1 -3.0  3.0 -1.1 -0.7  145  195]]; % tr  H-WC  Expanded 2011-07-27 CLZ
B = [B;[  4    3.1  5.8  7.6  9.1 -3.0  3.0 -1.1 -0.7  160  195]]; % tr  H-WC  Expanded 2011-07-27 CLZ; shifted left, angle tightened left 2015-06-19 CLZ
%B = [B;[  5    3.6  5.5  6.7  9.0 -3.0  3.0 -1.1 -0.6   10   60]]; % cis WC-S  Expanded 2010-11-27 CLZ
B = [B;[  5    3.6  5.7  6.3  9.0 -3.0  3.0 -1.1 -0.6    8   60]]; % cis WC-S  Expanded 2010-11-27 CLZ; expanded right and down, angle expanded left 2015-06-29 CLZ
%B = [B;[  5.1  4.6  6.6  5.6  7.3 -3.0  3.0 -1.1 -0.6   10   60]]; % cis WC-S  Added 2010-11-27 CLZ
B = [B;[  5.1  4.6  6.6  5.6  7.0 -3.0  3.0 -1.1 -0.6   10   60]]; % cis WC-S  Added 2010-11-27 CLZ; top lowered
B = [B;[  5.2  2.0  3.6  7.8  9.0 -3.0  3.0 -1.1 -0.6   40   65]]; % cis WC-S  Added 2011-07-27 CLZ
%B = [B;[  6    2.2  3.4  8.1  9.1 -3.0  3.0  0.7  1.1  260  -70]]; % tr  S-WC  Expanded 2011-07-27 CLZ
B = [B;[  6    1.9  3.4  8.1  9.1 -3.0  3.0  0.7  1.1  260  -70]]; % tr  S-WC  Expanded 2011-07-27 CLZ; expanded left 2015-06-20 CLZ
B = [B;[  8   -3.2 -0.9  6.4  8.6 -3.0  3.0  0.7  1.1  160  205]]; % tHh       Expanded 2011-07-27 CLZ
%B = [B;[  9   -5.5 -2.9  4.6  6.2 -3.0  3.0  0.7  1.1  -25   45]]; % cis H-S   Expanded 2011-07-27 CLZ
B = [B;[  9   -5.0 -2.9  4.6  6.2 -3.0  3.0  0.7  1.1  -35   45]]; % cis H-S   Expanded 2011-07-27 CLZ; tightened left, ang shifted lift 2015-06-22 CLZ
%B = [B;[ 10   -1.8  0.6  7.1  8.9 -3.0  3.0 -1.1 -0.7   65  110]]; % tr  H-S   Expanded 2011-07-27 CLZ
B = [B;[ 10   -2.0  0.6  7.3  8.9 -3.0  3.0 -1.1 -0.7   65  110]]; % tr  H-S   Expanded 2011-07-27 CLZ
B = [B;[ 11    2.5  5.5 -6.6 -5.0 -3.0  3.1 -1.1 -0.6  260  -65]]; % cSs       A bit of a mess, disjoint clusters; no good way to clean it up. 2015-06-23 CLZ
B = [B;[ 12    6.1  8.2  1.1  4.1 -3.0  3.0  0.65 1.1  195  240]]; % tSs
B = [B;[ 13    6.7  8.6  8.0  9.1 -3.0  3.0 -1.1 -0.7  120  155]]; % bifurcated Only two, needs work

s = size(B);
ClassLimits(1:s(1),1:s(2),1) = B;                      % AA is paircode 1

% AC pairs (paircode 5) ------------------------------------------------------

B =    [  1    4.35 7.0  5.5  8.5 -3.0  3.0 -1.1 -0.7   45  100];  % cis WC-WC
%B = [B;[  1.1  6.4  7.8  4.3  6.0 -3.0  3.0 -1.1 -0.7   50   80]]; % cis WC-WC adjusted 2010-07-13 renamed 2010-07-18 removed 2010-11-04 with Neocles
%B = [B;[  1.5  8.0  9.9  1.5  4.0 -3.0  3.0 -1.1 -0.7   50   78]]; % cis WC-WC  adjusted 2010-07-13 renamed 2010-07-18
B = [B;[  1.5  8.0  9.8  1.5  4.0 -3.0  3.0 -1.1 -0.7   50   78]]; % cis WC-WC  tightened right, CLZ 2015-10-11
B = [B;[  2    3.0  4.7  7.8  9.3 -3.0  3.0  0.7  1.1  180  230]]; % tr  WC-WC  Expanded, angle tightened 2011-07-27 CLZ; Expanded right 2015-08-15 CLZ
%B = [B;[ -4   -3.1 -0.2  6.9  9.2 -3.0  3.0 -1.1 -0.6  135  175]]; % tr   H-WC  Expanded 2010-07-13, Expanded a bit 2011-07-27
B = [B;[ -4   -3.1 -0.2  6.9  8.7 -3.0  3.0 -1.1 -0.6  135  175]]; % tr   H-WC  Top lowered 2015-10-12 CLZ
B = [B;[ -4.1 -4.2 -2.5  5.5  6.8 -3.0  3.0 -1.1 -0.8  150  175]]; % tr   H-WC  Shifted down and left, angle tightened right 2015-08-16 CLZ
%B = [B;[  5    3.0  6.1  6.5  9.0 -3.0  3.0 -1.1 -0.5   10   54]]; % cis WC-S
B = [B;[  5    3.0  6.1  6.5  8.7 -3.0  3.0 -1.1 -0.5   10   54]]; % cis WC-S   Top lowered 2015-10-12 CLZ
%B = [B;[  5.1  2.0  3.0  8.6  9.4 -3.0  3.0 -1.1 -0.7   50   85]]; % cis WC-S   Adjusted a lot 2011-07-28 CLZ; angle expanded left 2015-11-01 CLZ
B = [B;[  5.1  2.0  3.0  8.6  9.4 -3.0  3.0 -1.1 -0.7   45   85]]; % cis WC-S   Adjusted a lot 2011-07-28 CLZ; angle expanded left 2015-11-01 CLZ
%B = [B;[  5.2  5.5  7.2  5.6  7.2 -3.0  3.0 -1.1 -0.6  -50   50]]; % cis WC-S   Added 2011-07-28 CLZ
B = [B;[  5.2  5.5  7.2  5.6  7.2 -3.0  3.0 -1.1 -0.6    0   50]]; % cis WC-S   Added 2011-07-28 CLZ; angle tightened 2015-11-01 CLZ
%B = [B;[ -5    3.5  6.8 -6.1 -4.6 -3.3  3.3 -1.1 -0.6  -60   55]]; % cis S-WC   Expanded 2011-07-28 CLZ
B = [B;[ -5    3.5  6.3 -6.1 -4.6 -3.3  3.3 -1.1 -0.6  -60   55]]; % cis S-WC   Expanded 2011-07-28 CLZ; Tightened right 2015-11-01 CLZ
%B = [B;[  6    1.7  3.8  8.0  9.2 -3.0  3.0  0.7  1.1  250  -50]]; % tr  WC-S   Adjusted 2011-07-29 CLZ
B = [B;[  6    1.5  3.0  8.0  9.2 -3.0  3.0  0.7  1.1  250  -50]]; % tr  WC-S   Adjusted 2011-07-29 CLZ; Moved left 2015-11-01 CLZ
%B = [B;[  6.5 -2.5  1.0  7.8  9.0 -3.0  3.0  0.7  1.1  -60  -40]]; % tr  WC-S   Added 2011-07-29 CLZ; These are much closer to cHS, and so belong there
%B = [B;[ -6    5.9  7.1 -5.6 -4.4 -3.0  3.0  0.7  1.1   20   70]]; % tr  WC-S   Requiring just one h-bond would add 2 instances. 2011-07-29 CLZ
B = [B;[ -6    5.7  7.1 -5.4 -4.0 -3.0  3.0  0.7  1.1   20   70]]; % tr  S-WC   Moved up and left 2015-11-01 CLZ
%B = [B;[  8   -4.7 -2.6  6.4  7.9 -3.0  3.0  0.6  1.1  170  210]]; % tr   H-H   These make no sense. h clashes. 2011-07-29 CLZ
B = [B;[  8   -4.7 -2.6  6.6  8.2 -3.0  3.0  0.6  1.1  170  210]]; % tr   H-H   These make no sense. h clashes. 2011-07-29 CLZ. Moved up 2015-11-01 CLZ
B = [B;[  9   -4.3 -3.1  4.8  6.1 -3.0  3.0  0.6  1.1  -50   50]]; % cis H-S    Expanded 2011-07-29 CLZ
B = [B;[  9.5 -3.2 -1.4  6.3  8.2 -3.0  3.0  0.6  1.1  -80  -30]]; % cis H-S    Added 2011-07-29 CLZ
B = [B;[ -9    2.5  5.5 -6.0 -4.5 -3.0  3.0  0.8  1.1  -40   30]]; % cis S-H    Expanded 2011-07-29 CLZ
B = [B;[ 10   -2.5  1.6  7.4  9.5 -3.0  3.0 -1.1 -0.8   60  125]]; % tr   H-S   2008-05-20 CLZ.  Good 2011-07-29 CLZ
B = [B;[-10    6.9  8.4 -4.5 -1.9 -3.0  3.0 -1.1 -0.8   50  100]]; % tr   S-H   Expanded 2011-07-29 CLZ
B = [B;[ 11.0  2.3  4.7 -7.4 -5.8 -3.0  3.0 -1.1 -0.5  250  -70]]; % cSs        Good 2011-07-29 CLZ
%B = [B;[ 11.1  4.7  7.0 -7.4 -5.3 -3.0  3.0 -1.1 -0.7  235  -65]]; % cSs with water - but really this is just cSs with a G in the middle! 2010-07-13
B = [B;[-11.0  5.7  7.7 -2.6 -0.0 -3.0  3.0 -1.1 -0.65 260  -40]]; % csS        Expanded 2010-12-01 CLZ.  OK, but some are in different planes 2011-07-29 CLZ
% B = [B;[-11.1  3.9  5.8 -3.6 -2.1 -3.0  3.0 -1.1 -0.65 225  -80]]; % csS but really out of plane and not a basepair
B = [B;[-11.1  5.8  7.3 -3.3 -2.6 -3.0  3.0 -1.1 -0.65 250  -50]]; % csS - Jesse 10_11_07, modified by CLZ 10-16-07. Only 4 instances 2011-07-29 CLZ
B = [B;[ 12    6.5  8.7  1.0  5.0 -3.0  3.0  0.55 1.1  200  260]]; % tSs        Expanded slightly, jumbled, this is what near category is for 2011-07-29 CLZ
B = [B;[ 13    7.0 10.5  4.0  8.0 -3.0  3.0 -1.1 -0.7   90  150]]; % ac bif     Greatly expanded 2011-07-29 CLZ
B = [B;[-13    1.0  2.6  8.3  9.8 -3.0  3.0 -1.1 -0.7   95  130]]; % ca bif     Expanded 2011-07-29 CLZ
B = [B;[-13.1  3.0  4.7  7.9  9.3 -3.0  3.0 -1.1 -0.7   55  100]]; % ca bif     Expanded 2011-07-29 CLZ

s = size(B);
ClassLimits(1:s(1),1:s(2),5) = B;                      % AC is paircode 5

% CC pairs (paircode 6) ------------------------------------------------------

B =    [  1    6.3  7.2 -0.7  1.3 -2.9  2.9 -1.1 -0.7   30   65];  % cWw        Nearly all ncWW are cross-strand in helix. Meaningless!
B = [B;[  2    4.3  5.8  4.3  6.5 -3.0  3.0  0.7  1.1  160  190]]; % tWW - JS_7_4_08
B = [B;[  3    6.8  8.2  1.0  3.6 -3.0  3.0  0.7  1.1   60  100]]; % cis WC-H
B = [B;[  4    5.6  7.6  2.0  5.0 -3.0  3.0 -1.1 -0.7  115  165]]; % tr   H-WC
B = [B;[  5    3.6  5.8  5.2  6.8 -3.0  3.0 -1.1 -0.7  -40   35]]; % cis WC-S
%B = [B;[  5.1  2.2  4.8  7.0  8.6 -3.0  3.0 -1.1 -0.7   70   80]]; % cis WC-S? Merged with bif category 2010-07-13
B = [B;[  6    2.4  3.5  7.1  8.4 -3.0  3.0  0.5  1.1  240  -80]]; % tr   WC-S
% B = [B;[  8   -4.7 -2.6  6.4  7.5 -3.0  3.0  0.6  1.1  170  210]]; % tHh Removed 12-14-2007 JS
B = [B;[  9   -6.0 -4.0  3.0  5.4 -3.0  3.0  0.6  1.1  -30   55]]; % cis H-S OK with just one hydrogen, 2010-12-21 CLZ
B = [B;[  9.5 -4.5 -2.5  6.4  8.5 -3.0  3.0  0.6  1.1  -80    0]]; % cis H-S CLZ 2010-04-29 Tightened 2010-12-21
B = [B;[ 10   -3.5 -1.1  6.5  8.5 -3.0  3.0 -1.1 -0.7   60  115]]; % tr   H-S CLZ 2010-10-27 but hydrogen bonds will disqualify some
B = [B;[ 11    1.6  3.0 -7.8 -6.4 -3.0  3.0 -1.1 -0.7  240  -80]]; % cSs  CLZ 2008-04-22
B = [B;[ 13    7.2  9.0 -0.8  3.9 -3.0  3.0 -1.1 -0.7   50   95]]; % bif WC-WC updated 2010-07-13 to include cWSa 5.1
%B = [B;[ 13.1  6.9  7.9  4.3  5.4 -3.0  3.0 -1.1 -0.7   60   80]]; % based on a strange feature of 1QCU

s = size(B);
ClassLimits(1:s(1),1:s(2),6) = B;                      % CC is paircode 6

% GC pairs (paircode 7) ------------------------------------------------------

B =    [  1    5.6  9.0  2.8  6.9 -3.0  3.0 -1.1 -0.7   45   90];  % cis WC-WC
B = [B;[  1.1  5.4  6.3  6.6  7.6 -3.0  3.0 -1.1 -0.7   70  110]]; % cis WC-WC
B = [B;[  2    6.0  8.3  4.2  6.4 -3.0  3.0  0.6  1.1  190  220]]; % tr  WC-WC CLZ 2010-07-15
B = [B;[  3   -4.8 -2.1  4.5  8.0 -3.0  3.0  0.7  1.1  245  -50]]; % cis WC-H
B = [B;[  4   -1.9 -0.7  7.6  8.8 -3.0  3.0 -1.1 -0.7  135  175]]; % tr  H-WC
B = [B;[  5    4.2  5.2 -6.3 -5.3 -3.0  3.0 -1.1 -0.6   30   60]]; % cis WC-S
B = [B;[ -5    6.5  7.6  4.0  5.4 -3.0  3.0 -1.1 -0.7   15   40]]; % cis S-WC
B = [B;[  6    6.2  8.1 -4.4 -1.9 -3.0  3.0  0.7  1.1   70  110]]; % tr  S-WC  Expanded 2010-12-01 CLZ
B = [B;[ -6    4.7  6.2  5.9  7.3 -3.0  3.0  0.7  1.1  235  -80]]; % tr  S-WC
B = [B;[  7   -3.8 -2.6  4.7  5.9 -3.0  3.0 -1.1 -0.7  -40    0]]; % cis H-H
B = [B;[  8   -4.8 -2.8  6.1  7.7 -3.0  3.0  0.7  1.1  180  210]]; % tr  H-H  Tightened CLZ 2010-11-05
B = [B;[  8.1 -2.2  1.1  8.4 11.2 -3.0  3.3  0.7  1.1  160  210]]; % tr  H-H  Expanded CLZ 2010-07-15 A little more 2010-12-06
B = [B;[  9    3.7  5.2 -8.2 -6.6 -3.0  3.0  0.7  1.1    5   50]]; % cis H-S  CLZ 2007-12-14
B = [B;[  9.1  2.0  3.3 -6.5 -5.3 -3.0  3.0  0.7  1.1  -40   10]]; % cis H-S  No instances found
B = [B;[ 11    5.5  7.4 -3.4 -1.9 -3.0  3.0 -1.1 -0.7  250  -60]]; % cSs Shifted 2010-11-24 CLZ
B = [B;[ 11.1  5.7  6.1 -4.0 -3.2 -3.0  3.0 -1.1 -0.7  -50  -20]]; % cSsa
B = [B;[ 11.2  4.3  5.3 -4.3 -3.3 -3.0  3.0 -1.1 -0.7  -90  -50]]; % cSsb Added 2010-11-24 CLZ for an example from Neocles
B = [B;[ 11.5  3.8  5.3 -3.7 -2.7 -3.0  3.0 -1.1 -0.7  220  260]]; % cSse Added 2010-11-26 CLZ
%B = [B;[-11    2.6  3.9 -7.1 -5.6 -3.0  3.0 -1.1 -0.7  250  -70]]; % cis S-S
B = [B;[-11    1.8  3.9 -8.7 -6.3 -3.0  3.0 -1.1 -0.7  230  -70]]; % csS CLZ 2007-12-13
B = [B;[-12    7.8  9.0 -1.9 -0.5 -3.0  3.0  0.7  1.1  140  200]]; % tsS

s = size(B);
ClassLimits(1:s(1),1:s(2),7) = B;

% AG pairs (paircode 9) ------------------------------------------------------

B =    [  1    7.0  9.0  5.6  8.4 -3.5  3.5 -1.1 -0.65  65  100];  % cis WC-WC
B = [B;[  1.1  8.6  9.6  3.2  4.6 -3.0  3.0 -1.1 -0.7   50   75]]; % cis WC-WC
B = [B;[  1.2  5.8  7.0  7.6  8.6 -3.0  3.0 -1.1 -0.5   90  125]]; % cis WC-WC
B = [B;[  3    6.7  7.8  4.4  5.4 -3.0  3.0  0.7  1.1   70  100]]; % cis WC-H OK 2010-07-21
B = [B;[  3.1  4.4  5.4  7.0  8.3 -3.0  3.04  0.7  1.1   75  110]]; % cis WC-H
B = [B;[ -3   -6.0 -4.9  6.5  7.8 -3.0  3.0  0.7  1.1  250  -80]]; % cis H-WC
B = [B;[  4    4.3  5.4  7.2  8.5 -3.0  3.02 -1.1 -0.7  155  185]]; % tr  H-WC
B = [B;[  5    3.7  4.7  6.9  8.7 -3.0  3.0 -1.1 -0.5   15   65]]; % cis WC-S
B = [B;[ -5    6.6  8.6 -4.8 -2.8 -3.0  3.0 -1.1 -0.5  -90   -5]]; % cis S-WC - Jesse 10_11_07
B = [B;[  6    0.0  4.0  7.7  9.3 -3.0  3.0  0.6  1.1  260  -45]]; % tr  WC-S  Expanded 2010-11-27 CLZ
%B = [B;[  6.1  6.3  7.8  6.4  8.5 -3.0  3.0  0.7  1.1  220  265]]; % tr  WC-S CLZ removed 2010-07-15; doesn't contribute enough, confuses triples
B = [B;[  7   -4.6 -3.6  7.8  8.8 -3.0  3.0 -1.1 -0.7  180  225]]; % cis H-H
B = [B;[  8   -3.3 -1.5  8.5 10.2 -3.0  3.02  0.7  1.1  195  245]]; % tr  H-H
B = [B;[  9   -6.6 -4.9  1.5  3.6 -3.0  3.0  0.7  1.1   10   70]]; % cis H-S

B = [B;[  9.1 -5.2 -2.2  4.5 6.3  -3.0  3.0  0.7  1.1    0   70]]; % cis H-S - CLZ 2010-10-27

B = [B;[  9.2 -2.6 -0.5  7.0 8.8  -3.0  3.0  0.7  1.1  -60   40]]; % cis H-S - Jesse 4_21_08

B = [B;[ -9    3.5  7.0 -5.1 -3.1 -3.0  3.0  0.7  1.1    0   60]]; % cis S-H - Jesse 4_18_08. Only one really good case 2011-08-08 CLZ
B = [B;[ -9.1  7.7 11.2 -3.8 -0.2 -3.0  3.0  0.7  1.1   40   85]]; % cis S-H - CLZ 2010-10-27
B = [B;[ 10   -2.0  0.7  7.1  9.0 -3.0  3.0 -1.1 -0.6   55  100]]; % tr  H-S
B = [B;[ 10.1 -3.3 -2.0  7.1  9.0 -3.0  3.0 -1.1 -0.6   55  100]]; % tr  H-S
B = [B;[ 10.2  0.2  1.7  9.0  9.7 -3.0  3.0 -1.1 -0.6   55  100]]; % tr  H-S
B = [B;[ 11    2.0  7.0 -6.8 -4.8 -3.0  3.0 -1.1 -0.5  250  -55]]; % cSs  Greatly expanded 2010-11-25 CLZ
B = [B;[-11    5.2  7.5 -2.5  0.5 -3.0  3.0 -1.1 -0.6  230  -50]]; % csS
B = [B;[ 12    5.4  8.3 -0.6  3.5 -4.2  3.5  0.5  1.1  195  230]]; % tSs
B = [B;[-12    7.4  8.7 -1.3 -0.1 -3.0  3.0  0.7  1.1  170  195]]; % tr  S-S
B = [B;[ 14    3.5  6.5 10.0 11.8 -3.0  3.0 -1.1 -0.7  110  150]]; % water-inserted AG CLZ 2010-09-13
B = [B;[ 15    5.8  7.7 -5.2 -2.3 -2.5  2.0  0.3  0.9  170  200]]; % Rib? CLZ

s = size(B);
ClassLimits(1:s(1),1:s(2),9) = B;                      % AG is paircode 9

% GG pairs (paircode 11) -----------------------------------------------------

%B =    [  1    5.4  6.5  7.7  9.6 -3.6  3.6 -1.1 -0.5   70  105];  % cis WC-WC These only exist when modeled wrong!
B =    [  2    5.2  7.2  7.8  9.8 -3.0  3.0  0.7  1.1  160  210];  % tWW - Jesse 10_11_07
B = [B;[  3    7.9 10.0  1.4  4.8 -3.0  3.0  0.7  1.1   65  105]]; % cis WC-H
B = [B;[  4    4.6  7.2  5.4  7.4 -3.0  3.0 -1.1 -0.6  155  200]]; % tr  H-WC  Expanded 2010-11-26 CLZ
B = [B;[  5    5.4  8.1  5.9  7.5 -3.0  3.0 -1.1 -0.7    0   45]]; % cis WC-S CLZ 2008-07-03
B = [B;[  7   -2.1 -0.9  5.5  6.7 -3.0  3.0 -1.1 -0.7  -45    0]]; % cHh
B = [B;[  8   -0.8  0.4  7.5  8.7 -3.0  3.0  0.7  1.1  100  140]]; % tHh
B = [B;[  9   -6.3 -4.2  4.8  7.0 -3.0  3.0  0.7  1.1  -45    0]]; % cis H-S
B = [B;[  9.5 -5.5 -2.0  6.8 10.5 -3.0  3.0  0.6  1.1  -65  -20]]; % cis H-S CLZ 2010-11-23 has different hydrogen bond Tightened 2010-12-20
B = [B;[ 10   -1.6  1.3  8.8 10.4 -3.0  3.0 -1.1 -0.7   70  105]]; % tr  H-S
B = [B;[ 10.1  1.3  2.0  9.1  9.9 -3.0  3.0 -1.1 -0.7   55   75]]; % tr  H-S
B = [B;[ 11    1.0  3.4 -6.9 -4.9 -3.0  3.0 -1.1 -0.7  230  265]]; % cSs
B = [B;[ 12    6.5  8.5 -3.0 -0.2 -3.0  3.0  0.6  1.1  150  195]]; % tSs  Reduced h-bond requirement 2010-12-01 CLZ
B = [B;[ 13    6.6  8.0  7.3  8.6 -3.0  3.0 -1.1 -0.7  125  150]]; % bifurcated
B = [B;[ 15    5.8  8.0 -6.0 -3.8 -3.5  0.5  0.2  0.8  160  195]]; % tr  S-S CLZ

s = size(B);
ClassLimits(1:s(1),1:s(2),11) = B;                      % GG is paircode 11

% AU pairs (paircode 13) ------------------------------------------------------

B =    [  1    5.6  8.5  3.2  6.8 -3.0  3.0 -1.1 -0.8   50   90];  % cis WC-WC
B = [B;[  2    4.8  6.4  6.0  7.8 -3.0  3.0  0.7  1.1  180  220]]; % tr   WC-WC
B = [B;[  3    6.0  8.0  6.0  8.0 -3.0  3.0  0.7  1.1   80  120]]; % cis WC-H
B = [B;[  3.1  8.0 10.0 -0.2  1.8 -3.0  3.0  0.7  1.1   60   90]]; % cis WC-H
B = [B;[ -3   -6.0 -4.0  3.0  5.5 -3.0  3.0  0.7  1.1  -85  -45]]; % cis H-WC
B = [B;[ -3.1 -6.5 -5.2  6.5  7.5 -3.0  3.0  0.7  1.1  -55  -40]]; % cis H-WC?
B = [B;[ -4   -5.0 -1.9  5.0  7.8 -3.0  3.0 -1.1 -0.7  140  190]]; % tr   H-WC
B = [B;[  5    3.3  6.8  6.0  9.0 -3.0  3.0 -1.1 -0.6   10   80]]; % cis WC-S  Expanded 2010-11-25
B = [B;[ -5    3.8  5.2 -4.8 -3.3 -3.0  3.0 -1.1 -0.7  -55  -15]]; % cis S-WC
B = [B;[  6   -0.7  2.7  7.8  9.6 -3.0  3.0  0.6  1.1  -90  -45]]; % tr  WC-S  Exchanged with 6.1 CLZ 12-14-2007 - Jesse_4_18_08
B = [B;[  6.1  2.0  3.2  7.8  9.0 -3.0  3.0  0.7  1.1  250  -50]]; % tr  WC-S Exchanged with 6.0 CLZ 12-14-2007
B = [B;[ -6    5.8  7.0 -3.2 -1.8 -3.0  3.0  0.7  1.1   90  120]]; % tr   S-WC
B = [B;[  8   -3.2 -1.0  8.3 10.5 -3.0  3.0  0.8  1.1  180  210]]; % tHh
B = [B;[  8.1 -4.0 -3.0  5.5  6.5 -3.0  3.0  0.7  1.1  163  183]]; % tr   H-H
B = [B;[  8.2 -0.8  1.8  9.5 11.0 -3.0  3.0  0.8  1.1  180  220]]; % tr   H-H
B = [B;[  9   -3.2 -1.8  6.2  7.6 -3.0  3.0  0.6  1.1  -60  -35]]; % cis H-S
B = [B;[  9.1 -4.2 -3.5  4.5  5.8 -3.0  3.0  0.6  1.1   10   35]]; % cis H-S
B = [B;[ -9    6.6  8.0 -4.5 -3.5 -3.0  3.0  0.7  1.1   40   80]]; % cis H-S
%B = [B;[ -4.1 -2.1  0.0  7.7  9.5 -3.0  3.0 -1.1 -0.8   98  155]]; % tr   H-WC Removed 2010-11-06 CLZ too much overlap with 10
B = [B;[ 10   -2.5  1.0  7.2  9.5 -3.0  3.0 -1.1 -0.8   60  130]]; % tr   H-S 2010-11-06 CLZ
B = [B;[ 10.5 -6.5 -3.8  1.0  4.0 -3.0  3.0 -1.1 -0.7  105  165]]; % tr   H-S renamed 2010-07-18
B = [B;[-10    9.3 11.0 -0.7  1.6 -3.0  3.0 -1.1 -0.7   60  115]]; % tr   H-S
B = [B;[ 11    3.8  5.3 -6.2 -3.4 -3.0  3.0 -1.1 -0.7  260  -55]]; % cSs
B = [B;[-11    5.7  7.3 -2.5  0.5 -3.5  3.9 -1.1 -0.6  260  -50]]; % csS
B = [B;[ 12    6.5  9.2  0.5  4.5 -3.0  3.0  0.7  1.1  180  260]]; % tSs  Expanded 2010-11-24 CLZ

s = size(B);
ClassLimits(1:s(1),1:s(2),13) = B;

% CU pairs (paircode 14) -----------------------------------------------------

B =    [  1    5.6  7.1  5.5  7.2 -3.0  3.0 -1.1 -0.7   85  105];  % cis WC-WC
B = [B;[  1.1  5.0  6.5  6.8  8.5 -3.0  3.0 -1.1 -0.7   100 115]]; % cis WC-WC
B = [B;[  1.2  5.7  6.8  2.3  4.0 -3.0  3.0 -1.1 -0.7   40   85]]; % cis WC-WC
B = [B;[  2    4.6  5.8  4.4  5.6 -3.0  3.0  0.7  1.1  160  200]]; % tr  WC-WC
B = [B;[  3    5.4  8.1  2.0  4.0 -3.0  3.0  0.7  1.1   45   95]]; % cis WC-H CLZ 2007-12-13
B = [B;[  5    3.5  5.5  4.9  6.5 -3.0  3.0 -1.1 -0.7  -40   60]]; % cis WC-S  Expanded 2010-11-27 CLZ
B = [B;[ -5    4.8  6.8 -3.9 -1.9 -3.0  3.0 -1.1 -0.7  -45    0]]; % cis  S-WC
B = [B;[  6    2.5  4.5  7.3  9.3 -3.0  3.0  0.7  1.1  240  270]]; % tr   WC-S CLZ 2007-12-12
B = [B;[ -6    6.5  7.7 -1.9 -0.7 -3.0  3.0  0.7  1.1  105  145]]; % tr   S-WC
B = [B;[  8   -3.9 -1.5  7.7  9.5 -3.0  3.0  0.7  1.1  170  210]]; % tHh  Expanded 2010-12-06 CLZ
B = [B;[  9   -5.6 -3.9  4.0  6.2 -3.0  3.0  0.7  1.1  -40   40]]; % cis H-S  Tightened 2010-12-01 CLZ
B = [B;[  9.1 -4.3 -1.0  6.5  8.8 -3.0  3.0  0.7  1.1  -70  -35]]; % cis H-S  Shifted 2010-12-01 CLZ
B = [B;[ -9    3.2  5.3 -5.9 -4.5 -3.0  3.0  0.7  1.1  -40    5]]; % cis H-S
B = [B;[ 10   -3.4 -0.8  6.9  8.6 -3.0  3.0 -1.1 -0.7   65  120]]; % tr   H-S
B = [B;[ 11    2.4  4.2 -8.0 -6.0 -3.0  3.0 -1.1 -0.7  240  270]]; % cSs
B = [B;[-11    5.1  6.9 -3.7 -0.9 -3.3  3.3 -1.1 -0.7  -90  -30]]; % csS

s = size(B);
ClassLimits(1:s(1),1:s(2),14) = B;                      % CU is paircode 14

% GU pairs (paircode 15) ------------------------------------------------------

B =    [  1    5.0  7.1  6.0  7.5 -3.0  3.0 -1.1 -0.7   45   90];  % cis WC-WC, x widened, angle widened 2015-05-29 CLZ
B = [B;[  1.1  3.9  5.0  6.7  7.8 -3.0  3.0 -1.1 -0.7   50  100]]; % cis WC-WC
B = [B;[  1.2  5.5  7.5  4.7  6.0 -3.0  3.0 -1.1 -0.7   50   90]]; % cis WC-WC
%B = [B;[  2    2.8  3.9  7.1  9.1 -3.4  3.0  0.7  1.1  180  215]]; % tr  WC-WC
B = [B;[  2    2.6  5.2  7.1  9.0 -3.4  3.0  0.7  1.1  180  206]]; % tr  WC-WC, x extended right and left, y top reduced, angle tightened 2015-05-29 CLZ
%B = [B;[ -3   -6.1 -5.1  2.7  3.4 -3.0  3.0  0.7  1.1  -65  -35]]; % cis H-WC
B = [B;[ -3   -6.1 -4.6  2.7  4.4 -3.0  3.0  0.7  1.1  -65  -35]]; % cis H-WC, x extended right, y extended up 2015-05-29 CLZ
B = [B;[  4    5.1  7.9  6.5  8.2 -3.0  3.0 -1.1 -0.7  145  180]]; % tr  WC-H
%B = [B;[ -4   -5.8 -4.8  5.1  6.1 -3.0  3.0 -1.1 -0.7  180  210]]; % tr  H-WC, x shifted right, angle extended left 2015-05-29 CLZ
B = [B;[ -4   -5.6 -3.8  5.1  6.1 -3.0  3.0 -1.1 -0.7  170  210]]; % tr  H-WC, x shifted right, angle extended left 2015-05-29 CLZ
%B = [B;[  5    6.1  7.8  4.0  5.9 -3.0  3.0 -1.1 -0.7   15   40]]; % cis WC-S
B = [B;[  5    6.6  7.9  4.0  5.9 -3.0  3.0 -1.1 -0.7    5   45]]; % cis WC-S, x shifted to the right, ang extended left, right 2015-05-29 CLZ
B = [B;[  5.1  7.0  8.5  3.2  4.7 -3.0  3.0 -1.1 -0.7   40   55]]; % cis WC-S
B = [B;[  5.2  7.7  8.7  3.7  4.8 -3.0  3.0 -1.1 -0.7   65   95]]; % cis WC-S
%B = [B;[ -5    2.8  3.8 -4.8 -3.8 -3.1  3.0 -1.1 -0.7  -65  -35]]; % cis S-WC
B = [B;[ -5    2.8  3.9 -5.0 -4.0 -3.1  3.0 -1.1 -0.7  -60  -25]]; % cis S-WC, ang shifted right, y shifted down, x extended right 2015-05-29 CLZ
%B = [B;[  6    4.9  7.5  5.1  7.6 -3.0  3.0  0.7  1.1  235  -80]]; % tr  WC-S
B = [B;[  6    4.5  7.1  5.1  7.6 -3.0  3.0  0.7  1.1  235  -75]]; % tr  WC-S, x shifted left, angle widened right 2015-05-30 CLZ
%B = [B;[ -6    6.6  8.1 -3.7 -1.7 -3.0  3.0  0.7  1.1  115  155]]; % tr  S-WC
B = [B;[ -6    6.6  7.8 -3.4 -1.9 -3.0  3.0  0.7  1.1  125  155]]; % tr  S-WC, narrowed considerably to eliminate "pair" with stacked A in between 2015-06-03 CLZ
B = [B;[ -9    2.8  5.8 -6.2 -4.3 -3.0  3.0  0.7  1.1  -50    0]]; % cis H-S
B = [B;[ -9.1  8.0  9.2 -4.7 -3.7 -3.0  3.0  0.7  1.1  10    50]]; % cis H-S
B = [B;[ -9.2  5.6  6.4 -5.3 -4.3 -3.0  3.0  0.7  1.1  10    50]]; % cis H-S
B = [B;[-10    8.4 10.1 -3.7 -1.0 -3.0  3.0 -1.1 -0.7   60  100]]; % tr  S-H
%B = [B;[ 11    1.6  4.1 -8.7 -5.9 -3.0  3.0 -1.1 -0.7  230  -70]]; % cSs
B = [B;[ 11    1.6  4.1 -8.7 -7.2 -3.0  3.0 -1.1 -0.7  230  260]]; % cSs, vertical reduced, ang tightened right to eliminate stacked version of basepair 2015-06-03 CLZ
B = [B;[-11    5.7  7.5 -3.6 -1.9 -3.0  3.0 -1.1 -0.7  255  -50]]; % csS
B = [B;[-11.1  4.3  5.2 -4.0 -3.0 -3.0  3.0 -1.1 -0.7  230  260]]; % csS
%B = [B;[ 12    8.1  8.9 -1.7  0.2 -3.0  3.0  0.7  1.1  180  220]]; % tSs
B = [B;[ 12    7.9  8.8 -1.8 -0.2 -3.0  3.0  0.7  1.1  175  215]]; % tSs, shifted down and left, ang moved left 2015-06-08 CLZ
%B = [B;[ 13    7.5  9.2  5.6  7.5 -3.0  3.0 -1.1 -0.7  110  145]]; % bifurcated
B = [B;[ 13    7.7  9.5  4.7  7.3 -3.0  3.0 -1.1 -0.7  105  140]]; % bifurcated, extended down and right, ang move left 2015-06-08 CLZ

B = [B;[ 25   -5.4 -3.7  1.6  3.3 -3.0  3.0 -1.1 -0.7  125  165]]; % motif

s = size(B);
ClassLimits(1:s(1),1:s(2),15) = B;

% UU pairs (paircode 16) -----------------------------------------------------

B =    [  1    3.4  5.7  4.1  6.8 -3.0  3.0 -1.1 -0.7   35   80];  % cWw
%B = [B;[  2    3.0  4.2  6.9  8.1 -3.4  3.0  0.7  1.1  170  200]]; % tWW 2013-12-04 moved from 2.1
B = [B;[  2    3.0  4.2  6.7  8.1 -3.4  3.0  0.7  1.1  170  200]]; % tWW 2013-12-04 moved from 2.1; vertical stretched down 2015-06-10 CLZ
%B = [B;[  2.5  5.2  6.5  2.0  4.0 -3.0  3.0  0.7  1.1  160  200]]; % tWW 2008-10-23; moved from 2.1 to 2.5 2014-11-18
B = [B;[  2.5  5.2  6.4  2.0  3.9 -3.0  3.0  0.7  1.1  160  200]]; % tWW 2008-10-23; moved from 2.1 to 2.5 2014-11-18; upper right corner pulled in 2015-06-10 CLZ
%B = [B;[  3    6.6  7.6  0.8  3.2 -3.0  3.0  0.7  1.1   55  100]]; % cis WC-H - Jesse_7_4_08
B = [B;[  3    6.5  8.2  0.7  3.9 -3.0  3.0  0.7  1.1   60  105]]; % cis WC-H - Jesse_7_4_08; horizontal expanded, vertical expanded, ang shifted right 2015-06-10 CLZ
%B = [B;[  4    3.8  6.2  5.2  7.1 -3.0  3.0 -1.1 -0.7  135  180]]; % tr  WC-H  Expanded 2010-12-04 CLZ
B = [B;[  4    3.8  6.2  5.8  8.0 -3.0  3.0 -1.1 -0.7  140  175]]; % tr  WC-H  Expanded 2010-12-04 CLZ; shifted up, ang tightened 2015-06-10 CLZ
%B = [B;[  5    5.0  6.5  1.2  5.0 -3.0  3.0 -1.1 -0.7  -80   45]]; % cis WC-S - Jesse_4_18_08
B = [B;[  5    5.5  6.7  1.6  4.2 -3.0  3.0 -1.1 -0.7  -60   45]]; % cis WC-S - Jesse_4_18_08; shifted up and left, ang tightened left 2015-06-10 CLZ
%B = [B;[  6    5.6  7.0  2.8  4.2 -3.0  3.0  0.7  1.1  200  230]]; % tr  WC-S
B = [B;[  6    3.8  6.6  3.3  5.9 -3.0  3.0  0.7  1.1  200  270]]; % tr  WC-S Expanded up and left, angle expanded right 2015-06-13 CLZ
B = [B;[  9   -6.6 -4.0  3.2  6.0 -3.0  3.0  0.7  1.1  -40   60]]; % cis H-S Expanded 2010-11-27 CLZ; a diffuse group, can't help it much 2015-06-13 CLZ
B = [B;[ 11    3.0  5.5 -6.5 -4.6 -3.0  3.0 -1.1 -0.7  260  -50]]; % cSs

s = size(B);
ClassLimits(1:s(1),1:s(2),16) = B;                      % UU is paircode 16

