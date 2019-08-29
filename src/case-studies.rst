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

Chromium and Safari both offered a special feature for `the "search" input element <https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/search>`__, but Firefox and Edge did not. Chromium developers were working to determine if they could remove the feature without breaking any existing websites, but there had been no word from Safari developers. In the meantime, web developers could accidentally make forms that worked in some browsers but not in others.

**Solution**

We alerted the Safari developers of the incompatibility by submitting `a report to the WebKit bug tracker <https://bugs.webkit.org/show_bug.cgi?id=195818>`__. We also created a test for the web-platform-tests project, a so-called "historical" test which asserted that the feature was *not* available.

**Impact**

The Safari team has acknowledged the issue and filed it among their upcoming tasks. **BEGIN TENTATIVE** The web-platform-tests project has accepted the new test, and that test has been automatically transmitted to the Chromium project, where it serves as a reminder that the non-standard feature continues to reduce interoperability. **END TENTATIVE**
