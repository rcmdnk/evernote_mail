evernote_mail
=============

Script to send files/comments to Evernote by a mail.

# Installation

On Mac, you can install scripts by [Homebrew](https://github.com/mxcl/homebrew):

    $ brew tap rcmdnk/rcmdnkpac
    $ brew install evernote_mail

If you have [brew-file](https://github.com/rcmdnk/homebrew-file), add following lines to Brewfile:

    tap 'rcmdnk/rcmdnkpac'
    brew 'evernote_mail'

then, do:

    $ brew file install

Or if you write like:

    tapall 'rcmdnk/rcmdnkpac'

and do `brew file install`, you will have all useful scripts in
[rcmdnkpac](https://github.com/rcmdnk/homebrew-rcmdnkpac).

You can also use an install script on the web like:

    $ curl -fsSL https://raw.github.com/rcmdnk/evernote_mail/install/install.sh| sh

This will install scripts to `/usr/bin`
and you may be asked root password.

If you want to install other directory, do like:

    $ curl -fsSL https://raw.github.com/rcmdnk/evernote_mail/install/install.sh|  prefix=~/usr/local/ sh

Or, simply download scripts and set where you like.

# Usage

    evernote_mail [-uh] [-f <input file>] [-a <email address>]
                    [-o <other mail address>] [-t <title>] [-T <tag>]
                    [-n <notebook>] message...
    
    Arguments:
          -u  Send an input file as attachment
              (default: file's content is sent as an inline text)
          -f  Set an input file, in which the contents is sent
              (default: )
          -a  Set an email adress (default: )
          -o  Set other email adress for check (default: )
          -t  Set a title (default: By email or inputFile if available)
          -T  Set a tag (default:  ) + email (always added)
              To put multiple tags, use like -T "#tag1 #tag2 #tag3"
          -n  Set a notebook (default:  )
          -v  Show version
          -h  Print Help (this message) and exit
    
     message  Be sent as a message
    
    Setting file:
          ~/.evernote
              ADDRESS=xxxx@m.evernote.com
              ADDRESSOTHER=xxxx@YYY.ZZZ
    
    ADRESS for evernote is mandatory.
    Please specify it in .evernote or use -a.
    
    Note: 50 mails can be sent as a standard user.
         250 mails can be sent as a premium user.

# References

* [コマンドラインからEvernoteへ送るスクリプト](http://rcmdnk.github.io/blog/2013/05/23/computer-evernote/)
