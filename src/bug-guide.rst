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
The WHATWG has a defined process for changes, additions and removals [23]_.
In the W3C it depends on the working group, but usually the same principles will apply there as well.
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
"Minimized" means that anything that can be removed and still reproduce the bug, should be removed.
The test case at this point doens't need to be a proper WPT test, but it could be.
Then load this test case in different browsers to see what the result is.

If you get different results in different browsers, then that indicates that there is an interop bug.
If the test matches what the spec requires, but all browsers fail the test, then possibly the spec should be changed to match implemented reality.
If all browsers pass the test, then it indicates that there's no bug!
It can still be worthwhile to submit such tests, to ensure it doesn't regress, and to demonstrate that the specification is interoperably implemented.

Make sure to test in the "latest" versions of browsers.
The latest *stable* version is old in this context; you need something that includes literally yesterday's bug fixes.
Maybe the bug has been fixed in the past few days or weeks.

* `Chrome Canary <https://www.google.com/intl/en/chrome/canary/>`__
* `Safari Technology Preview or nightly builds <https://webkit.org/downloads/>`__
* `Firefox Nightly <https://www.mozilla.org/en-US/firefox/nightly/all/>`__

Communicate about your work
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Comment in the specification issue, saying that you wish to work on it.
You can link to your test case and other findings so far.

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

Write a test
~~~~~~~~~~~~

1. Write a web platform test
2. There are different kinds of tests

   1. Testharness.js tests - anything that you can verify from javascript
   2. Ref tests - anything that can be verified by taking a screenshot from the test and comparing it to a different document with identical rendering, but done in a different way.
   3. Historical tests (negative tests; test that removed features are *not* supported)
   4. Docs at web-platform-tests.org

3. Find a similar test to figure out how to write that kind of test and where to put it

   5. Clone wpt repo and do a git grep.
   6. If you are testing activeElement, try ``git grep activeElement``.

4. Make a pull request with test

   7. PR should point to spec change
   8. "This follows spec change foo"
   9. Request review
   10. Address review comments
   11. Update your spec bug/PR with a reference to the test

Report and document buggy behavior
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. When the test is merged, or ready to be merged
2. File browser bugs

   1. Link for chromium
   2. Link for webkit
   3. Link for gecko

3. Document issue on web developer resources, e.g. `the Mozilla Developer Network <https://developer.mozilla.org>`__

.. [23]
   WHATWG Working Mode: https://whatwg.org/working-mode#changes
