=== ucs.sty ===

This package contains support for using UTF-8 as input encoding in LaTeX
documents.

See INSTALL for installation instructions.

The simplest use of this package is to add

    \usepackage{ucs}
    \usepackage[utf8x]{inputenc}

to your header. You may even omit the first line in many cases. Often
however you need to load additional packages etc., see languages.ps.gz
for language-specific examples.

The tables with LaTeX macros for the glyphs does not contain many
entries yet. If your particular script is not supported, and you add the
macros to the config files (see INSTALL and perldoc makeunidef.pl),
please mail me those config files, and together with informations, if
special packages or LaTeX versions are needed for these macros. Please
do only supply macros, which generate aesthetic glyphs, no hacks.

Information about this package, including a link to its source code
repository, can be found at

    <https://github.com/LaTeX-Package-Repositories/ucs>more 

=========

(C) 2000       by Dominique Unruh  <latex.ucs.0vm69c@x.unruh.de>
(C) 2011--2013 by Wolfgang Jeltsch <wolfgang@cs.ioc.ee>
(C) 2022--2024    David Carlisle david.carlisle@latex-project.org

See the LICENSE file for licensing informations.
