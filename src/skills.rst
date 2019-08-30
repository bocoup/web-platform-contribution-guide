Skills
------

Before we get to the step by step guide on how to contribute to a web standard and in order to make that guide easier to follow, we’d like to step through an overview of the skills involved in working on web standards. The goal of this skills overview is to orient you in the guide so that you can see what skills you would be setting out to master if you choose to build a career in web standards. If you prefer to learn by doing, you can skip this skills overview and jump right into the step by step guide below. You do not need to have all of these skills in order to start contributing to the web platform, but we have included this overview for those of you that would like a higher level learning map. These skills are extrapolated from internal retrospective documentation at Bocoup [18]_ for a Mozilla funded project to improve the interoperability of the Fieldset element [19]_.

Consensus Building
~~~~~~~~~~~~~~~~~~

The web platform is all about consensus. Consensus on the web platform involves getting many different people from many different groups to agree on how a web technology should work. On any given change to the web platform, you should expect to talk to between 5 and 20 different people from 2-4 different companies and multiple standards groups (working groups, technical committees, etc).

All of the skills covered below contribute to your ability to build consensus across a large group of stakeholders. We build consensus by talking to people, collecting feedback, and modifying our solutions to meet their needs and requests. Every change to the web platform has its own nuanced needs for consensus.

When working on a change to a web browser, for example, it is important to get feedback from the specification editor, a WPT maintainer, and from a person or people who would be implementing your change within each browser engineering team. Sometimes you’ll also need to make your case to the manager of the person who would be implementing your change in the browser engine in order to get the work prioritized.

Figuring out who to talk to about what and when can be a difficult project in its own right for a beginner because a lot of this consensus work is done between people who already know each other, know what each other work on, and know who has power and influence over what technology areas in the web. This knowledge is a key part of changing the web. We’re working to make this a more transparent process through this guide, but it can still be opaque at times. Don’t feel bad if you get stuck. You can start by referring to the "Directory listing of people to talk to" section of this guide. If you’re still stuck, you can email simon@bocoup.com, boaz@bocoup.com, jory@bocoup.com, valerie@bocoup.com, leo@bocoup.com, rick@bocoup.com for an introduction.

Research
~~~~~~~~

When starting out making a change to the web, whether it involves fixing a bug (very common and easier), or adding a feature (less common and harder), research is a key skill. For bug-fixing we start by looking into reproducing the bug. This means reading about the bug, and trying to make it happen again locally in your own web browser or web browsers.

Looking at Data
^^^^^^^^^^^^^^^

Research also involves modeling compatibility with the existing platform. For changes to web browsers, we model compatibility using the HTTP Archive, a database of twice-a-month crawls of the top 1,000,000 most visited websites consisting of those pages HTTP response bodies. We query this database to see how popular web pages use the web platform in order to understand how a technology is used. We use this data to reason about the risks to a browser for changing things in terms of how it will effect web page rendering for the people who use that browser. A user will change browsers if rendering on their favorite websites changes, or if a site they use stops working. Browser companies will not make a change if it causes a person to stop using that web browser.

Another possibility to collecting data is to implement instrumentation in a web browser to measure how often a feature is used. For Chromium, this is called a "use counter"; Firefox calls this "telemetry". A benefit over HTTP Archive research is that it is able to reach effectively anything that users access. A disadvantage is that it takes weeks or months before reliable data is available with this method.

Soliciting Feedback
^^^^^^^^^^^^^^^^^^^

We can also ask web developers (by survey, on twitter, in community forums) about their preferences. If you are working on a "compatibility bug" where different browsers treat the same piece of HTML or CSS code differently, then it’s a good idea to consider not only what the whole web is doing, but what web developers say they would ideally like to see happen.

We can develop a solution to a web platform issue based on the data we look at and the feedback we collect from web developers. We then also seek feedback from spec authors and implementers on this solution. This is another level of research into "what do implementers and spec authors want" and also reinforces consensus.

Consensus is constantly being negotiated between web developers, browser implementers and specification authors, and we use research to get at the raw material of this consensus.

Imagining the Runtime
~~~~~~~~~~~~~~~~~~~~~

One of the most technically difficult things that we do when we write specifications is to reason about the underlying model and behavior of a feature-set that does not yet exist. It is our job to imagine the runtime and execution context, and then write down instructions for how to implement that runtime of our imagination.

