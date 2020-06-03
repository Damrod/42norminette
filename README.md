# 42norminette
42 norminette syntax checker for flycheck extension for emacs. 
Put it in your ~/.emacs, ~/.emacs.el, or ~/.emacs.d/init.el file

	(require 'flycheck)
	(flycheck-define-checker norminette
	  "The 42 Norminette linter.
	Install URL `https://rubygems.org/gems/norminette'.
	Rules `https://github.com/MagicHatJo/-42-Norm/blob/master/norme.en.pdf'"
	  :command ("norminette2" source)
	  :error-patterns
	  ((error line-start "Error (line " line ", col " column "): " (message) line-end))
	  :modes c-mode
	  :next-checkers ((error . c/c++-clang)
					  (warning . c/c++-cppcheck)))
	(add-to-list 'flycheck-checkers 'norminette)
