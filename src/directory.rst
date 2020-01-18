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

**If you get stuck, feel free to reach out to us** and we're happy to help: web-platform-contribution-guide@bocoup.com

Etiquette
~~~~~~~~~

It is easy to end up with a big list of people to reach out to, but keep in mind that they have their own business to take care of and generally have no obligation to respond to people from the internet who ask things of them.
Here are some tips on minimizing the time you ask of others, while maximizing your chances to get a useful response.

* Keep your message short, but provide a link to the relevant :term:`GitHub` issue (or other) for more detailed information.
  Say clearly what you are expecting from them (e.g., a review from a subject matter expert, or a statement if they are willing to implement something).
* Say why you are contacting them in particular (e.g., they are listed in the OWNERS file).
* Contact at most 1 person from each project, and ask them to forward your request if someone else is more appropriate.
* If you don't get a timely response, try something with a broader audience like discussion group, IRC, or report a bug/issue.
* `IRC etiquette <https://workaround.org/getting-help-on-irc/>`__: Ask your question directly.
  Stay connected and wait.


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
Check out the repo, and use Git commands such as `git blame <https://git-scm.com/docs/git-blame>`__ and `git log <https://git-scm.com/docs/git-log>`__ to find who wrote a particular part of the specification.
It could be the specification's editor, but it could also be someone else.

Implementers commenting in related specification issues may also be good candidates for giving input on your specification issue.
Look through open and closed issues and pull requests for the specification, and see who have contributed with comments, reviews, or changes to related issues.

Specifications or working groups often also have a mailing list and IRC channel.
This could be stated in the specification itself, or in the repository's README.
Both mailing lists and IRC channels usually have public archives.
Search the archives to see if there has been prior discussion.

Here are some of the active IRC channels:

* CSS: `#css on irc.w3.org <https://www.w3.org/wiki/IRC>`__
* HTML, DOM, etc.: `#whatwg on Freenode <https://whatwg.org/irc>`__
* JavaScript: `#tc39 on Freenode <https://github.com/tc39/ecma262/blob/master/README.md#community>`__
* Node.js: `#node.js on Freenode <https://nodejs.org/en/get-involved/>`__

Browser engines
~~~~~~~~~~~~~~~

Specification changes typically involve changes to browser engine implementations.
Browser engines usually have people actively participating in standards discussions, who can either respond to your specification issue directly or help with finding who can do so.
However, that doesn't always happen, so it can be necessary to find someone to reach out to.

The approaches include finding who owns a module, who has recently fixed related bugs, who has recently changed related code in the implementation, and ways of reaching out to a slightly wider audience.

Chromium
''''''''

Chromium has OWNERS files in its source tree, which list the email addresses of people qualified to review changes in that directory.
See the Chromium documentation on `Code Reviews <https://chromium.googlesource.com/chromium/src/+/master/docs/code_reviews.md>`__ for details.

You can `navigate the chromium source code on the web <https://cs.chromium.org/>`__ or you can `check out the code <https://chromium.googlesource.com/chromium/src/+/master/docs/#checking-out-and-building>`__ if you prefer to navigate it locally.
Navigating the code base can be tricky, but there's documentation to help, or you can try to simply search.
However, it is likely that you want to look in the ``src/third_party/blink/renderer/core/`` directory in particular, which holds the implementation of most web-facing features (:term:`CSS`, DOM, HTML, SVG, etc.).

The next approach is to look at issues in the `Chromium issue tracker <https://crbug.com/>`__.
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

Finally, you can turn to the `chromium-discuss discussion group or #chromium IRC <https://www.chromium.org/contact>`__.

WebKit
''''''

The documentation on how to `get started with contributing to WebKit <https://webkit.org/getting-started/>`__ covers how to get the code,
how to `navigate the code <https://trac.webkit.org/wiki/WikiStart#GettingAroundtheWebKitSourceCode>`__,
but also how to get in contact with the team via mailing lists, IRC, and the bug tracker.

You can navigate the WebKit source code online with `WebKit Trac <http://trac.webkit.org/>`__.
Click "Browse Source" or "Search".
Most of the web-facing features are implemented in `trunk/Source/WebCore <https://trac.webkit.org/browser#webkit/trunk/Source/WebCore>`__.
When viewing a particular file, there are links for "Blame" and "Revision Log", which are useful for finding who has made changes to the implementation.

There is also an (unofficial) `mirror of WebKit in GitHub <https://github.com/webkit/webkit>`__, if you prefer to use git to navigate the source code.

Next, you can look for bugs in the WebKit bug tracker.
See the WebKit documentation on `Reporting Bugs <https://webkit.org/reporting-bugs/>`__.
You can use the `Advanced search <https://bugs.webkit.org/query.cgi?format=advanced>`__:

* Select WebKit as the Product
* Take a guess at the Component (you can select multiple)
* Status: select RESOLVED, VERIFIED and CLOSED.
* Resolution: FIXED
* Write something in the search field to narrow down the results

Click Search.
Look at the Assignee column.
If someone has fixed several related bugs, they could be a suitable person to reach out to.
You can also click on a specific bug, and find the latest comment by WebKit Commit Bot that says "Committed *revision*", which says who reviewed the change ("Reviewed by *Name*").

The `WebKit Team <https://webkit.org/team/>`__ page has a list of reviewers.
Check if the reviewer's name is listed there.
You can probably work out what their email is from this page.

Again, you can also report a new bug ("Consider implementing change X"),
or ask in one of the mailing lists, or in IRC.

