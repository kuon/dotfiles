set -xg SHELL /bin/fish
set -xg PGHOST localhost
set -xg EDITOR nvim
set -xg XDG_CONFIG_HOME "$HOME/.config"
set -xg WINEARCH win32
set -xg WINEPREFIX $HOME/.wine
set -xg FZF_DEFAULT_COMMAND 'fd --type f'
set -xg RUST_SRC_PATH (rustc --print sysroot)/lib/rustlib/src/rust/src
set -xg ANDROID_HOME /opt/android-sdk
set -xg PRINTER brother
set -xg JAVA_HOME /usr/lib/jvm/java-14-openjdk/
set -xg MOZ_DBUS_REMOTE 1

#set -xg TERM xterm-color

alias merge='/opt/sublime_merge/sublime_merge'
alias cat=bat
alias vi=nvim
alias ls='ls -F --color=auto --group-directories-first'
alias l='ls -FGhl --color=auto --group-directories-first'
alias la='ls -AFGhl --color=auto --group-directories-first'
alias clip='wl-copy -n'

function pbin
  wgetpaste -s bpaste 2>/dev/null | clip
end

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
    base16-harmonic-dark
end

function shrinkpdf
  set -l out (mktemp --suffix .pdf)
  gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$out $argv[1]
  if test $status != 0
    return
  end
  mv $argv[1] $argv[1]~big
  mv $out $argv[1]
end

complete -c shrinkpdf -f
complete -c shrinkpdf -a "(__fish_complete_suffix pdf)"
complete -c shrinkpdf -a "(__fish_complete_suffix PDF)"

function ocrall
  mkdir -p out/
  for f in *.pdf
    ocrmypdf -l fra $f out/$f
  end
end

# Direnv
eval (direnv hook fish)

# SSH Agent
#set -xg SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"
#
#set -xg SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)

set -xg PATH $HOME/.npm-global/bin $PATH
set -xg PATH $HOME/go/bin $PATH
set -xg PATH $HOME/.cargo/bin $PATH
set -xg PATH $HOME/.local/bin $PATH
set -xg PATH /opt/android-sdk/platform-tools/ /opt/android-sdk/tools/bin/ /opt/android-sdk/emulator/ $PATH
#set -xg PATH /opt/android-ndk $PATH
#set -xg ANDROID_NDK /opt/android-ndk
#set -xg ANDROID_NDK_HOME /opt/android-ndk
#set -xg PATH $HOME/elixir/bin $PATH

if status --is-interactive
  keychain --agents ssh --eval --quiet -Q id_rsa id_yoda | source
end

#set -xg DISPLAY yoda.vv.goyman.com:0.0
#set -xg VGL_CLIENT yoda.vv.goyman.com
set -xg ERL_AFLAGS "-kernel shell_history enabled"
set -xg UNCRUSTIFY_CONFIG ~/.config/uncrustify/c.conf


source ~/.asdf/asdf.fish

function pg
  ps -o uid,pid,ppid,cmd -e |grep -v ' grep ' | grep $argv[1]
end

#
#if status is-interactive
#and not set -q TMUX
#  if tmux ls -F '#S' |grep -x main
#    exec tmux attach -t main
#  else
#    exec tmux new -s main
#  end
#end
