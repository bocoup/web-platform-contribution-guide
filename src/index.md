March 2019

Version 0.1-pre

Various Authors[^1]


# Web Platform Contribution Guide


## Getting started with a history, skill guide and how-to of web standards.


```
____________________          __________________
|  Browser          |         |    node.js      |
|  (W3C & WHATWG)   |         |    (OpenJS)     |
|  HTML          ___|_________|__  Node Global  |
|  CSS           | JavaScript    |              |
|  ARIA          | (ECMA 262,    |______________|
|  Window Object | 402, 404)     |
|                |_______________|
|________________|
```




## Table of Contents


[TOC]



## Introduction

The "web platform" is comprised of a collection of standardized application programming interfaces (APIs) that programmers use to make web pages and web applications. This includes technologies, like HTML, CSS and JavaScript. In addition to including a full implementation of the JavaScript programming language that web browsers share with Node.js, web browsers expose their own standardized APIs specifically made for interacting with web pages.

The web platform is powerful and expressive, but it's also a little broken in parts. That's where the other part of the web platform comes in. The term “web platform” _also_ describes the people and practices that are meant to include everyone in improving the standard programming interfaces. The web can only work if it's built with an understanding of all its constituents--the whole world! This guide aims to help you participate in the continuing design of the web platform so that your perspective can help shape the direction of the web.

In this guide, we are going to focus on bugs in a web standard for browsers. Bugs are a great way to get started because in order to get them fixed, you have to touch all of the components of a web standard; a specification, a patch to the source code of a browser engine, and interoperability tests. You might be surprised by how working on browser bugs will get you moving into deep parts of the web platform! Many of the most prolific contributors to the web platform got their start by working on interoperability bugs between browsers.

<aside class="pull-quote">
“The goal of this guide is to reach interoperability, not to add features, or change specs. This is maintenance work, and it is the most important thing that the web needs.”
</aside>

In the context of this guide, the goal of working on the web platform is to reach interoperability, not to add features, or change specs. This is maintenance work, and it is the most important thing that the web needs. This can sometimes mean adding specification prose, writing tests, and filing bugs on browsers, but this can also mean deleting things, and writing negative tests to ensure that the feature is not in the browser. All forms of this work are part of maintenance and we celebrate each kind of contribution.


## Web Platform Governance


```
 ___________________           _________________
|  Browser          |         |    node.js      |
|  (W3C & WHATWG)   |         |    (OpenJS)     |
|  HTML          ___|_________|__  Node Global  |
|  CSS           | JavaScript    |              |
|  ARIA          | (ECMA 262,    |______________|
|  Window Object | 402, 404)     |
|________________|               |
                 |_______________|
```



### W3C

The W3C (World Wide Web Consortium) is an international standards body, with 20 or so employees based out of four universities; MIT (Massachusetts Institute of Technology), ERCIM (European Research Center for Informatics and Mathematics), Keio University in Japan and Beihang University in Beijing, China. The W3C has 450 member companies which send delegates to WGs (working groups). Working groups oversee specifications. There is an annual meeting of all working groups hosted in a different city each year called TPAC (Technical Plenary Advisory Committee).

The W3C working groups oversee and are leading the charge on technologies like SVG, CSS, ARIA, Web Driver, Generic Sensors, Web XR, Web Payments, Gamepad and UI Events.


### WHATWG and HTML

WHATWG (Web Hypertext Application Technology Working Group) is an independent group of standards developers that split off from the W3C in 2004[^2] based on disagreements about the future of HTML. The W3C wanted to stop working on HTML, and start working on XHTML 2, a new version of XHTML that was by design not backwards compatible with HTML 4.01 or XHTML 1.x. WHATWG saw proprietary technologies like Flash and Silverlight as threats to an open and royalty free web, and wanted to make the future of web standards include a story for web application development[^3]. WHATWG did this in HTML, and was successful. WHATWG split off, and continued working on what briefly became known as HTML5.

In 2007, the W3C saw the importance of HTML, and started working on HTML5 as a downstream fork of WHATWG’s HTML, initially with both groups working together from a single source document to produce identical specifications from the Table of Contents onwards. Over time, the two groups disagreed on both technical details and goals for the specification, where the W3C prioritized creating a “finished” version of HTML5 and WHATWG prioritized continuous improvement of bug fixes and new features.

In 2011, the WHATWG stopped versioning HTML in favor of a living standard[^4]. HTML5 is still a popular marketing term for “modern web technology”, but no longer refers to a technology that people are working on today.

In late 2017, the WHATWG formalized its operating principles under a “steering group agreement” for cooperation between Google, Apple, Mozilla and Microsoft[^5]. Before that, the WHATWG was a loose group of interested parties and did not have any patent policy, which prevented some companies from contributing formally (in particular Microsoft).

In 2018, the W3C invited WHATWG back to run the HTML standard. The main HTML specification is now worked on under the whatwg/html repository[^6]. In May 2019, the details of this arrangement were worked out, and the W3C and WHATWG agreed to collaborate on a single version of the HTML and DOM specifications[^7].

The WHATWG is leading work on things like HTML, Compatibility, Console Object, DOM, Encoding, Fetch, Fullscreen, URL and XHR.


### CSS WG