Depending on the feature, it is sometimes helpful to write down the behavior you are trying to specify in psued-code, actual "brainstorm code", or to implement the feature as a JavaScript program or in a web browser engine before proceeding.

Spec writing
~~~~~~~~~~~~

When you want to fix a bug, change a behaviour, or add a new feature to the web, this involves writing specification prose. Specification prose includes English language descriptions of the technology. It is important to know that many of our biggest specifications are a work in progress. The HTML spec, for example has many under-specified sections, several sections that are in conflict with actual implementations, and many many open issues (936 at the time of this writing) [20]_.

Where to write
^^^^^^^^^^^^^^

It is often difficult to get started because these specifications are very long and take a while to get used to reading. Often the specification reference each other and themselves. After a few read-throughs of, for example, HTML, you’ll start to see patterns, and the short hand will become more legible. Don’t be discouraged if these documents look like foreign languages to you at first. They are!

Writing specification prose is in principle similar to writing code. You should think about writing a specification as though you are implementing it as a program. With today’s standards of spec writing, that is the level of fidelity you want from a specification. It is not enough to describe how something works, we need to precisely describe what needs to be done to implement it completely, including all edge cases and error handling.

Knowing which spec to put the prose in can be difficult. When you start out, you won’t know the lay of the land for all of the specifications, and that is okay, you can still contribute meaningfully. It will take you a few years of participating before you have a "gut sense" of where to put things, but there a few good tricks to figure out what to do in the meantime. Quick tip: even after a career of working on the web platform, no one knows how everything works. Don’t try to know everything, it is not possible. It is a better idea to try and get comfortable with working on specific technical areas in the context of ambiguity.

Nevertheless, there are some quick tips to help you figure out where to put spec prose when you’re getting started. Sometimes the right location will already be documented in an issue on github. You can search WHATWG and W3C working group issues with the github advanced search feature. If it is not in an issue, you can also use this search tool to look at source code of specification. Search for related features to what you want to specify, and put it near those related features. Alternatively, you can clone the specifications and use your code editor to search for the prose. It is also very acceptable to ask in the issue where to specify it.

The decision about where to specify something ultimately impacts the maintainer(s) of the spec (people listed on specification as editors) most directly. It is important to make sure that the specification maintainer is comfortable maintaining the spec prose. You can figure this out by reading issues and discussion notes, or by asking them directly.

There is usually no hard rule for where something should go, but we can use our intuition and specification search skill to figure this out. For example, if you have a CSS selector that you want to specify, it should likely go in a CSS WG Selectors spec. We want to use our searching skills to figure out where the issue is being talked about, and what the emergent consensus of where the technology should be specified.

Sometimes behavior gets specified in a completely different spec while it is being worked out. Maybe that person wanted to keep it in a different spec while they were iterating on the design of the feature until it was stable, so that once it was stable it can be put in its proper home. There are sometimes political reasons why things end up in the wrong place. Sometimes it is easier to put things in a specification that you maintain, or that is maintained by someone you are already talking to and working with, than to ask a new person to change their spec.

How to Write Spec Prose
^^^^^^^^^^^^^^^^^^^^^^^

When we write specifications we aim to use unambiguous prose.

Cross referencing between specifications

How the tools work
^^^^^^^^^^^^^^^^^^

All of the specifications for technology on the web platform use a short hand (kind of like markdown) to make authoring and editing easier for specifications editors and maintainers. The repository for the specification at hand usually contains documentation about the tools necessary to generate the spec. These are command line tools that you will be installing to generate publishable specifications from the specification source that is version controlled on github.

The whatwg/html uses the combination of these repositories for generating the HTML standard: `whatwg/wattsi <https://github.com/whatwg/wattsi>`__ and `whatwg/html-build <https://github.com/whatwg/html-build>`__. The CSS WG and many other specifications use a tool called `Bikeshed <https://github.com/tabatkins/bikeshed/blob/master/README.md>`__.

Each tool has its own markup style is for the specifications that use it. If you are working on specifications across these groups, you will unfortunately have to learn the syntax for each. Don’t worry, it is all well documented for you :D.

Building blocks of a Spec
^^^^^^^^^^^^^^^^^^^^^^^^^

We write specification prose in the following categories of language (the following examples are loosely based on the HTML standard’s ``a`` element [21]_ and hyperlink [22]_ definitions):

