Step by step guide to fix a W3C or WHATWG bug
---------------------------------------------

Select a bug
~~~~~~~~~~~~

The first step in working on a change to the web platform is to identify a bug you want to work on.
There are many different kinds of outcomes you can expect to have when contributing to the web platform and the type of bug you select will influence this.

Depending on the bug you select, you might end up suggesting a change to a specification, submitting a test to web-platform-tests, and reporting a bug on two different browsers.
Or, you might find that the bug is in the browsers, and all that is needed is a report to the browsers and a test to guarantee the right behavior.
There might be a bug only in the specification, and you might only need to submit a spec change.
Or perhaps the spec is correct, and matches the behavior of all the browsers, but there is a missing test, in which case you’ll be tasked with writing the test.
All versions of this, and the many other possible permutations are all valid forms of contribution.

When selecting a bug, it’s always a good idea to ask a specification editor.
If you have an idea of which technology area that you’d like to work on, you can open the specification for that technology, and contact one of the editors listed in the specification.

Types of Bugs
^^^^^^^^^^^^^

It is also a good idea to familiarize yourself with the types of bugs we deal with when contributing to the web.
Here is a list of the kinds of bugs you might run into, and the impact they’ll have on what kind of work you’ll be doing

Clarification bugs
''''''''''''''''''

These are bugs where the main work is clarifying what the specification says.
Often times browsers will agree on a behavior, and the relevant specification will be inaccurate, or underspecified for the correct behavior.
If you want to dive into the spec and spec tooling without digging into browsers, this is the type of bug for you.
The whatwg/html and and w3c/csswg-drafts repositories maintain lists of bugs in his category:

- `clarification <https://github.com/whatwg/html/labels/clarification>`__
- `Needs Example or Figure <https://github.com/w3c/csswg-drafts/labels/Needs%20Example%20or%20Figure>`__

Interoperability bugs
'''''''''''''''''''''

Interop bugs deal with situations in which browsers behave differently from each other, and the specification either agrees with one or two, or requires a behavior that is not implemented anywhere, or is not clear about the correct behavior.
If you want to do research into how most websites behave, and determine what is web compatible, this is the type of bug for you.
The whatwg/html and and w3c/csswg-drafts repositories maintain lists of bugs in his category:

- `interop <https://github.com/whatwg/html/labels/interop>`__
- `needs compat analysis <https://github.com/whatwg/html/labels/needs%20compat%20analysis>`__
- `Needs Data <https://github.com/w3c/csswg-drafts/labels/Needs%20Data>`__

Normative changes, additions and removals
'''''''''''''''''''''''''''''''''''''''''

Some issues are about changing how an existing feature works, or adding a new feature or removing one that is already specified.
The WHATWG has a defined `process for changes, additions and removals <https://whatwg.org/working-mode#changes>`__.
In the W3C it depends on the working group, but usually similar principles will apply there as well.
This kind of issue might require both research for web compatibility impact as well as building consensus.

Additional Resources
^^^^^^^^^^^^^^^^^^^^

There are a number of resources that recommend good first issues:

- The `whatwg/html repository maintains a list of "good first issues" <https://github.com/whatwg/html/labels/good%20first%20issue>`__ which the maintainers think would be a good place for a first time contributor to html to get started.
- The `CSS WG maintains a list of "help wanted" issues <https://github.com/w3c/csswg-drafts/labels/Help%20Wanted>`__.
- The `web-platform-tests project maintains a list of "good first issues" <https://github.com/web-platform-tests/wpt/labels/good%20first%20issue>`__.

Verify the bug
~~~~~~~~~~~~~~

Create a minimized test case for the bug.
"Minimized" means that anything that can be removed *and still reproduce the bug*, should be removed.
See `Reducing testcases <https://developer.mozilla.org/en-US/docs/Mozilla/QA/Reducing_testcases>`__ on MDN for a guide on how to do this when starting with a full web page.
The test case at this point doens't need to be a proper web-platform-tests test;
we'll get to that `later on <#write-a-web-platform-tests-test>`__.
Then load this test case in different browsers to see what the result is.

If you get different results in different browsers, then that indicates that there is an interop bug.
If the test matches what the spec requires, but all browsers fail the test, then possibly the spec should be changed to match implemented reality.
If all browsers pass the test, then it indicates that there's no bug!
It can still be worthwhile to submit such tests, to ensure it doesn't regress, and to demonstrate that the specification is interoperably implemented.

Make sure to test in the "latest" versions of browsers.
The latest *stable* version is old in this context; you need something that includes literally yesterday's bug fixes.
Maybe the bug has been fixed in the past few days or weeks.

* `Firefox Nightly <https://www.mozilla.org/en-US/firefox/nightly/all/>`__
* `Safari Technology Preview or nightly builds <https://webkit.org/downloads/>`__
* `Chrome Canary <https://www.google.com/intl/en/chrome/canary/>`__