The CSS WG is a working group at the W3C. CSS Specifications have levels instead of versions, and are backwards compatible. The people working on CSS decided at some point that each CSS technology should have levels. CSS 1 was the beginning. Both CSS1 and CSS2 were monolithic specifications defining all of CSS features at that level. After CSS2, the CSSWG started modularizing the specification by technology. New specifications that built on top of CSS2 technologies became modules at level 3. Then all new CSS technologies that got started after CSS2 started with level 1. So some CSS technologies are at level 1 (e.g., CSS Variables Level 1) while others are at level 5 (e.g., Media Queries Level 5) at the time of this writing. For this reason, we don’t  talk about “CSS3” or “CSS4”. We use the general term “CSS” and refer to individual technologies at their different levels.


### ARIA

ARIA (Accessible Rich Internet Applications) is a collection of standards developed by several working groups at the W3C that deal with accessibility of web technologies, mainly assistive technologies like screen readers.


### Other Standards Bodies & Foundations

In addition to the W3C and WHATWG, there are many other standards bodies that make web platform technologies.


#### Ecma International

Ecma (formerly ECMA - the European Computer Manufacturing Association, but now just Ecma) is a standards body based in Geneva Switzerland. Ecma has 4 full time employees, and several active TCs (Technical Committees), most notably, TC39 (the 39th technical committee) which writes three specifications: Ecma-262, Ecma-402, Ecma-404 (collectively ECMAScript). These are the underlying specifications for the JavaScript programming language which is implemented in web browsers and Node.js. We’d really like to get more into how ECMAScript is standardized, but this is material for a separate guide, or potentially a future version of this guide.


#### OpenJS Foundation

The OpenJS Foundation is a US-based Trade organization home to several dozen open source JavaScript projects including Node.js. Node.js is a de facto standard with a more ad hoc process for adding features than other technologies. OpenJS is not a standards body, but it does have a governance model for adding features to Node.js. Additionally, the OpenJS Foundation sends delegates from its projects to represent web developers at the W3C and Ecma International. The Node TSC (technical Steering Committee)[^8] operates within the OpenJS foundation and oversees additions and changes to the node global is a set of built in APIs on top of the JavaScript programming language which adds useful functionality that developers use to make software. The node global is similar to the `window` object in browsers, but geared toward server side software, and build tools for web developers. Many web developers use node to manage their projects’ build processes. Node share several APIs with web browsers, like URL, Fetch, Text Decoding, etc. Node.js is even known to run some of the web-platform-tests tests to ensure interoperability for the features that node and browsers share.


#### IETF

The IETF is a loose organization with no formal membership. This group develops the HTTP (Hypertext Transfer Protocol) standard, which web browsers use as the protocol for transferring web pages.


#### Unicode Consortium

The Unicode Consortium defines the Unicode Standard[^9], the universal character set that is used for the web. New versions of the Unicode Standard can include new characters such as new emoji. Unicode also defines the UTF-8 and UTF-16 encodings. These are now also defined in the WHATWG Encoding Standard, for completeness sake. Unicode also has recommendations on text-related issues such as handling bi-directional text[^10] and rules for line breaking[^11] which are important for the web because following best practices for multilingual text helps users to read and understand text better.


#### IEEE

In their own words, “IEEE is the world's largest technical professional organization dedicated to advancing technology for the benefit of humanity.” Of the many and diverse technical standards they develop, you may be familiar with the IEEE 802.11 standard (defining the WLAN protocol), or the IEEE 754 Standard for Floating-Point Arithmetic. The IEEE have working groups and their own process for developing standards.


#### ISO

ISO/IEC JTC1 was formed as a merger of three subcommittees of international standards bodies to avoid duplicative or incompatible standards between several _national_ standards bodies. The group's purpose is to develop, maintain, and promote standards in the fields of information technology and information and communications technology. JTC1 subcommittees and working groups are responsible for more than 2600 published standards in areas such as programming languages, character sets, and multimedia. Standards organizations such as the W3C are able to publish ISO standards through a working relationship with ISO/JTC1.

Web standards are primarily specified in other places, like the W3C and Ecma International, and come to the ISO for international de jure standardization. That means governments can require these standards for policy and procurement purposes.

For example, the W3C Web Content Accessibility Guidelines 2.0 (WCAG 2.0) is an ISO standard, which benefits countries and organizations that can more easily adopt ISO standards[^12]. WCAG 2.0 explains how to make web content more accessible to people with disabilities.


#### Khronos

Khronos is the name of the standards body that specifies WebGL, the low level graphics card programming interface of the web. This API can be used with the HTML canvas element, defined by the WHATWG.


#### IANA

The Internet Assigned Numbers Authority (IANA) coordinate the DNS Root (including managing Top Level Domains), IP addressing, and other Internet protocol resources.


## Intellectual Property Rights Management

In order to contribute to the web platform, you must forfeit your intellectual property rights associated with the technology or technique you’re contributing. Companies that make browser engines use the W3C and now the WHATWG and other standards bodies to facilitate this process so that all technologies standardized as part of the web are available royalty free. All WHATWG standards are royalty-free[^13]. Most W3C Working Groups operate under a royalty-free licensing mode, but there is an option for working groups to use a "reasonable and non-discriminatory" (RAND[^14]) licensing mode, which EPUB3, for example, uses[^15]. [TODO: MAKE SURE RAND IS STILL A THING AT W3C EVEN THOUGH w3.org/TR/patent-policy/ DOESNT MENTION IT]

