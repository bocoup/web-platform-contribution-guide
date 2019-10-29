Case Study Examples
-------------------

:defined CSS Pseudo-class
~~~~~~~~~~~~~~~~~~~~~~~~~

`[selectors-4] :defined <https://github.com/w3c/csswg-drafts/issues/2258>`__

**Problem**

...

**Solution**

…

https://labs.w3.org/repo-manager/pr/id/w3c/csswg-drafts/3735

**Impact**

…

Search Event
~~~~~~~~~~~~

`The "search" event <https://github.com/whatwg/html/issues/667>`__

**Problem**

Chromium and WebKit both offered a special feature for `the "search" input element <https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/search>`__, but Firefox and Edge did not.
Chromium developers were working to determine if they could remove the feature without breaking any existing websites, but there had been no word from WebKit developers.
In the meantime, web developers could accidentally make forms that worked in some browsers but not in others.

**Solution**

We alerted the WebKit developers of the incompatibility by submitting `a report to the WebKit bug tracker <https://bugs.webkit.org/show_bug.cgi?id=195818>`__.
We also created `tests <https://github.com/web-platform-tests/wpt/pull/19889>`__ for the web-platform-tests project, so-called "historical" tests which asserted that the feature was *not* available.

**Impact**

The WebKit team has acknowledged the issue and filed it among their upcoming tasks. The web-platform-tests project has accepted the new tests, and those tests have been automatically transmitted to the Chromium project.
Chromium and WebKit developers can now more easily and with more confidence remove the feature and know that, if they pass the tests, their new behavior will be interoperable with Firefox.