Communicate about your work
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Comment in the specification issue, saying that you wish to work on it.
You can link to your test case and other findings so far.
This can avoid duplicating work, but you may also get useful feedback about things to consider.

Figure out the "right" behavior
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If two browser engines have one behavior, and one browser engine has a different behavior, we generally give preference to the majority behavior, since that typically is the least-resistance path to interoperability.
In some cases, however, there exist reasons to go with the minority behavior, or to come up with a completely novel approach.

For example, if all browsers do something that is non-sensical and confusing, then that is an argument to specify something else.
However, web compatibility often constrains what changes browsers are able to make.
If web content stops working when a browser implements a change, then it needs to be a very compelling reason to go through with that change (e.g., a security fix), otherwise browsers simply will not ship that change, lest they lose users to competing browsers that are compatible with that web content.
Therefore, it is useful to research web content, to investigate if there are web compatibility constraints.
This can be done with `HTTP Archive <https://httparchive.org>`__, a dataset of several million web pages, which can be queried `using the BigQuery service <https://httparchive.org/faq#how-do-i-use-bigquery-to-write-custom-queries-over-the-data>`__.
See `HTTP Archive example <https://github.com/whatwg/html/issues/2379#issuecomment-281921181>`__.
Another way is with `Use Counters <https://chromestatus.com/metrics/feature/popularity>`__ -- for Chromium, these count the number of page views that hit a particular code path in the implementation.
There are many use counters already, but new ones can be added as well.
Note that a new use counter needs to reach stable to get meaningful data, which can take `2-3 months <https://www.chromium.org/blink/when-will-a-fix-ship-in-chrome-stable-or-canary>`__.
See `use counter example <https://github.com/whatwg/html/issues/1081#issuecomment-215864374>`__.

When all browsers do very different things, that actually makes it less likely that web content depends on any particular behavior, which means that the most sensical behavior can probably be adopted.
Web compatibility research can also help inform what the best behavior is, based on what most web pages expect, or what would result in the best user experience.

Present research
~~~~~~~~~~~~~~~~

Present your research findings on how browsers behave and, if applicable, what web content usage patterns are.
You can suggest in the specification issue what you think the right fix is based on the findings,
and ask editors and implementers if they agree with your suggestion.
See :doc:`directory` for how to find the relevant implementers.

Possibly they will all agree with your suggestion, in which case you can go ahead with the next step!
However, they may also disagree or provide feedback where you need to iterate on the proposal until there is agreement on the general approach, and we need a more concrete proposal to review the specifics.

See `example spec issue <https://github.com/w3c/fxtf-drafts/issues/120>`__ where there was discussion about how the stringifier for ``DOMMatrix`` should work.

Change the spec
~~~~~~~~~~~~~~~

Most specifications are maintained in GitHub.
Proposing a change is done by submitting a pull request.
The steps for doing so are mostly the same as `the steps for web-platform-tests <https://web-platform-tests.org/writing-tests/github-intro.html>`__.

In short, the steps are:

