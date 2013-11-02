evernote_mail
=============

# introduction
Script to send files/comments to Evernote by a mail.

# Usage

    ./evernote_mail [-uh] [-f <input file>] [-a <email address>]
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

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/rcmdnk/evernote_mail/trend.png)](https://bitdeli.com/free "Bitdeli Badge")