Conformance Class
'''''''''''''''''

A Conformance class is an implementation of a web standard that requirements can apply to. For example, web browsers, web developers, conformance checkers, validators, and authoring tools are all types of conformance classes. Requirements, notes, examples, and warnings can all target different conformance classes.

For example, the following requirement about the ``href`` attribute’s value applies to the web developer conformance class but not to the web browser conformance class:

    The href attribute on a and area elements must have a value that is a valid URL potentially surrounded by spaces.

On the other hand, this requirement applies for how to parse the ``href`` attribute applies to the web browser conformance class and not to the web developer conformance class:

    When a user follows a hyperlink created by an element subject, optionally with a hyperlink suffix, the user agent must run the following steps:

    …

    9. Parse the URL given by subject's href attribute, relative to subject's node document.

Note in particular that the requirement for web developers can be "stricter" than the possible syntaxes that will result in the same behavior in web browsers. This might be done to help web developers catch mistakes, or to allow for future extensions to the language, while at the same time ensuring compatibility with existing web content. This is common in HTML, but can be confusing at first.

Definition
''''''''''

A definition is a specification shorthand for a longer piece of text, similar to the glossary of terms at the beginning of this guidebook. For example:

    Hyperlink:

    These are links to other resources that are generally exposed to the user by the user agent so that the user can cause the user agent to navigate to those resources, e.g. to visit them in a browser or download them.

In this example, the HTML standard is defining what a hyperlink is, so that it can be referenced later.

Algorithm
'''''''''

An algorithm is a recipe for how a browser should do something. Algorithms describe the control flow that a user agent implements. For example:

    The activation behavior of ``a`` elements that create hyperlinks is to run the following steps:

    1. If the target of the click event is an img element with an ismap attribute specified, then server-side image map processing must be performed, as follows:

    ….

    2. Follow the hyperlink or download the hyperlink created by the a element, as determined by the download attribute and any expressed user preference, passing hyperlink suffix, if the steps above defined it.

In this example the HTML Standard is specifying the activation behavior algorithm. You can see how the "definition" for Hyperlink is used here.

Requirement
'''''''''''

A requirement is something that the web developer or web browser needs to do in order to conform to the specification. For example:

    If the itemprop attribute is specified on an ``a`` element, then the href attribute must also be specified.

This is a requirement for web developers (to omit the href attribute if ``itemprop`` is specified). This requirement does not say anything about what web browsers have to do if this requirement were to be violated. There is no implicit relationship between requirements for one conformance class to requirements for another conformance class.

Requirements typically use words like "must".

Statement of Fact
'''''''''''''''''

A statement of fact is a piece of prose that makes a claim about the state of things around has no requirements, but is useful as context. For example:

    The level of stress that a particular piece of content has is given by its number of ancestor em elements.

In this example, the statement of fact helps explain the concept further by spelling out the implications of a requirement elsewhere in the specification.

Example
'''''''

An example is a block of prose which shows how the technology being specified is intended to be used. For example:

    If a site uses a consistent navigation toolbar on every page, then the link that would normally link to the page itself could be marked up using an a element:

    ``<li> <a href="https://foobar.com">The Greatest Website</a> </li>``

    ``<li> <a>Examples</a> </li>``

In this example, we are showing an ``a`` element, both with and without an href attribute to orient readers to how the technology could be used.

Note
''''

A note is a type of prose used to further expand on a technology with making a statement of fact. Notes are typically styled differently than statements of fact. For example:

    Note: The href attribute on a and area elements is not required; when those elements do not have href attributes they do not create hyperlinks.

In this example we are explaining that an ``href`` attribute is not necessary in order to have a valid anchor tag.

Warning
'''''''

A warning is a piece of prose that calls out a specified technology that has dangerous potential implications for web compatibility, security, user privacy, etc. For example:

    Warning: This algorithm is intended to mitigate security dangers involved in downloading files from untrusted sites, and user agents are strongly urged to follow it.

In this example we see a warning that comes after the algorithm for downloading a hyperlink. That algorithm has steps in it to protect users, this warning encourages implementers to follow them.