1. Fork the specification's repository.
2. Clone your fork.
3. Create a feature branch: ``git checkout -b fix-some-issue``
4. Make the change.
5. Add the changed file to staging: ``git add the-file.bs``
6. Commit the change with ``git commit``.
   The commit message should say what you’re changing and why,
   and also which issue that the change fixes (with ``Fixes: #1234.``).
   For CSS specifications, prefix the first line of the commit message with the spec's shortname,
   e.g., ``[css-grid]``.
7. Push the commit to your fork.
   ``git push -u origin fix-some-issue``
8. Go to your fork in GitHub and `create a pull request <https://help.github.com/en/articles/creating-a-pull-request>`__ for the new branch.
9. Request review.
10. Address review comments.

Different specifications can have different tools for generating the document.
This is usually documented in the ``README.md`` or ``CONTRIBUTING.md`` file.
For example, CSS specifications, as well as most WHATWG specifications,
use `Bikeshed <https://tabatkins.github.io/bikeshed/>`__,
which can be installed locally but can also be invoked via a web service.
Many specifications, e.g. `ARIA <https://github.com/w3c/aria>`__,
use `ReSpec <http://www.w3.org/respec/>`__.
The HTML Standard has a `custom build tool called Wattsi <https://github.com/whatwg/html/blob/master/CONTRIBUTING.md>`__.
These preprocessors use slightly different markup for doing things such as cross-references.

You should read the documentation on how the specification's source text is formatted.
Maybe it has a style guide on how to break lines or on how to phrase things.

An easy way to get started is to look at the surrounding text and try to match that style.
Often that will go a long way to get most things right.
It's OK if the formatting isn't exactly correct;
reviewers will help you.

For W3C specifications, there is an `ipr check <https://labs.w3.org/repo-manager/>`__ for pull requests to make sure that the IPR commitment for the change is covered.

* If the change is trivial or doesn't change the requirements,
  then the editors or the group's chair can mark the pull request as non-substantive,
  which makes the check pass.
* Otherwise, if you or your employer is already a member of the working group,
  you need `get a W3C account <https://www.w3.org/accounts/request>`__
  and then `link your W3C and github accounts together <https://www.w3.org/users/myprofile/connectedaccounts>`__.
* You can ask for help in the pull request, or reach out to the working group chairs.

Each W3C specification should have a "Status of this document" section,
which says which working group it falls under.
For example, "This document was produced by the CSS Working Group.",
which links to the `Working Group home page <https://www.w3.org/Style/CSS/members>`__,
which should have a link to the `working group's charter <https://www.w3.org/Style/2016/css-2016>`__,
which says at the top who the chairs are.

For WHATWG standards, you need to `sign the participation agreement <https://participate.whatwg.org/>`__
in order to have a pull request accepted (regardless of what the change is).

If the spec is changed, that's great!
But it's not enough.
Will browsers implement the change?
Without writing a test in web-platform-tests and reporting a bug,
`they might not be aware that the spec changed for several years <https://blog.whatwg.org/improving-interoperability>`__,
at which point there may exist enough web content that expect the bug to exist that it's no longer possible for them to fix.

See `example spec change pull request <https://github.com/w3c/fxtf-drafts/pull/148>`__.

Write a web-platform-tests test
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

At this point, if you have a minimal test case from earlier when you `verified the bug <#verify-the-bug>`_,
you can convert that to a web-platform-tests test case.

There are `different kinds of tests <https://web-platform-tests.org/writing-tests/#test-type>`__:

* `testharness.js tests <https://web-platform-tests.org/writing-tests/testharness.html>`__:
  for things that can be asserted in JavaScript.
  See also the `testharnes.js API documentation <https://web-platform-tests.org/writing-tests/testharness-api.html>`__.
* `Reftests <https://web-platform-tests.org/writing-tests/reftests.html>`__:
  in the simple case, these consist of one test page that exersices the thing to test,
  and a reference page that should have identical rendering,
  but the reference achieves in a different way.
  These are good for testing rendering bugs.
  See also the `writing a reftest <https://web-platform-tests.org/writing-tests/reftest-tutorial.html>`__ tutorial.
* `Manual tests <https://web-platform-tests.org/writing-tests/manual.html>`__:
  Anything that can't be tested automatically as a reftest or testharness.js test can be a manual test.
  The minimized test case from earlier can be a manual test.
  Since these are not automated, they are generally not run, so will not catch regressions.
  Automate if you can!
* `testdriver.js tests <https://web-platform-tests.org/writing-tests/testdriver.html>`__:
  If a test requires some user interaction, such as a click or some key presses,
  but could otherwise be tested using testharness.js, can be automated with testdriver.js.
  See also the `testdriver.js tutorial <https://web-platform-tests.org/writing-tests/testdriver-tutorial.html>`__.

If there was a specification change that you want to test,
you usually need to test more than one thing to verify that it is implemented correctly.
Further bugs can be found by enumerating and testing interesting cases, including edge cases and error cases.
See `Making a Testing Plan <https://web-platform-tests.org/writing-tests/making-a-testing-plan.html>`__ for a walkthrough on how to decide what to test (and what not to test).

If the spec change was to remove a feature, then tests that expect that feature to exist should typically be removed,
but *also* there should be a "negative" test that verifies that the feature is *not* supported.
For example, `custom-elements/historical.html <https://github.com/web-platform-tests/wpt/blob/master/custom-elements/historical.html>`__ tests that the v0 API of custom elements is not supported.

When you have some tests, you can `submit them in a pull request <https://web-platform-tests.org/writing-tests/github-intro.html>`__.

See `example WPT pull request <https://github.com/web-platform-tests/wpt/pull/5885>`__.

Report bugs for browser engines
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When the test or spec change is merged, or ready to be merged,
it's time to report bugs on browser engines that need to be updated.

But before reporting new bugs, search the bug trackers to see if a bug already exists.
If it does, you can add a comment to it with any new information.
:doc:`directory` contains tips on how to search for specific bugs.
If you can't find a bug, report a new one!

The bug report should say what the bug is, and what should happen instead.
Link to the spec change pull request, if there is one,
or to the relevant part of the spec.
Link to the web-platform-tests pull request with the new tests,
or to the https://wpt.fyi/ results page for the relevant test.
See `example bug <https://bugs.webkit.org/show_bug.cgi?id=172114>`__.

* `Report a Gecko bug <https://bugzilla.mozilla.org/enter_bug.cgi?product=Core>`__
* `Report a WebKit bug <https://bugs.webkit.org/enter_bug.cgi?product=WebKit>`__
* `Report a Chromium bug <https://crbug.com/new>`__

When the bugs are reported, you can link to them in the pull request for the specification,
so that it is easy to find and follow up later.

If you've reached this point, you have done the heavy lifting towards fixing the bug!
The situation for the bug is now much clearer for browser engine implementers,
so they can more easily evaluate and prioritize fixing the bug.
