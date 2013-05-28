# vim-php-repl

Inspired by the cool REPL thing at https://github.com/bodil/hipster

Technically, this isn't even a REPL, it's just a shortcut to send
some code to the PHP interpreter and get the result inside the
current buffer.

Hitting `<leader>p` will send all text up to the current line to the
PHP interpreter. The result will be inserted in a comment beneath
the current line.

There are still a lot of things missing before this plugin can be
considered usable, but it solved my current problems.