When contributing to the web, you and/or the company that you work for will be asked to sign an intellectual property rights agreement which makes copyrights in technologies you work on royalty free and renders patents that govern the technology you are working on neutral, or not enforceable in the context of any implementation of the standard to which you have contributed.

At the W3C this is called the W3C Patent policy[^16] which you have to agree to in order to participate, either as a representative of your company or as an “invited expert”. At the WHATWG you or your company must sign a Contributors License Agreement[^17].

It is a benefit to each company who participates to ensure that the technology is unencumbered by patents. This makes the web platform a patent neutral technology.

This is more difficult for individuals to benefit from because individuals are not able to make their own web browsers, so individuals usually have to get full time paid jobs that pay them to work on these technologies. We’re working on making sure that more people from marginalized backgrounds are able to get paid to work on web standards.


## Skills

Before we get to the step by step guide on how to contribute to a web standard and in order to make that guide easier to follow, we’d like to step through an overview of the skills involved in working on web standards. The goal of this skills overview is to orient you in the guide so that you can see what skills you would be setting out to master if you choose to build a career in web standards. If you prefer to learn by doing, you can skip this skills overview and jump right into the step by step guide below. You do not need to have all of these skills in order to start contributing to the web platform, but we have included this overview for those of you that would like a higher level learning map. These skills are extrapolated from internal retrospective documentation at Bocoup[^18] for a Mozilla funded project to improve the interoperability of the Fieldset element[^19].


### Consensus Building

The web platform is all about consensus. Consensus on the web platform involves getting many different people from many different groups to agree on how a web technology should work. On any given change to the web platform, you should expect to talk to between 5 and 20 different people from 2-4 different companies and multiple standards groups (working groups, technical committees, etc).

All of the skills covered below contribute to your ability to build consensus across a large group of stakeholders. We build consensus by talking to people, collecting feedback, and modifying our solutions to meet their needs and requests. Every change to the web platform has its own nuanced needs for consensus.

When working on a change to a web browser, for example, it is important to get feedback from the specification editor, a WPT maintainer, and from a person or people who would be implementing your change within each browser engineering team. Sometimes you’ll also need to make your case to the manager of the person who would be implementing your change in the browser engine in order to get the work prioritized.

Figuring out who to talk to about what and when can be a difficult project in its own right for a beginner because a lot of this consensus work is done between people who already know each other, know what each other work on, and know who has power and influence over what technology areas in the web. This knowledge is a key part of changing the web. We’re working to make this a more transparent process through this guide, but it can still be opaque at times. Don’t feel bad if you get stuck. You can start by referring to the “Directory listing of people to talk to” section of this guide. If you’re still stuck, you can email [simon@bocoup.com](mailto:simon@bocoup.com), [boaz@bocoup.com](mailto:boaz@bocoup.com), [jory@bocoup.com](mailto:jory@bocoup.com), [valerie@bocoup.com](mailto:valerie@bocoup.com), [leo@bocoup.com](mailto:leo@bocoup.com), [rick@bocoup.com](mailto:rick@bocoup.com) for an introduction.


### Research

When starting out making a change to the web, whether it involves fixing a bug (very common and easier), or adding a feature (less common and harder), research is a key skill. For bug-fixing we start by looking into reproducing the bug. This means reading about the bug, and trying to make it happen again locally in your own web browser or web browsers.


#### Looking at Data

Research also involves modeling compatibility with the existing platform. For changes to web browsers, we model compatibility using the HTTP Archive, a database of twice-a-month crawls of the top 1,000,000 most visited websites consisting of those pages HTTP response bodies. We query this database to see how popular web pages use the web platform in order to understand how a technology is used. We use this data to reason about the risks to a browser for changing things in terms of how it will effect web page rendering for the people who use that browser. A user will change browsers if rendering on their favorite websites changes, or if a site they use stops working. Browser companies will not make a change if it causes a person to stop using that web browser.

Another possibility to collecting data is to implement instrumentation in a web browser to measure how often a feature is used. For Chromium, this is called a “use counter”; Firefox calls this “telemetry”. A benefit over HTTP Archive research is that it is able to reach effectively anything that users access. A disadvantage is that it takes weeks or months before reliable data is available with this method.


#### Soliciting Feedback

We can also ask web developers (by survey, on twitter, in community forums) about their preferences. If you are working on a “compatibility bug” where different browsers treat the same piece of HTML or CSS code differently, then it’s a good idea to consider not only what the whole web is doing, but what web developers say they would ideally like to see happen.

We can develop a solution to a web platform issue based on the data we look at and the feedback we collect from web developers. We then also seek feedback from spec authors and implementers on this solution. This is another level of research into “what do implementers and spec authors want” and also reinforces consensus.

Consensus is constantly being negotiated between web developers, browser implementers and specification authors, and we use research to get at the raw material of this consensus.


### Imagining the Runtime

One of the most technically difficult things that we do when we write specifications is to reason about the underlying model and behavior of a feature-set that does not yet exist. It is our job to imagine the runtime and execution context, and then write down instructions for how to implement that runtime of our imagination.

Depending on the feature, it is sometimes helpful to write down the behavior you are trying to specify in psued-code, actual “brainstorm code”, or to implement the feature as a JavaScript program or in a web browser engine before proceeding.


### Spec writing