Gecko
'''''

Mozilla has good documentation on how you can `contribute <https://wiki.mozilla.org/Contribute>`__, and also have a `step-by-step developer introduction <https://developer.mozilla.org/en-US/docs/Mozilla/Developer_guide/Introduction>`__.
The relevant parts for our purposes include:

* how to `ask for help <https://developer.mozilla.org/en-US/docs/Mozilla/Developer_guide/Introduction#Need_help>`__
* how to `get the code <https://developer.mozilla.org/en-US/docs/Mozilla/Developer_guide/Build_Instructions/Simple_Firefox_build>`__
* how to `search for bugs <https://developer.mozilla.org/en-US/docs/Mozilla/Developer_guide/Introduction#Step_2_Find_something_to_work_on>`__
* how to `find a reviewer <https://developer.mozilla.org/en-US/docs/Mozilla/Developer_guide/Introduction#Step_4_Get_your_code_reviewed>`__

The `source code can also be viewed online <https://dxr.mozilla.org/mozilla-central/source/>`__.
When viewing a file, there are logs for "Blame" and "Log" to find out who has made changes to that file.
The commit messages typically say who reviewed the change, with ``r=username``.

If you prefer to work locally with the code, you can use `hg blame <https://www.mercurial-scm.org/repo/hg/help/annotate>`__ or `hg log <https://www.mercurial-scm.org/repo/hg/help/log>`__.
If you prefer Git over Mercurial, there's a `read-only Git mirror on GitHub <https://github.com/mozilla/gecko-dev>`__.

Next, you can `search for bugs in Bugzilla <https://bugzilla.mozilla.org/query.cgi?format=advanced>`__ to find out who has fixed related bugs.

* Select Components as the Classification.
* Select Core as the Product.
* Take a guess at the Component.
  You can select multiple.
* Select RESOLVED, VERIFIED, and CLOSED as the Status.
* Select FIXED as the Resolution.
* If the component is too broad, type something in the Summary field to search for.

Click Search.
Look at the Assignee column.
You can also click on a bug to see who has reviewed.

The `Modules/Core wiki page <https://wiki.mozilla.org/Modules/Core>`__ documents who are the `module owners and peers <https://www.mozilla.org/en-US/about/governance/policies/module-ownership/>`__ for different parts of the code, and also links to a discussion group for each module.
Module owners have a leadership role, and make decisions about what changes can be made to that module.

The `Standards wiki page <https://wiki.mozilla.org/Standards>`__ has Mozilla's points of contact per web standard or working group.
The people listed here are likely good candidates to reach out to for a given specification, and may be able to help identify who the right person to talk to is for a given issue.

web-platform-tests
~~~~~~~~~~~~~~~~~~

Folders have a META.yml file with ``suggested_reviewers`` which lists GitHub usernames of people who want to be notified of pull requests for that folder, maybe because they want to review, but not necessarily.
In any case, they have indicated interest in the folder in question, so they may be good candidates to reach out to for the subject matter at hand.

Using Git (``git blame`` or ``git log``) to find who has contributed to a particular test is a good way to find the right person for a test.
This can also be viewed in GitHub's user interface; when viewing a file, the contributors for that file are listed, and there are also "Blame" and "History" buttons (`example <https://github.com/web-platform-tests/wpt/blob/master/url/historical.any.js>`__).

It can also be worthwhile to search for open and closed issues and pull requests, to see who are contributing with issues, code, comments, and who are reviewing.

Finally, you can reach out in IRC `#testing on irc.w3.org <http://irc.w3.org/?channels=testing>`__ (`archive <https://w3.logbot.info/testing>`__), or the `public-test-infra mailing list <https://lists.w3.org/Archives/Public/public-test-infra/>`__.

Test262
~~~~~~~

`Test262 <https://github.com/tc39/test262>`__ is the testsuite for JavaScript and related specifications.
Similarly to web-platform-tests, you can find out who has contributed to a test using ``git blame`` or ``git log``.

TC39 (the committee for JavaScript) has `process <https://tc39.es/process-document/>`__ for proposals where a proposal goes through several stages, and each proposal has a "champion".
The current proposals are `tracked in GitHub <https://github.com/tc39/proposals>`__, where the proposals' authors and champions are listed.

Finally, you can reach out on IRC, `#tc39 on Freenode <https://github.com/tc39/ecma262/blob/master/README.md#community>`__, or the `es-discuss mailing list <https://esdiscuss.org/>`__.


Web Developers & Framework Developers
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This category can be a bit tricky because it is a much larger audience.
How to proceed probably depends heavily on the topic at hand.

Maybe there are frameworks that handle the use case that you want feedback on.
If you find such frameworks, you can reach out to the maintainers and ask for their input.
Maybe they also have an idea about how to get relevant feedback from web developers that are using their framework.

Other ways to reach web developers can involve talking to people who have a community of web developers around them.
A question on Twitter from such a person can go a long way to identify pain points web developers have.

Other ways involve actively searching for blog posts where web developers document how they work around something or complain about differences between browsers.
Searching for questions in `StackOverflow <https://stackoverflow.com/>`__ can also reveal common problems.

You can also help conduct surveys such as the `MDN Web Developer & Designer Survey <https://hacks.mozilla.org/2019/07/mdn-web-developer-designer-survey/>`__ or `this survey about form controls <https://www.gwhitworth.com/blog/2019/07/form-controls-components/>`__.

You can speak at web developer conferences to raise awareness and get direct feedback about a particular issue.

Some browser vendors have Developer Relation teams, which can help act as a communication channel between browser vendors or web standards groups and web developers.

* `Mozilla Devrel <https://wiki.mozilla.org/Devrel>`__
* `Google Chrome Developer Relations on Twitter <https://twitter.com/ChromiumDev>`__
