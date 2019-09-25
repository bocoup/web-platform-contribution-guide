Finding who to talk to
----------------------

Successful specification changes aren't made in a vacuum.
It may seem reasonable to think that a working group responsible for a standard decide how things should work, and then implementers are required to comply, but this isn't how things happen in practice.
Instead it is an iterative process where implementations inform what is specified, as much as the influence in the other direction.
Therefore it is important to talk to the people who are likely to implement your proposed change.
It is also important to talk to other parties that are affected: web developers, framework developers, and people who maintain the relevant specification and related tests.

Finding who to talk to requires a bit of investigation.
While it seems simpler to have a list of people for each possible topic, that has several problems: such a list would likely both be huge but also incomplete, and it would become out of date quickly as new topics appear, people change projects, teams, or employers, new people become experts on something, and so on.
Therefore, we suggest an approach for how to find who are currently involved in a particular topic.

Etiquette
~~~~~~~~~

It is easy to end up with a big list of people to reach out to, but keep in mind that they have their own business to take care of and generally have no obligation to respond to people from the internet who ask things of them.
Here are some tips on minimizing the time you ask of others, while maximizing your chances to get a useful response.

* Keep your message short, but provide a link to the relevant GitHub issue (or other) for more detailed information.
  Say clearly what you are expecting from them (e.g., a review from a subject matter expert, or a statement if they are willing to implement something).
* Say why you are contacting them in particular (e.g., they are listed in the OWNERS file).
* Contact at most 1 person from each project, and ask them to forward your request if someone else is more appropriate.
* If you don't get a timely response, try something with a broader audience like discussion group, IRC, or report a bug/issue.
* IRC etiquette: Ask your question directly.
  Stay connected and wait. [#irc_etiquette]_


Specifications
~~~~~~~~~~~~~~

Reporting a new issue on the relevant specification's repository is a good way to reach the correct people, and also a good place to discuss the topic at hand (e.g., instead of private email threads).
So if there isn't already an issue filed for the topic you want to discuss, start with filing a new issue.
When reaching out to others for feedback, you can link to this issue and ask them to comment there.

The specification itself is also a good source for finding relevant people to talk to.
The specification editors will usually have relevant expertise.
Each specification typically lists who edits the specification.
In W3C specifications, this is typically listed at the top, maybe under "Specification metadata".
In WHATWG specifications, it is typically listed somewhere in the Acknowledgements section (search for "This standard is written by").

Many specifications are maintained in GitHub, and they usually have a link to the repository from the specification itself.
Check out the repo, and use Git commands such as ``git blame`` [#git_blame_docs]_ and ``git log`` [#git_log_docs]_ to find who wrote a particular part of the specification.
It could be the specification's editor, but it could also be someone else.

Implementers commenting in related specification issues may also be good candidates for giving input on your specification issue.
Look through open and closed issues and pull requests for the specification, and see who have contributed with comments, reviews, or changes to related issues.

Specifications or working groups often also have a mailing list and IRC channel.
This could be stated in the specification itself, or in the repository's README.
Both mailing lists and IRC channels usually have public archives.
Search the archives to see if there has been prior discussion.

Here are some of the active IRC channels:

* CSS: #css on irc.w3.org [#w3c_irc]_
* HTML, DOM, etc.: #whatwg on Freenode [#whatwg_irc]_
* JavaScript: #tc39 on Freenode [#tc39_irc]_
* Node.js: #node.js on Freenode [#nodejs_irc]_

Browser engines
~~~~~~~~~~~~~~~

Specification changes typically involve changes to browser engine implementations.
Browser engines usually have people actively participating in standards discussions, who can either respond to your specification issue directly or help with finding who can do so.
However, that doesn't always happen, so it can be necessary to find someone to reach out to.

The approaches include finding who owns a module, who has recently fixed related bugs, who has recently changed related code in the implementation, and ways of reaching out to a slightly wider audience.

Chromium
''''''''

Chromium has OWNERS files in its source tree, which list the email addresses of people qualified to review changes in that directory.
See the Chromium documentation on `Code Reviews <https://chromium.googlesource.com/chromium/src/+/master/docs/code_reviews.md>`_ for details.

You can navigate the chromium source code on the web at https://cs.chromium.org/ or you can check out the code [#build_chromium]_ if you prefer to navigate it locally.
Navigating the code base can be tricky, but there's documentation to help, or you can try to simply search.
However, it is likely that you want to look in the ``src/third_party/blink/renderer/core/`` directory in particular, which holds the implementation of most web-facing features (CSS, DOM, HTML, SVG, etc.).

The next approach is to look at issues in the Chromium issue tracker. [#crbug]_
Click the drop-down arrow in the search field to find Advanced search.

* Change "Search within" to "All issues".
* Leave the "with all of the words" and "without the words" empty.
  You can go back and use these fields to narrow down the results later.
* In "Statuses", type "Fixed".
* In "Components", find the relevant component.
  Some components are very broad, e.g., Blink>CSS, and some are very specific, e.g., Blink>Layout>Ruby.

Click Search.
Look at the Owners column, this is probably the person who fixed the issue.
If the results have too few or too many issues, go back and tweak the search by changing the "Components" and "with all of the words" fields.

If you find a list of relevant issues, and one person has fixed several of them, that is an indication that they have relevant expertise.
If you don't get a good list of relevant issues after a few searches, it's possible that there aren't enough relevant issues related to the thing you're looking for.

Instead of hunting for issues, you can check who has changed the code of the implementation.
Find the code that implements the feature you want feedback on, and use ``git blame`` or ``git log``.
This can also be done in https://cs.chromium.org/ -- after finding the right file, click "View in", then "Git blame" or "Git Revision Log".
This can identify who most recently changed a particular line of code, or who wrote it originally.
However, some changes to the code are entirely unrelated to the feature at hand, e.g., it can be part of a bigger refactor or reformatting of the code.
Read the commit message to make sure the change is relevant.

As an alternative to emailing a single person, you can also report a new issue in the Chromium issue tracker.
Set the "Component" to what you think is the right one.
This is likely to reach the right people, and also provides for a public discussion.
The issue summary can be along the lines of "Consider implementing change X", and link to the spec change.
This invites them to review the spec change and also make a statement about whether they want to implement the change.

Finally, you can turn to the ``chromium-discuss`` discussion group or ``#chromium`` IRC. [#chromium_contact]_

WebKit
''''''

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

Each file shows latest change.
Navigating to a file you can choose "Blame" or "Revision Log"

Gecko
'''''

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

Test262
~~~~~~~

TODO


.. [#irc_etiquette]
   https://workaround.org/getting-help-on-irc/

.. [#git_blame_docs]
   https://git-scm.com/docs/git-blame

.. [#git_log_docs]
   https://git-scm.com/docs/git-log

.. [#build_chromium]
   https://chromium.googlesource.com/chromium/src/+/master/docs/#checking-out-and-building

.. [#crbug]
   https://crbug.com/

.. [#chromium_contact]
   https://www.chromium.org/contact

.. [#tc39_irc]
   https://github.com/tc39/ecma262/blob/master/README.md#community

.. [#whatwg_irc]
   https://whatwg.org/irc

.. [#w3c_irc]
   https://www.w3.org/wiki/IRC

.. [#nodejs_irc]
   https://nodejs.org/en/get-involved/
