function prepend_to_path --description 'Prepends the given path to the PATH if it doesn\'t exist already'
    set p $argv[1]
    if not contains $p $PATH
        set -x PATH $p $PATH
    end
end

