# 42norminette
42 norminette syntax checker for flycheck extension for emacs. 
Put the following code in your ~/.emacs, ~/.emacs.el, or ~/.emacs.d/init.el file:

	(require 'flycheck)
	(flycheck-define-checker norminette
	  "The 42 Norminette linter.
	Install URL `https://rubygems.org/gems/xxxxxxxxxx'.
	Rules `XXXX / norme.en.pdf'"
	  :command ("norminette2" source)
	  :error-patterns
	  ((error line-start "Error (line " line ", col " column "): " (message) line-end))
	  :modes c-mode
	  :next-checkers ((error . c/c++-clang)
					  (warning . c/c++-cppcheck)))
	(add-to-list 'flycheck-checkers 'norminette)

Install Hombebrew https://github.com/Homebrew/install then possibly look into rubygems.org for norminette to install norminette. Download the "normised.sh" shell script, that formats properly the norminette output for flycheck, and symlink it in some of your $PATH folders as norminette2. If your path to your norminette binary is not /home/linuxbrew/.linuxbrew/lib/ruby/gems/2.7.0/bin/norminette , change it in the "normised.sh" wrapper. 
If you want to use some flags, add them in the "normised.sh" wrapper.