Issue
'''''

An issue is like a "TODO" for a spec editor. It identifies a part of the spec that still needs fleshing out, or to be remediated because of other issues, like web compatibility, etc. For example:

    Issue: This algorithm is amenable to being generalized to work on all hyperlink elements. See Bugzilla bug 1234.

In this issue, we see the editor suggesting future work to generalize the algorithm it comes after.

Testing
~~~~~~~

Tests are one way software maintainers verify the correctness of their work.
They can alert maintainers about bugs (i.e. when new tests are added which their project does not pass), and they can also help maintainers avoid making mistakes (i.e. when they are changing code, and their change causes a new failure).

Even if your contribution doesn't involve changing code directly, it may still be appropriate to write tests.

If you're helping to fix a browser which doesn't follow an instruction in some specification, then you probably need to add some tests to the standard test suite.
Be sure to review the existing tests, though; it may be that someone has already written a test for the bug that you've found!

If you're changing the normative text in a specification, then it's likely that the test suite has tests for the "old" behavior.
In that case, you'll need to update the tests so they are consistent with the change you're making.
It's also possible that the test suite is missing tests for the behavior you're changing.
In that case, you'll need to write brand new tests from scratch!

Many kinds of contributions won't involve tests.
If you're still unsure about whether you ought to be working with tests, :doc:`there are plenty of people who can help you decide <directory>`.
If you *do* find yourself writing tests, you should try to be thorough.
Think about the ways people might misinterpret the specification, and write tests that would show them their mistake.

The process of writing tests varies greatly between the various test suites.
You can learn all the technical details from each suite's documentation.
Here are the test suites for the web platform:

- `the web-platform-tests <https://github.com/web-platform-tests/wpt>`__
- `Test262 <https://github.com/tc39/test262>`__
- `the WebGL test suite <https://github.com/KhronosGroup/WebGL>`__
- `the WASM test suite <https://github.com/WebAssembly/spec>`__

Filing bugs on a Browser
~~~~~~~~~~~~~~~~~~~~~~~~

Browser implementers are more likely to implement a proposed change if there is a bug reported for the change in their bug tracker. Therefore, filing a bug for each browser engine that should be changed is an important step.

Here are links for filing a new bug for each major browser engine:

-  `Gecko <https://bugzilla.mozilla.org/enter_bug.cgi?product=Core>`__
-  `WebKit <https://bugs.webkit.org/enter_bug.cgi?product=WebKit>`__
-  `Chromium <https://crbug.com/new>`__

Before filing a bug, search the bug tracker if there is already a bug filed for the same thing. If you find one, you can add a comment to that bug instead of filing a new bug. If you can't find anything, or if you find something that is related but not exactly the same bug, then file a new bug. Don't worry if your bug gets marked as a duplicate, that is common and not a big deal.

The default template typically asks for steps to reproduce, on the assumption that the bug report needs reproduction and debugging of the browser to understand what the actual bug is. For bugs asking to implement a specification change, it might not always add clarity with reproduction steps. If you have a specification issue that explains the problem, and a pull request (PR) for a proposed specification change and a PR for a web-platform-tests test case, then the browser bug can often just briefly explain the problem and then link to the relevant specification issue and the PRs.

Make sure to write a clear summary of the bug. The summary should briefly but clearly say what the bug is.

Here are some good examples:

-  `Change DOMQuad bounds to getBounds() as per specification <https://bugzilla.mozilla.org/show_bug.cgi?id=1454622>`__
-  `Remove \<keygen> <https://bugs.webkit.org/show_bug.cgi?id=167018>`__
-  `fieldset should have min-inline-size instead of min-width in UA stylesheet <https://bugs.chromium.org/p/chromium/issues/detail?id=874053>`__
-  `innerHTML serialization for javascript: URL attribute doesn't conform to the specification <https://bugs.chromium.org/p/chromium/issues/detail?id=927164>`__

When you have filed browser bugs, link to them from the specification PR.

.. [18]
   *Based on notes from `[RETRO] Mozilla Fieldset Interop Retrospective SoW#3276.2 <https://docs.google.com/document/d/1G_YfLMgE7cj3K2U2DDbX51RfIwwwUI7CzQEZleNEX_g/edit#bookmark=id.ek85y8jpf2oy>`__*

.. [19]
   Fieldset interoperability project: https://bocoup.com/work/fieldset-interoperability and https://bocoup.com/blog/the-state-of-fieldset-interoperability

.. [20]
   List of open HTML issues: `https://github.com/whatwg/html/issues <https://github.com/whatwg/html/issues/>`__

.. [21]
   HTML Standard Hyperlink: https://html.spec.whatwg.org/multipage/links.html#hyperlink

.. [22]
   HTML Standard a element: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-a-element
