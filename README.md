# 42norminette
42 norminette syntax checker for flycheck extension for emacs. 
Put the following code in your ~/.emacs, ~/.emacs.el, or ~/.emacs.d/init.el file

	(require 'flycheck)
	(flycheck-define-checker norminette
	  "The 42 Norminette linter.
	Install URL `https://rubygems.org/gems/norminette'.
	Rules `https://github.com/Damrod/42norminette/blob/master/norme.en.pdf'"
	  :command ("norminette2" source)
	  :error-patterns
	  ((error line-start "Error (line " line ", col " column "): " (message) line-end))
	  :modes c-mode
	  :next-checkers ((error . c/c++-clang)
					  (warning . c/c++-cppcheck)))
	(add-to-list 'flycheck-checkers 'norminette)

Download the shell script, that formats properly the norminette output for flycheck, and symlink it in some of your $PATH folders as norminette2.
