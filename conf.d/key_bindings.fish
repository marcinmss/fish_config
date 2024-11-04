function my_key_bindings
    bind \cf my_fzf
    end

function my_fzf
    commandline -i $(find . -type d -print | fzf)
    end

my_key_bindings