When you want to fix a bug, change a behaviour, or add a new feature to the web, this involves writing specification prose. Specification prose includes English language descriptions of the technology. It is important to know that many of our biggest specifications are a work in progress. The HTML spec, for example has many under-specified sections, several sections that are in conflict with actual implementations, and many many open issues (936 at the time of this writing)[^20].


#### Where to write

It is often difficult to get started because these specifications are very long and take a while to get used to reading. Often the specification reference each other and themselves. After a few read-throughs of, for example, HTML, you’ll start to see patterns, and the short hand will become more legible. Don’t be discouraged if these documents look like foreign languages to you at first. They are!

Writing specification prose is in principle similar to writing code.  You should think about writing a specification as though you are implementing it as a program. With today’s standards of spec writing, that is the level of fidelity you want from a specification. It is not enough to describe how something works, we need to precisely describe what needs to be done to implement it completely, including all edge cases and error handling.

Knowing which spec to put the prose in can be difficult. When you start out, you won’t know the lay of the land for all of the specifications, and that is okay, you can still contribute meaningfully. It will take you a few years of participating before you have a “gut sense” of where to put things, but there a few good tricks to figure out what to do in the meantime. Quick tip: even after a career of working on the web platform, no one knows how everything works. Don’t try to know everything, it is not possible. It is a better idea to try and get comfortable with working on specific technical areas in the context of ambiguity.

Nevertheless, there are some quick tips to help you figure out where to put spec prose when you’re getting started. Sometimes the right location will  already be documented in an issue on github. You can search WHATWG and W3C working group issues with the github advanced search feature. If it is not in an issue, you can also use this search tool to look at source code of specification. Search for related features to what you want to specify, and put it near those related features. Alternatively, you can clone the specifications and use your code editor to search for the prose. It is also very acceptable to ask in the issue where to specify it.

The decision about where to specify something ultimately impacts the maintainer(s) of the spec (people listed on specification as editors) most directly. It is important to make sure that the specification maintainer is comfortable maintaining the spec prose. You can figure this out by reading issues and discussion notes, or by asking them directly.

There is usually no hard rule for where something should go, but we can use our intuition and specification search skill to figure this out. For example, if you have a CSS selector that you want to specify, it should likely go in a CSS WG Selectors spec. We want to use our searching skills to figure out where the issue is being talked about, and what the emergent consensus of where the technology should be specified.

Sometimes behavior gets specified in a completely different spec while it is being worked out. Maybe that person wanted to keep it in a different spec while they were iterating on the design of the feature until it was stable, so that once it was stable it can be put in its proper home. There are sometimes political reasons why things end up in the wrong place. Sometimes it is easier to put things in a specification that you maintain, or that is maintained by someone you are already talking to and working with, than to ask a new person to change their spec.


#### How to Write Spec Prose

When we write specifications we aim to use unambiguous prose.

Cross referencing between specifications


#### How the tools work

All of the specifications for technology on the web platform use a short hand (kind of like markdown) to make authoring and editing easier for specifications editors and maintainers. The repository for the specification at hand usually contains documentation about the tools necessary to generate the spec. These are command line tools that you will be installing to generate publishable specifications from the specification source that is version controlled on github.

