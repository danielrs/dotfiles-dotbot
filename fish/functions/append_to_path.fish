function append_to_path --description 'Appends the given path to the PATH if it doesn\'t exist already'
    set p $argv[1]
    if not contains $p $PATH
        set -x PATH $PATH $p
    end
end

