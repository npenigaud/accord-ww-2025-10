V34 :0x24 stack_mod
13 stack_mod.F90 S624 0
10/18/2025  12:31:55
use fxtran_acdc_stack_mod private
enduse
S 624 24 0 0 0 9 1 0 5012 5 0 A 0 0 0 0 B 0 1 0 0 0 0 0 0 0 0 0 0 15 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 stack_mod
S 626 23 0 0 0 9 677 624 5044 0 0 A 0 0 0 0 B 400000 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 stack
S 628 23 0 0 0 9 683 624 5068 0 0 A 0 0 0 0 B 400000 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ystack
S 630 23 0 0 0 9 700 624 5094 0 0 A 0 0 0 0 B 400000 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 stack_init
S 632 23 0 0 0 9 718 624 5128 0 0 A 0 0 0 0 B 400000 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 stack_alloc
S 634 26 0 0 0 0 1 624 5164 4 0 A 0 0 0 0 B 200000 9 0 0 0 0 1 0 0 0 0 0 1 0 0 0 7 1 0 0 0 0 0 624 0 0 0 0 +
O 634 1 704
S 635 26 0 0 0 0 1 624 5166 4 0 A 0 0 0 0 B 200000 9 0 0 0 0 2 0 0 0 0 0 1 0 0 0 5 1 0 0 0 0 0 624 0 0 0 0 -
O 635 1 709
R 677 25 26 fxtran_acdc_stack_mod fxtran_acdc_stack
R 683 6 32 fxtran_acdc_stack_mod yfxtran_acdc_stack
R 700 14 49 fxtran_acdc_stack_mod fxtran_acdc_stack_init
R 704 14 53 fxtran_acdc_stack_mod stack_plus
R 709 14 58 fxtran_acdc_stack_mod stack_minus
R 718 14 67 fxtran_acdc_stack_mod fxtran_acdc_stack_alloc
Z
Z
