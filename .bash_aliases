alias apti="sudo apt-get install"

alias candump="candump -tA"

alias fixmylife="/home/molviken/bin/set_up_workspaces.sh"

alias cleanbuild="cd .. && rm -rf build && mkdir build && cd build"
alias cb="cleanbuild"

alias soba="source ~/.bashrc"
alias oba="gedit ~/.bashrc"
alias ola="gedit ~/.bash_aliases"
alias catalias="cat ~/.bash_aliases"


#### BITBAKE/YOCTO aliases ####
alias bbc="bitbake -f -c cleanall"


#### PICOCOM aliases ####
alias picoccu="picocom -b 115200 /dev/ttyUSB0 -d 8 -p 1"
alias piconrf="picocom -b 115200 /dev/ttyACM0 -d 8 -p 1"
alias piconrf1="picocom -b 115200 /dev/ttyACM1 -d 8 -p 1"


#### SSH aliases ####
alias sshconf="gedit ~/.ssh/config"
alias cleanips="~/scripts/clean_known_hosts.sh"

#### GIT aliases ####
alias gitamend="git add -A; git commit --amend --no-edit"
alias gs="git status"
alias gc="git commit"
alias gps="git push"
alias gck="git checkout"
alias gckd="git checkout dev"
alias gsu="git submodule update"
alias gsi="git submodule init"
alias gl="git log"
alias gd="git diff"
alias gds="git diff --staged"
alias gbdel="git branch -d"
alias gbDEL="git branch -D"
alias gba="git branch -a"
alias gbl="git branch -l"
alias gbr="git branch -r"
alias gfp="git fetch --prune"
alias gp="git pull"
alias dellocal="git fetch -p && for branch in $(git for-each-ref --format '%(refname) %(upstream:track)' refs/heads | awk '$2 == "[gone]" {sub("refs/heads/", "", $1); print $1}'); do git branch -D $branch; done"


#### Qtile aliases ####
alias qlog="cat ~/.local/share/qtile/qtile.log"


#### Wheeel.me ####
alias cdhcmc="cd ~/Documents/wheelme/repos/hid_safety"
alias cdsmcu="cd ~/Documents/wheelme/repos/safety-mcu"
alias cdgf="cd ~/Documents/wheelme/repos/genius_flexi"
alias cdmono="cd ~/Documents/wheelme/repos/monorepo"
alias cdwcan="cd ~/Documents/wheelme/repos/wcanlib"

alias buildsmcu="cd ~/Documents/wheelme/repos && STM32CubeMX_PATH=~/STM32CubeMX/ ./safety-mcu/scripts/build.sh --relocate --gcc --reveal && cd -"
alias cpsmcu="cp ~/Documents/wheelme/build/binary/hal-smcu-relocated/smcu.bin ~/Documents/wheelme/repos/genius_flexi/smcu_firmware/application.bin"
alias tms="cd /home/molvik/Documents/wheelme/repos/genius_flexi/subproject/tms"
alias buildtms="cd /home/molvik/Documents/wheelme/repos/genius_flexi/subproject/tms && C2000_TOOLCHAIN_ROOT=~/system/tms_reqs/CCS11/ccs/tools/compiler/ti-cgt-c2000_21.6.0.LTS/ ./build.sh 0 2 B && cd -"
alias cleantms="rm -rf /home/molvik/Documents/wheelme/repos/genius_flexi/subproject/tms/build && rm /home/molvik/Documents/wheelme/repos/genius_flexi/subproject/tms/GeniusPosFW54M.out"
alias flashtms="cansend can0 09000280#00"
alias buildgenius="cd /home/molvik/Documents/wheelme/repos/genius_flexi/ && ./build-all.py && cd -"
alias flashgenius="~/system/can-flash-x86_64 can0 ~/Documents/wheelme/repos/genius_flexi/genius-flexi-m2revB.bin"
alias buildsmcu="cd /home/molvik/Documents/wheelme/repos/ && STM32CubeMX_PATH=~/STM32CubeMX/ safety-mcu/scripts/build.sh --gcc --relocate && cd -"
alias wcan="cd /home/molvik/Documents/wheelme/repos/wcanlib"
alias flashtmsdbg="cd /home/molvik/Documents/wheelme/repos/genius_flexi/subproject/tms && dslite.sh --config=/home/molvik/system/tms_reqs/motorware/sw/ide/ccs/ccs5/targetConfigs/TMS320F28054M_xds110.ccxml build_app/GeniusPosFW54M_m2revB.out && cd -"

alias can0up="sudo ip link set can0 up type can bitrate 1000000"
alias can0down="sudo ip link set can0 down"

alias vcan0setup="sudo modprobe vcan && sudo ip link add dev vcan0 type vcan"
alias vcan0up="sudo ip link set vcan0 mtu 16 && sudo ip link set up vcan0"
alias vcan0down="sudo ip link set vcan0 down"

alias canflash="~/system/can-flash-x86_64"

alias catwcan="cat ~/Documents/wheelme/repos/wcanlib/autogen/c/wcan_defs.h"
alias catkcd="cat ~/Documents/wheelme/repos/wcanlib/kcd/wheel_me.kcd"

