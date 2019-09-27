Step by step guide to fix a W3C or WHATWG bug
---------------------------------------------

1. Select a bug
~~~~~~~~~~~~~~~

The first step in working on a change to the web platform is to identify a bug you want to work on.
There are many different kinds of outcomes you can expect to have when contributing to the web platform and the type of bug you select will influence this.

Depending on the bug you select, you might end up suggesting a change to a specification, submitting a test to web-platform-tests, and reporting a bug on two different browsers.
Or, you might find that the bug is in the browsers, and all that is needed is a report to the browsers and a test to guarantee the right behavior.
There might be a bug only in the specification, and you might only need to submit a spec change.
Or perhaps the spec is correct, and matches the behavior of all the browsers, but there is a missing test, in which case you’ll be tasked with writing the test and notifying everyone that it exists.
All versions of this, and the many other possible permutations are all valid forms of contribution.

When selecting a bug, it’s always a good idea to ask a specification editor.
If you have an idea of which technology area that you’d like to work on, you can open the specification for that technology, and contact one of the editors listed at the top of the specification.

Types of Bugs
^^^^^^^^^^^^^

It is also a good idea to familiarize yourself with the types of bugs we deal with when contributing to the web.
Here is a list of the kinds of bugs you might run into, and the impact they’ll have on what kind of work you’ll be doing

Clarification bugs
''''''''''''''''''

These are bugs where the main work is clarifying what the specification says.
Often times browsers will agree on a behavior, and the relevant specification will be inaccurate, or underspecified for the correct behavior.
If you want to dive into the spec and spec tooling without digging into browsers, this is the type of bug for you.
Whatwg/html and and csswg-drafts maintain lists of bugs in his category:

-  https://github.com/whatwg/html/labels/clarification
-  https://github.com/w3c/csswg-drafts/labels/Needs%20Example%20or%20Figure

Interoperability bugs
'''''''''''''''''''''

Interop bugs deal with situations in which browsers behave differently from each other, and the specification either agrees with one or two, or requires a behavior that is not implemented anywhere, or is not clear about the correct behavior.
If you want to do research into how most websites behave, and determine what is web compatible, this is the type of bug for you.
Whatwg/html and and csswg-drafts maintain lists of bugs in his category:

-  https://github.com/whatwg/html/labels/interop
-  https://github.com/whatwg/html/labels/needs%20compat%20analysis
-  https://github.com/w3c/csswg-drafts/labels/Needs%20Data

Normative changes, additions and removals
'''''''''''''''''''''''''''''''''''''''''

Some issues are about changing how an existing feature works, or adding a new feature or removing one that is already specified.
The WHATWG has a defined process for changes, additions and removals [23]_.
In the W3C it depends on the Working Group, but usually the same principles will apply there as well.
This kind of issue might require both research for web compatibility impact as well as building consensus.

Additional Resources
^^^^^^^^^^^^^^^^^^^^

There are a number of resources that recommend good first issues:

-  whatwg/html maintains a list of "good first issues" which the maintainers think would be a good place for a first time contributor to html to get started: https://github.com/whatwg/html/labels/good%20first%20issue
-  The CSS WG maintains a list of "help wanted" issues: https://github.com/w3c/csswg-drafts/labels/Help%20Wanted
-  The Web Platform Tests project maintains a list of "good first issues", too: https://github.com/web-platform-tests/wpt/labels/good%20first%20issue

2. Verify the bug
~~~~~~~~~~~~~~~~~

1. Test what browsers do today

3. Communicate about your work
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Tell the community and editor that you want to work on this, publicly

4. Figure out the "right" behavior
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. If two browser engines have behavior A, and one browser engine has behavior B, we give preference to behavior A.

   1. Look at what lead to what the spec says now via git history of the specification
   2. If there is a good reason to not match majority implementations (e.g., to address a security issue), then it should be kept as-is.

2. If all three engines do different things, research which behavior is most popular on the web via an analysis in HTTP Archive or use counters.
3. Query HTTP Archive

   1. Gcp marketing explanation
   2. When you sign up for BigQuery

      1. You get $300 of credits
      2. You get 1TB of data usage each month for free

   3. The dataset is over 6 TB, so the monthly allowance is not enough for one month
   4. Link to tutorial

5. Present research
~~~~~~~~~~~~~~~~~~~

1. suggest the fix you have in mind in issue on github
2. Ask editors and implementers if they agree (check the specification).
3. Ask implementers (see :doc:`directory`)

6. Change the spec
~~~~~~~~~~~~~~~~~~

(Alternative to steps 2-7 is using the github ui)

1. Create an account on github dot com
2. Fork the spec
3. Clone your fork
4. Different specs have different build tools Install the one you need or not

    1. HTML has a custom one
    2. CSS specs all use Bikeshed

5. Make a feature branch
6. Make the change

    3. Search for the text you are looking to modify or add prose next to (be careful of line breaks in the spec source).
    4. Read the surrounding text and try to match that style
    5. Its alright to get this wrong the first time, your reviewer is here to help
    6. It takes a few tries in order to get an intuitive sense for how to write in this style
    7. Some specs have a style guide or contributor guide that can be helpful to read.

7. Commit the change

    8. Commit message should say what you’re changing and why
    9. For CSS specs you have to say what the spec is at the beginning of the commit message in [square brackets]
    10. The body of the message should say more detail about the fix
    11. Say what issue this is fixing with "fixes: #1234".

8. Make a pull request

    12. ...

9. Ipr commitment

    13. Create a w3c account [TODO ADD LINK]
    14. link your github account to your w3c account - E.g. https://labs.w3.org/repo-manager/pr/id/w3c/csswg-drafts/3735 [TODO FIGURE OUT AND EXPLAIN HOW THIS WORKS ACROSS SPECS[
    15. For whatwg, sign participant agreement

10. Request review
11. Address review comments

7. Write a test
~~~~~~~~~~~~~~~

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

8. Report and document buggy behavior
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. When the test is merged, or ready to be merged
2. File browser bugs

   1. Link for chromium
   2. Link for webkit
   3. Link for gecko

3. Document issue on web developer resources, e.g. `the Mozilla Developer Network <https://developer.mozilla.org>`__

.. [23]
   WHATWG Working Mode: https://whatwg.org/working-mode#changes
