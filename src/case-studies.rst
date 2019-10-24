Case Study Examples
-------------------

:defined CSS Pseudo-class
~~~~~~~~~~~~~~~~~~~~~~~~~

`[selectors-4] :defined <https://github.com/w3c/csswg-drafts/issues/2258>`__

**Problem**

The ``:defined`` pseudo-class was added in order to allow differentiating between custom elements that have been successfully constructed from those that have not yet been constructed or have failed to construct.
This pseudo-class was `defined in HTML <https://html.spec.whatwg.org/multipage/semantics-other.html#selector-defined>`__ but did not have a definition in the `Selectors specification <https://drafts.csswg.org/selectors/>`__.

**Solution**

At first, we proposed to move the definition from HTML into Selectors.
However, it was pointed out that the Selectors specification should have a host language-agnostic high-level definition,
and the host language (e.g., HTML) should have a precise definition as appropriate for that language.

We `specified a high-level definition <https://github.com/w3c/csswg-drafts/pull/3735>`__ in the Selectors specification with examples showing how to use it for HTML.

There were already test cases in web-platform-tests, so no new tests were needed.

**Impact**

Developers reading the Selectors specification can learn that the ``:defined`` pseudo-class exists and how to use it.

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

The WebKit team has acknowledged the issue and filed it among their upcoming tasks.
The web-platform-tests project has accepted the new tests, and those tests have been automatically transmitted to the Chromium project.
Chromium and WebKit developers can now more easily and with more confidence remove the feature and know that, if they pass the tests, their new behavior will be interoperable with Firefox.