The whatwg/html uses the combination of these repositories for generating the HTML standard: [whatwg/wattsi](https://github.com/whatwg/wattsi) and [whatwg/html-build](https://github.com/whatwg/html-build). The CSS WG and many other specifications use a tool called [Bikeshed](https://github.com/tabatkins/bikeshed/blob/master/README.md).

Each tool has its own markup style is for the specifications that use it. If you are working on specifications across these groups, you will unfortunately have to learn the syntax for each. Don’t worry, it is all well documented for you :D.


#### Building blocks of a Spec

We write specification prose in the following categories of language (the following examples are loosely based on the HTML standard’s `a` element[^21] and hyperlink[^22] definitions):


##### Conformance Class

A Conformance class is an implementation of a web standard that requirements can apply to. For example, web browsers, web developers, conformance checkers, validators, and authoring tools are all types of conformance classes. Requirements, notes, examples, and warnings can all target different conformance classes.

For example, the following requirement about the `href` attribute’s value applies to the web developer conformance class but not to the web browser conformance class:

> The href attribute on a and area elements must have a value that is a valid URL potentially surrounded by spaces.

On the other hand, this requirement applies for how to parse the `href` attribute applies to the web browser conformance class and not to the web developer conformance class:

> When a user follows a hyperlink created by an element subject, optionally with a hyperlink suffix, the user agent must run the following steps:
>
> …
>
> 9. Parse the URL given by subject's href attribute, relative to subject's node document.

Note in particular that the requirement for web developers can be “stricter” than the possible syntaxes that will result in the same behavior in web browsers. This might be done to help web developers catch mistakes, or to allow for future extensions to the language, while at the same time ensuring compatibility with existing web content. This is common in HTML, but can be confusing at first.


##### Definition

A definition is a specification shorthand for a longer piece of text, similar to the glossary of terms at the beginning of this guidebook. For example:

> Hyperlink:
>
> These are links to other resources that are generally exposed to the user by the user agent so that the user can cause the user agent to navigate to those resources, e.g. to visit them in a browser or download them.

In this example, the HTML standard is defining what a hyperlink is, so that it can be referenced later.


##### Algorithm

An algorithm is a recipe for how a browser should do something. Algorithms describe the control flow that a user agent implements. For example:

> The activation behavior of `a` elements that create hyperlinks is to run the following steps:
>
> 1. If the target of the click event is an img element with an ismap attribute specified, then server-side image map processing must be performed, as follows:
>
> ….
>
> 2. Follow the hyperlink or download the hyperlink created by the a element, as determined by the download attribute and any expressed user preference, passing hyperlink suffix, if the steps above defined it.

In this example the HTML Standard is specifying the activation behavior algorithm. You can see how the “definition” for Hyperlink is used here.


##### Requirement

A requirement is something that the web developer or web browser needs to do in order to conform to the specification. For example:

> If the itemprop attribute is specified on an `a` element, then the href attribute must also be specified.

This is a requirement for web developers (to omit the href attribute if `itemprop` is specified). This requirement does not say anything about what web browsers have to do if this requirement were to be violated. There is no implicit relationship between requirements for one conformance class to requirements for another conformance class.

Requirements typically use words like “must”.


##### Statement of Fact

A statement of fact is a piece of prose that makes a claim about the state of things around has no requirements, but is useful as context. For example:

> The level of stress that a particular piece of content has is given by its number of ancestor em elements.

In this example, the statement of fact helps explain the concept further by spelling out the implications of a requirement elsewhere in the specification.


##### Example

An example is a block of prose which shows how the technology being specified is intended to be used. For example:

> If a site uses a consistent navigation toolbar on every page, then the link that would normally link to the page itself could be marked up using an a element:
>
> `<li> <a href="https://foobar.com">The Greatest Website</a> </li>`
>
> `<li> <a>Examples</a> </li>`

In this example, we are showing an `a` element, both with and without an href attribute to orient readers to how the technology could be used.


##### Note

A note is a type of prose used to further expand on a technology with making a statement of fact. Notes are typically styled differently than statements of fact. For example:

> Note: The href attribute on a and area elements is not required; when those elements do not have href attributes they do not create hyperlinks.

In this example we are explaining that an `href` attribute is not necessary in order to have a valid anchor tag.


##### Warning

A warning is a piece of prose that calls out a specified technology that has dangerous potential implications for web compatibility, security, user privacy, etc. For example:

> Warning: This algorithm is intended to mitigate security dangers involved in downloading files from untrusted sites, and user agents are strongly urged to follow it.

In this example we see a warning that comes after the algorithm for downloading a hyperlink. That algorithm has steps in it to protect users, this warning encourages implementers to follow them.


##### Issue

An issue is like a “TODO” for a spec editor. It identifies a part of the spec that still needs fleshing out, or to be remediated because of other issues, like web compatibility, etc. For example:

> Issue: This algorithm is amenable to being generalized to work on all hyperlink elements. See Bugzilla bug 1234.

In this issue, we see the editor suggesting future work to generalize the algorithm it comes after.


### Testing



*   Writing a test plan - which involves mapping out all of the things that are interesting to test
*   Ref tests
*   Testharness.js test
*   Manual tests (i.e for a11y features)
*   Making a PR
    *   Referencing other relevant issues
    *   Getting a review


### Filing bugs on a Browser

Browser implementers are more likely to implement a proposed change if there is a bug reported for the change in their bug tracker. Therefore, filing a bug for each browser engine that should be changed is an important step.

Here are links for filing a new bug for each major browser engine:

* [Gecko](https://bugzilla.mozilla.org/enter_bug.cgi?product=Core)
* [WebKit](https://bugs.webkit.org/enter_bug.cgi?product=WebKit)
* [Chromium](https://crbug.com/new)

Before filing a bug, search the bug tracker if there is already a bug filed for the same thing. If you find one, you can add a comment to that bug instead of filing a new bug. If you can't find anything, or if you find something that is related but not exactly the same bug, then file a new bug. Don't worry if your bug gets marked as a duplicate, that is common and not a big deal.

The default template typically asks for steps to reproduce, on the assumption that the bug report needs reproduction and debugging of the browser to understand what the actual bug is. For bugs asking to implement a specification change, it might not always add clarity with reproduction steps. If you have a specification issue that explains the problem, and a pull request (PR) for a proposed specification change and a PR for a web-platform-tests test case, then the browser bug can often just briefly explain the problem and then link to the relevant specification issue and the PRs.

Make sure to write a clear summary of the bug. The summary should briefly but clearly say what the bug is.

Here are some good examples:

* [Change DOMQuad bounds to getBounds() as per specification](https://bugzilla.mozilla.org/show_bug.cgi?id=1454622)
* [Remove `<keygen>`](https://bugs.webkit.org/show_bug.cgi?id=167018)
* [fieldset should have min-inline-size instead of min-width in UA stylesheet](https://bugs.chromium.org/p/chromium/issues/detail?id=874053)
* [innerHTML serialization for javascript: URL attribute doesn't conform to the specification](https://bugs.chromium.org/p/chromium/issues/detail?id=927164)

When you have filed browser bugs, link to them from the specification PR.


## Step by step guide to fix a W3C or WHATWG bug


### 1. Select a bug

The first step in working on a change to the web platform is to identify a bug you want to work on. There are many different kinds of outcomes you can expect to have when contributing to the web platform and the type of bug you select will influence this.

Depending on the bug you select, you might end up suggesting a change to a specification, submitting a test to web-platform-tests, and reporting a bug on two different browsers. Or, you might find that the bug is in the browsers, and all that is needed is a report to the browsers and a test to guarantee the right behavior. There might be a bug only in the specification, and you might only need to submit a spec change. Or perhaps the spec is correct, and matches the behavior of all the browsers, but there is a missing test, in which case you’ll be tasked with writing the test and notifying everyone that it exists. All versions of this, and the many other possible permutations are all valid forms of contribution.

When selecting a bug, it’s always a good idea to ask a specification editor. If you have an idea of which technology area that you’d like to work on, you can open the specification for that technology, and contact one of the editors listed at the top of the specification.


#### Types of Bugs

It is also a good idea to familiarize yourself with the types of bugs we deal with when contributing to the web. Here is a list of the kinds of bugs you might run into, and the impact they’ll have on what kind of work you’ll be doing


##### Clarification bugs

These are bugs where the main work is clarifying what the specification says. Often times browsers will agree on a behavior, and the relevant specification will be inaccurate, or underspecified for the correct behavior. If you want to dive into the spec and spec tooling without digging into browsers, this is the type of bug for you. Whatwg/html and and csswg-drafts maintain lists of bugs in his category:



*   [https://github.com/whatwg/html/labels/clarification](https://github.com/whatwg/html/labels/clarification)
*   [https://github.com/w3c/csswg-drafts/labels/Needs%20Example%20or%20Figure](https://github.com/w3c/csswg-drafts/labels/Needs%20Example%20or%20Figure)


##### Interoperability bugs

Interop bugs deal with situations in which browsers behave differently from each other, and the specification either agrees with one or two, or requires a behavior that is not implemented anywhere, or is not clear about the correct behavior. If you want to do research into how most websites behave, and determine what is web compatible, this is the type of bug for you. Whatwg/html and and csswg-drafts maintain lists of bugs in his category:



*   [https://github.com/whatwg/html/labels/interop](https://github.com/whatwg/html/labels/interop)
*   [https://github.com/whatwg/html/labels/needs%20compat%20analysis](https://github.com/whatwg/html/labels/needs%20compat%20analysis)
*   [https://github.com/w3c/csswg-drafts/labels/Needs%20Data](https://github.com/w3c/csswg-drafts/labels/Needs%20Data)


##### Normative changes, additions and removals

Some issues are about changing how an existing feature works, or adding a new feature or removing one that is already specified. The WHATWG has a defined process for changes, additions and removals[^23]. In the W3C it depends on the Working Group, but usually the same principles will apply there as well. This kind of issue might require both research for web compatibility impact as well as building consensus.


#### Additional Resources

There are a number of resources that recommend good first issues:



*   whatwg/html maintains a list of “good first issues” which the maintainers think would be a good place for a first time contributor to html to get started: [https://github.com/whatwg/html/labels/good%20first%20issue](https://github.com/whatwg/html/labels/good%20first%20issue)
*   The CSS WG maintains a list of “help wanted” issues: [https://github.com/w3c/csswg-drafts/labels/Help%20Wanted](https://github.com/w3c/csswg-drafts/labels/Help%20Wanted)
*   The Web Platform Tests project maintains a list of “good first issues”, too: [https://github.com/web-platform-tests/wpt/labels/good%20first%20issue](https://github.com/web-platform-tests/wpt/labels/good%20first%20issue)


### 2. Verify the bug



1. Test what browsers do today


### 3. Communicate about your work



1. Tell the community and editor that you want to work on this, publicly


### 4. Figure out the “right” behavior



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


### 5. Present research



1. suggest the fix you have in mind  in issue on github
2. Ask editors and implementers if they agree (check the specification).
3. Ask implementers
    1. Look at source code of browser and git blame to identify implementer
    2. Look at the bug database and search for the feature.
    3. Email [simon@bocoup.com](mailto:simon@bocoup.com) to ask who to talk to.


### 6. Change the spec

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
    11. Say what issue this is fixing with “fixes: #1234”.
8. Make a pull request
    12. ...
9. Ipr commitment
    13. Create a w3c account [TODO ADD LINK]
    14. link your github account to your w3c account - E.g. [https://labs.w3.org/repo-manager/pr/id/w3c/csswg-drafts/3735](https://labs.w3.org/repo-manager/pr/id/w3c/csswg-drafts/3735) [TODO FIGURE OUT AND EXPLAIN HOW THIS WORKS ACROSS SPECS[
    15. For whatwg, sign participant agreement
10. Request review
11. Address review comments


### 7. Write a test



1. Write a web platform test
2. There are different kinds of tests
    1. Testharness.js tests - anything that you can verify from javascript
    2. Ref tests - anything that can be verified by taking a screenshot from the test and comparing it to a different document with identical rendering, but done in a different way.
    3. Historical tests (negative tests; test that removed features are _not_ supported)
    4. Docs at web-platform-tests.org
3. Find a similar test to figure out how to write that kind of test and where to put it
    5. Clone wpt repo and do a git grep.
    6. If you are testing activeElement, try `git grep activeElement`.
4. Make a pull request with test
    7. PR should point to spec change
    8. “This follows spec change foo”
    9. Request review
    10. Address review comments
    11. Update your spec bug/PR with a reference to the test


### 8. Report and document buggy behavior



1. When the test is merged, or ready to be merged
2. File browser bugs
    1. Link for chromium
    2. Link for webkit
    3. Link for gecko
3. Document issue on web developer resources, e.g. [the Mozilla Developer Network](https://developer.mozilla.org)


## Paths For Growth


### Continue Squashing Bugs

What you’ve learned how to do in this guide will serve you in building a career around maintaining the web platform.


### Analyze Web Compat Bugs

The Web Compat Project is a place to report bugs for websites that work in one browser but not in another browser. This is a good place to get started with reproducing bugs, analyze why it happens, doing site outreach and filing browser bugs. [https://webcompat.com/contributors/reproduce-bug](https://webcompat.com/contributors/reproduce-bug)


### Become a WPT Maintainer


### Become a Spec Editor

These are the steps to take to become a spec editor.


### Become a Browser Implementer

Impossible to spell :D.


### Become a Working Group Chair

What is the path for this?


### Start a Community Group

If you’re interested in facilitation and consensus building without the overhead of editing a specification, starting a CG is a great way to go. Anyone can start a community group at the W3C. Community groups are great places to flesh out a technology area and it’s intersection with the web. Community groups can be used in many different ways. One very effective way to work is to start a CG, and as the CG Chair invite people from outside the W3C in the domain of the CG to give feedback on their pain points for the web. Then take those pain points, synthesize them into use cases and bring them to existing working groups to include in their existing standardization workflows. In 2011, the games community group did just this, producing a set of use cases and bringing them to various working groups to be addressed. Around 8 years later nearly all of the game developer pain points for the web have been addressed. You can one of the initial Games CG reports from 2011 here:   [https://docs.google.com/a/bocoup.com/document/pub?id=1fs1hpZvP05ViEWtaLSmNQUV_PW2jCWS5Oe2GAdBKgl0](https://docs.google.com/a/bocoup.com/document/pub?id=1fs1hpZvP05ViEWtaLSmNQUV_PW2jCWS5Oe2GAdBKgl0)


## Case Study Examples


### :defined CSS Pseudo-class

[[selectors-4] :defined](https://github.com/w3c/csswg-drafts/issues/2258)

**Problem**

...

**Solution**

…

[https://labs.w3.org/repo-manager/pr/id/w3c/csswg-drafts/3735](https://labs.w3.org/repo-manager/pr/id/w3c/csswg-drafts/3735)

**Impact**

…


### Search Event

[The "search" event](https://github.com/whatwg/html/issues/667)

**Problem**

Chromium and Safari both offered a special feature for [the "search" input element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/search), but Firefox and Edge did not. Chromium developers were working to determine if they could remove the feature without breaking any existing websites, but there had been no word from Safari developers. In the meantime, web developers could accidentally make forms that worked in some browsers but not in others.

**Solution**

We alerted the Safari developers of the incompatibility by submitting [a report to the WebKit bug tracker](https://bugs.webkit.org/show_bug.cgi?id=195818). We also created a test for the web-platform-tests project, a so-called "historical" test which asserted that the feature was _not_ available.

**Impact**

The Safari team has acknowledged the issue and filed it among their upcoming tasks. **BEGIN TENTATIVE** The web-platform-tests project has accepted the new test, and that test has been automatically transmitted to the Chromium project, where it serves as a reminder that the non-standard feature continues to reduce interoperability. **END TENTATIVE**


## Testimonials


### Elika Etemad (fantasai)

Interview fantasai about how they got started.


### Ian Hickson (Hixie)

Interview Ian Hickson about how they got started.


### Simon Pieters (zcorpan)

Interview zcorpan about how they got started.


### Anne van Kesteren (annevk)

Interview Anne van Kesteren about how they got started.


### Boris Zbarsky (bz)

Interview Boris Zbarsky about how they got started.


## Directory listing of people to talk to

When working on fieldset interoperability, Simon spoke with the following 15 people:


### Implementers



*   Google
    *   Foolip - chromium
    *   Tkent - chromium
    *   Christian Deisinger - chromium
    *   Eae - chromium (layout lead)
    *   Morten Stenshorne - chromium
*   Apple
    *   Maciej - webkit
    *   Wenson Hsieh
    *   Simon Fraser
*   Mozilla
    *   Annevk - gecko
    *   Boris - gecko
    *   Mats Palmgren - mozilla
*   Microsoft
    *   John Jansen - Edge
*   Bocoup
    *   Rick Waldron
    *   Leo Balter
    *   Valerie Young
    *   Simon Pieters
*   Igalia
    *   Dan Erenberg


### Spec Reviewers



*   CSSWG
    *   Fantasai - csswg
    *   Tab atkins - csswg
*   HTML
    *   Dominic denicola - spec review


### Test Reviewers



*   Gsnedders
*   Mike Pennisi - [mike@bocoup.com](mailto:mike@bocoup.com)


### General Coaches



*   Simon Pieters - [simon@bocoup.com](mailto:simon@bocoup.com)




## Glossary of Terms and Jargon



*   **API** - Application Programming Interface (like a GUI for computers).
*   **ARIA** - Accessible Rich Internet Applications.
*   **CSS** - Cascading Style Sheets, the collection of technologies used to change how elements on a web page look.
*   **CG** - Community Group (at the W3C).
*   **CLA** - Contributors License Agreement
*   **Spec** - short for specification.
*   **Ecma** - The name of the standards body that makes ECMAScript, the standard for the JavaScript programming language.
*   **HTML** - Hypertext Markup Language, the collection of technologies for structuring and linking between documents on the web.
*   **HTTP** - Hypertext Transfer Protocol
*   **HTTP Archive** - A database of the HTML, CSS and JS response bodies and other data of the top several million1,000,000 pages, collected twice per month. Useful for figuring out how web developers use the web, and what changes will be compatible.
*   **IPR** - Intellectual Property Rights
*   **IRC** - Internet Relay Chat - how people chat with each other about web standards (instead of slack).
*   **JS** - JavaScript - the programming language used to manipulate the behavior of web pages, and to write programs that can run on web pages and in node.js.
*   **Living Standard** -
*   **Node Global** - the collection of built-in APIs in node.
*   **Normative** - content in a specification that contains requirements or is referenced by something that is normative.
*   **Non-normative** - content in a specification that is not normative, e.g. examples or statements of fact.
*   **Prose** - written words.
*   **PR** - pull request (in GitHub).
*   **TC** - Technical Committee (at Ecma).
*   **TSC** - Technical Steering Committee
*   **UA** - User Agent - a piece of software that acts on behalf of the user: i.e. a web browser.
*   **W3C** - World Wide Web Consortium.
*   **WG** - Working Group (at the W3C).
*   **WHATWG** - Web Hypertext Application Technology Working Group.
*   **WPT** - web-platform-tests
*   **Window** - the main global object in a web page.

<!-- Footnotes themselves at the bottom. -->
## Notes

[^1]:
     Simon Pieters, Mike Pennisi, Leo Balter, Valerie Young, Boaz Sender, future contributors here

[^2]:
     Forming of the WHATWG:

[^3]:
     Opera/Mozilla Position Paper: [https://www.w3.org/2004/04/webapps-cdf-ws/papers/opera.html](https://www.w3.org/2004/04/webapps-cdf-ws/papers/opera.html)

[^4]:
     Beginning of the HTML living standard: [https://blog.whatwg.org/html-is-the-new-html5](https://blog.whatwg.org/html-is-the-new-html5)

[^5]:
     WHATWG Steering Group Agreement: [https://whatwg.org/sg-agreement](https://whatwg.org/sg-agreement)

[^6]:
     Repository for the HTML Standard: [https://github.com/whatwg/html](https://github.com/whatwg/html/)

[^7]:
     W3C and WHATWG collaboration announcement: [https://www.w3.org/blog/2019/05/w3c-and-whatwg-to-work-together-to-advance-the-open-web-platform](https://www.w3.org/blog/2019/05/w3c-and-whatwg-to-work-together-to-advance-the-open-web-platform/)

[^8]:
     Node TSC: [https://github.com/nodejs/TSC](https://github.com/nodejs/TSC)

[^9]:
     Unicode 12.0.0 [http://www.unicode.org/versions/Unicode12.0.0/](http://www.unicode.org/versions/Unicode12.0.0/)

[^10]:
     Bi-directional text: [http://unicode.org/reports/tr9/](http://unicode.org/reports/tr9/)

[^11]:
     Rules for line breaking: [http://unicode.org/reports/tr14/](http://unicode.org/reports/tr14/)

[^12]:
     WCAG 2 FAQ: [https://www.w3.org/WAI/standards-guidelines/wcag/faq/#iso](https://www.w3.org/WAI/standards-guidelines/wcag/faq/#iso)

[^13]:
     WHATWG IPR Policy: [https://whatwg.org/ipr-policy](https://whatwg.org/ipr-policy)

[^14]:
     W3C RAND: [https://www.w3.org/TR/2001/WD-patent-policy-20010816/#def-RAND](https://www.w3.org/TR/2001/WD-patent-policy-20010816/#def-RAND)

[^15]:
     EPUP3 example of RAND License: [https://www.w3.org/2017/02/EPUB3CGcharter](https://www.w3.org/2017/02/EPUB3CGcharter)

[^16]:
     W3C Patent Policy: [https://www.w3.org/Consortium/Patent/](https://www.w3.org/Consortium/Patent/)

[^17]:
     WHATWG Participant Agreement: [https://participate.whatwg.org/agreement](https://participate.whatwg.org/agreement)

[^18]:
     _Based on notes from [[RETRO] Mozilla Fieldset Interop Retrospective SoW#3276.2](https://docs.google.com/document/d/1G_YfLMgE7cj3K2U2DDbX51RfIwwwUI7CzQEZleNEX_g/edit#bookmark=id.ek85y8jpf2oy)_

[^19]:
     Fieldset interoperability project: [https://bocoup.com/work/fieldset-interoperability](https://bocoup.com/work/fieldset-interoperability) and [https://bocoup.com/blog/the-state-of-fieldset-interoperability](https://bocoup.com/blog/the-state-of-fieldset-interoperability)

[^20]:
     List of open HTML issues: [https://github.com/whatwg/html/issues](https://github.com/whatwg/html/issues/)

[^21]:
     HTML Standard Hyperlink: [https://html.spec.whatwg.org/multipage/links.html#hyperlink](https://html.spec.whatwg.org/multipage/links.html#hyperlink)

[^22]:
     HTML Standard a element: [https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-a-element](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-a-element)

[^23]:
     WHATWG Working Mode: [https://whatwg.org/working-mode#changes](https://whatwg.org/working-mode#changes)

