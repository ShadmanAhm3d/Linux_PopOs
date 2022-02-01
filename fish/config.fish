if status is-interactive
    # Commands to run in interactive sessions can go here
end

#aliases
alias nv='nvim'
alias g='g++'
alias r='./a.out'
alias cls='clear'
alias nvd='neovide --multigrid'
#pywal Config
#cat ~/.cache/wal/sequences
#Searching google from terminal function
function google
set search ""
echo "Googling: $argv"
for term in $argv
     set search "$search%20$term"
end
xdg-open "http://www.google.com/search?q=$search"
end


#let $NVIM_TUI_ENABLE_TRUE_COLOR=1

