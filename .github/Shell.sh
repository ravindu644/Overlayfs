TOME="$GITHUB_WORKSPACE"

mkdir -p $TOME/Up

getmodun(){ grep -m1 "$1=" $TOME/module/module.prop | cut -d= -f2; }
upenv(){ echo "$1=$2" >> $GITHUB_ENV; eval "$1=$2"; }

cd $TOME/module

zip -r $TOME/Up/$(getmodun id)_$(getmodun version).zip *
upenv VER "V_$(getmodun version)"
upenv VUR "$(getmodun version)"

echo '
{
"version": "'$(getmodun version)'",
"versionCode": "'$(getmodun versionCode)'",
"zipUrl": "https://github.com/Zenlua/Overlayfs/releases/download/'$VER'/'$(getmodun id)_$(getmodun version)'.zip",
"changelog": "https://raw.githubusercontent.com/Zenlua/Overlayfs/main/module/log.md"
}
' > $TOME/tmp2/overlay.json
