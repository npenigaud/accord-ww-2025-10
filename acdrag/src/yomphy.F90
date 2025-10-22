MODULE YOMPHY
USE PARKIND1  ,ONLY : JPIM

IMPLICIT NONE

SAVE

! Values that NPHY can obtain:
INTEGER(KIND=JPIM), PARAMETER  ::    JPHYEC =   1  ! for ECMWF physics
INTEGER(KIND=JPIM), PARAMETER  ::    JPHYMF =   2  ! for MF physics
INTEGER(KIND=JPIM), PARAMETER  ::   JPHYARO =   3  ! budget package initial    ly introduced for AROME physics
INTEGER(KIND=JPIM), PARAMETER  ::   JPBP002 =   4  ! budget package initial    ly introduced for ALARO physics

TYPE TPHY

INTEGER(KIND=JPIM) :: NPHYREP
LOGICAL :: LGLT
LOGICAL :: LNEWD
END TYPE TPHY

TYPE(TPHY), POINTER :: YRPHY => NULL()


!     ------------------------------------------------------------------
END MODULE YOMPHY