alias wcandump="/home/molvik/Documents/wheelme/repos/wcanlib/tools/kcd_dump/kcd_dump.sh -f ~/Documents/wheelme/repos/wcanlib/kcd/wheel_me.kcd"
alias wcandump45="/home/molvik/Documents/wheelme/repos/wcanlib/tools/kcd_dump/kcd_dump.sh -f ~/system/kcd/v45/wheel_me.kcd"
alias wcandump48="/home/molvik/Documents/wheelme/repos/wcanlib/tools/kcd_dump/kcd_dump.sh -f ~/system/kcd/v48/wheel_me.kcd"
alias updatewcandump="scp ~/Documents/wheelme/repos/wcanlib/kcd/wheel_me.kcd robot:/var/lib/wheelme/cantools/kcd/"

alias tmsdiff="/home/molvik/Documents/scripts/make_tms_diff.sh"
alias copykey="/home/molvik/Documents/scripts/key.sh"

alias robotpw="echo bEbSrGEbdDFs"
alias flfunpw="echo IR3OicDTRkxC"
alias freddypw="echo 'genius-0D36132007503133' && echo q1wAUURCMYIp"
alias brianpw="echo 'genius-0336122007503133.local' && echo CrLSaVkENt6s"
alias rogerpw="echo genius-4D36042006503133.local && echo 'insert pw here'"
alias deploymentpw="echo genius-2B332C201350534D && echo ysnmcVerRFPJ"
alias nemkopw="echo genius-6F31082001503147 && echo 2TVVehoLK1JT"

alias unzipgg="/home/molvik/Documents/scripts/unzip_greengrass_logs.sh"

function buildgf {
	GF_MAJOR=$1 GF_MINOR=$2 GF_PATCH=$3 GF_SDLC=$4 C2000_TOOLCHAIN_ROOT=~/system/tms_reqs/CCS11/ccs/tools/compiler/ti-cgt-c2000_21.6.0.LTS/ ../../repos/genius_flexi/build.sh $5
}

function flash_embedded {
	file=$1
	scp ~/system/can-flash-aarch64 ${file} robot:/tmp/
	ssh robot "cd /tmp/ && sudo chmod +x can-flash-aarch64 && ./can-flash-aarch64 -f ${file}"
}

function stflash() {
	LD_PRELOAD=/home/molvik/system/stlink/lib/libstlink.so /home/molvik/system/stlink/bin/st-flash write $1 0x08000000
	LD_PRELOAD=/home/molvik/system/stlink/lib/libstlink.so /home/molvik/system/stlink/bin/st-flash reset
}
function sterase() {
	LD_PRELOAD=/home/molvik/system/stlink/lib/libstlink.so /home/molvik/system/stlink/bin/st-flash erase
}
function streset() {
	LD_PRELOAD=/home/molvik/system/stlink/lib/libstlink.so /home/molvik/system/stlink/bin/st-flash reset
}

function request_smcu_fw() {
	sleep 2
	cansend can0 09000A00#00
}
function cangetfw() {
	rcpu_flag=false
	tms_flag=false
	smcu_flag=false
	hcmc_flag=false
	all_flag=false
	grep_str=""
	while [[ $# -gt 0 ]]; do
		case $1 in
		"rcpu")
			grep_str+="-g 1A00000 "
			shift
			;;
		"tms")
			grep_str+="-g 1A00004 "
			shift
			;;
		"smcu")
			smcu_flag=true
			grep_str+="-g 0A000A4 "
			shift
			;;
		"hcmc")
			grep_str+="-g 16000C8 "
			shift
			;;
		*)
			echo "$1 not supported!"
			shift
			;;
		esac
	done

	if [ "$grep_str" == "" ]; then
		echo "Remember to cansend SMCU request: cansend can0 09000A00#00"
		echo "Listening for 1A00000X | 1A00004X | 0A000A4X | 16000C8X messages:"

		# Request smcu fw in background
		request_smcu_fw &

		/home/molvik/Documents/wheelme/repos/wcanlib/tools/kcd_dump/kcd_dump.sh $grep_str
	else
		if $smcu_flag; then
			request_smcu_fw &
			echo "Remember to cansend SMCU request: cansend can0 09000A00#00"
		fi
		echo "Listening for following messages: $grep_str"



		/home/molvik/Documents/wheelme/repos/wcanlib/tools/kcd_dump/kcd_dump.sh $grep_str
	fi
}

function cansmcustate() {
	cat /home/molvik/Documents/wheelme/repos/safety-mcu/application_layer/modules/safety_error_counter/triggers/safety_error_counter/triggers.h
	echo ""
	echo "Listening for SMCU state messages: 0A80074X"
	/home/molvik/Documents/wheelme/repos/wcanlib/tools/kcd_dump/kcd_dump.sh -g A80074
}

function asciihex() {
	char=$1
	printf "0x%x\n" "'$char'"
}
function hexascii() {
	hex=$1
	echo -e "\x$hex"
}
function dechex() {
	dec=$1
	printf "0x%x\n" $dec
}
