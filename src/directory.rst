Finding who to talk to
----------------------

Etiquette
~~~~~~~~~

* Contact at most 1 person from each project, and ask them to forward your request if someone else is more appropriate.
* If you don't get a timely response, try something with a broader audience like discussion group, IRC, or report a bug/issue.
* IRC etiquette: Ask your question directly. Stay connected and wait. https://workaround.org/getting-help-on-irc/

Chromium
~~~~~~~~

chromium owners files
https://chromium.googlesource.com/chromium/src/+/master/docs/contributing.md#Finding-a-reviewer
https://cs.chromium.org/
Pro: official way to find someone for code reviews
Con: There are often several owners

issue assignee/owner
crbug.com - advanced search:
search within: all issues
Statuses: fixed
Components: <component of interest>
search!
Owner column can give you a hint of who has fixed issues in the past
clicking on an issue can show who has reviewed those fixes
Pro: Strong signal: someone who has fixed many bugs for the feature recently is likely the right person
Con: Can be difficult to find relevant issues

source code blame
https://cs.chromium.org/
Find the implementation
View in: git blame or git revision log
Pro: shows who has touched a specific line of code
Con: high noise. change may be unrelated to the feature. committer may not be an expert of the feature.

report a new issue
As an alternative to emailing, report an issue with your query. The issue can say "Consider implementing change X" or "Please provide feedback for spec change Y".
Pro: likely reaches the right people
Pro: conversation is public
Con: not appropriate if there is no bug

Discussion group or IRC
If you can't find who to talk to, you can turn to a discussion group or join IRC.
https://www.chromium.org/contact

WebKit
~~~~~~

https://webkit.org/getting-started/

http://lists.webkit.org/mailman/listinfo/webkit-help

IRC

bugs
https://webkit.org/reporting-bugs/
search
https://bugs.webkit.org/query.cgi
Product: WebKit
Component: <component of interest>
Status: (select multiple) RESOLVED, VERIFIED, CLOSED
Resolution: FIXED
Search!
Look at assignee column.
Click through, latest comment by WebKit Commit Bot that says "Committed <some revision>", shows who reviewed the change.

https://webkit.org/team/ has a list of reviewers & committers, where you can probably work out what their email is.

source code
https://trac.webkit.org/browser/webkit/trunk
or
https://github.com/WebKit/webkit (git mirror)

Source > WebCore is likely of interest

Each file shows latest change. Navigating to a file you can choose "Blame" or "Revision Log"

Gecko
~~~~~

https://wiki.mozilla.org/Contribute

https://developer.mozilla.org/en-US/docs/Mozilla/Developer_guide/Introduction

Code review
https://developer.mozilla.org/en-US/docs/Mozilla/Developer_guide/Introduction#Step_4_Get_your_code_reviewed

* hg blame
* hg log
* bugzilla
* https://wiki.mozilla.org/Modules/Core

https://wiki.mozilla.org/Standards has Mozilla's points of contact per web standard or working group

web-platform-tests
~~~~~~~~~~~~~~~~~~

Folders have a META.yml file with `suggested_reviewers` which lists GitHub usernames of people who have signed up to review that folder.

* git blame
* git log
* issue and PR comments

IRC: http://irc.w3.org/?channels=testing (archive https://w3.logbot.info/testing )
Mailing list: https://lists.w3.org/Archives/Public/public-test-infra/

Specifications
~~~~~~~~~~~~~~

Each specification typically lists who edits the specification. In W3C specifications, this is typically listed at the top, maybe under "Specification metadata". In WHATWG specifications, it is typically listed somewhere in the Acknowledgements section (search for "This standard is written by").

Check the specification's source on GitHub:

* git blame
* git log
* issue and PR comments - implementers commenting in related spec issues may be good candidates for giving input on your spec issue!

W3C IRC https://www.w3.org/wiki/IRC (#css, #webapps ...) https://log.csswg.org/irc.w3.org/
WHATWG IRC https://whatwg.org/irc

