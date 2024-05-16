# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-05 17:37:50 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 39937
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46583' '-nowindow' '-style' 'windows' '-data' 'AAAA/HicVY5LCsJAEERfFIO4cO0ZBD1B1m6jCG5FjIoiJn6i4EaP6k3iSzBCqpienqrqZgIgehVFQYX20xISM5F/BJ9fEwU0Ub5bTWX2btzQqYfrSOjpM+JEypIdOXuVocqKo0x5qOf6V2smUy7c2JCox8xNd01vde72A/86ZaF3dkMix6bXboKeuczplEM1VSdKfAG5Wx0C' '-proj' '/data/vpulav2/Work/Jasper/qadd/qadd/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/qadd/qadd/.tmp/.initCmds.tcl' 'FPV_qadd.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/qadd.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva