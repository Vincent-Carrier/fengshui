function sway-pwd
    set pid (sway-focused pid)
    and set procs (ps -o pid:1= --ppid $pid)
    and readlink -e /proc/$procs[1]/cwd/
end
