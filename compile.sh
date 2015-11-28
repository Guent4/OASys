#!/bin/bash

L_BLUE='\033[1;34m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

printf "\n${L_BLUE}Starting compilation...\n"

# types
printf "${L_BLUE}Compiling TYPES\n"
printf "${GREEN}compiling ${CYAN}coconuts${NC}\n"
cs3110 compile src/types/coconuts.ml
# util
printf "${L_BLUE}Compiling UTIL\n"
printf "${GREEN}compiling ${CYAN}fileio${NC}\n"
cs3110 compile src/util/fileio
printf "${GREEN}compiling ${CYAN}listops${NC}\n"
cs3110 compile src/util/listops
# camel
printf "${L_BLUE}Compiling CAMEL\n"
printf "${GREEN}compiling ${CYAN}atlas.ml${NC}\n"
cs3110 compile src/camel/atlas -I src/types/
printf "${GREEN}compiling ${CYAN}xiansheng.ml${NC}\n"
cs3110 compile src/camel/xiansheng -I src/types/ -I src/util/
printf "${GREEN}compiling ${CYAN}camel.ml${NC}\n"
cs3110 compile src/camel/camel -I src/types/ -I src/util/
# oasys
printf "${L_BLUE}Compiling OASYS\n"
printf "${GREEN}compiling ${CYAN}cameljson.ml${NC}\n"
cs3110 compile src/oasys/cameljson -I src/types/ -I src/util/
printf "${GREEN}compiling ${CYAN}palmtreeupdater.ml${NC}\n"
cs3110 compile src/oasys/palmtreeupdater -I src/types/ -I src/util/
printf "${GREEN}compiling ${CYAN}oasys.ml${NC}\n"
cs3110 compile src/oasys/oasys -I src/types/ -I src/util/
# camelrider
printf "${L_BLUE}Compiling CAMEL RIDER\n"
printf "${GREEN}compiling ${CYAN}camelrider.ml${NC}\n"
cs3110 compile src/camelrider/camelrider -I src/types/ -I src/util/ -I src/oasys/
# main
printf "${L_BLUE}Compiling MAIN\n"
printf "${GREEN}compiling ${CYAN}main.ml${NC}\n"
cs3110 compile src/main.ml -I src/types/ -I src/util/ -I src/oasys/ -I src/camel/
# done
printf "${L_BLUE}Done.${NC}\n"