Web Platform Governance
-----------------------

.. image:: _static/img/wpcg-venn-diagram.svg
  :alt: Venn diagram where one set is the Browser (W3C, WHATWG) with HTML, CSS, ARIA and the Window Object; the other set is Node.js (OpenJS) with the Node Global, and the overlap is JavaScript (ECMA 262, 402, 404).

W3C
~~~

The W3C (World Wide Web Consortium) is an international standards body, with 60 or so employees based out of four universities; MIT (Massachusetts Institute of Technology), ERCIM (European Research Center for Informatics and Mathematics), Keio University in Japan and Beihang University in Beijing, China.
The W3C has 450 member companies which send delegates to WGs (working groups).
Working groups oversee specifications.
There is an annual meeting of all working groups hosted in a different city each year called TPAC (Technical Plenary and Advisory Committee meetings week).

The W3C working groups oversee and are leading the charge on technologies that impact developers and users everyday, like :term:`SVG`, :term:`CSS`, :term:`ARIA`, and Web Payments. `35 working groups, 10 interest groups <https://www.w3.org/Consortium/activities>`__, and `over 300 community and business groups <https://www.w3.org/community/groups/>`__ advance technologies from idea to standard, with over `250 active specifications <https://w3c.github.io/spec-dashboard/report.html>`__ tracked.

WHATWG and HTML
~~~~~~~~~~~~~~~

WHATWG (Web Hypertext Application Technology Working Group) is an independent group of standards developers that `split off from the W3C in 2004 <https://whatwg.org/news/start>`__ based on disagreements about the future of HTML.
The W3C wanted to stop working on HTML, and continue working on XHTML 2, a new version of XHTML that was by design not backwards compatible with HTML 4.01 or XHTML 1.x.
WHATWG saw proprietary technologies like Flash and Silverlight as threats to an open and royalty free web, and wanted to make the future of web standards `include a story for web application development <https://www.w3.org/2004/04/webapps-cdf-ws/papers/opera.html>`__.
WHATWG did this in HTML, and was successful.
WHATWG split off, and continued working on what briefly became known as HTML5.

In 2007, the W3C saw the importance of HTML, and started working on HTML5 as a downstream fork of WHATWG’s HTML, initially with both groups working together from a single source document to produce identical specifications from the Table of Contents onwards.
Over time, the two groups disagreed on both technical details and goals for the specification, where the W3C prioritized creating a "finished" version of HTML5 and WHATWG prioritized continuous improvement of bug fixes and new features.

In 2011, the `WHATWG stopped versioning HTML in favor of a living standard <https://blog.whatwg.org/html-is-the-new-html5>`__.
HTML5 is still a popular marketing term for "modern web technology", but no longer refers to a technology that people are working on today.

In late 2017, the WHATWG formalized its operating principles under a `steering group agreement <https://whatwg.org/sg-agreement>`__ for cooperation between Google, Apple, Mozilla and Microsoft.
Before that, the WHATWG was a loose group of interested parties and did not have any patent policy, which prevented some companies from contributing formally (in particular Microsoft).

In 2018, the W3C invited WHATWG back to run the HTML standard.
The main HTML specification is now worked on under the `whatwg/html repository <https://github.com/whatwg/html/>`__.
In May 2019, the details of this arrangement were worked out, and the `W3C and WHATWG agreed to collaborate <https://www.w3.org/blog/2019/05/w3c-and-whatwg-to-work-together-to-advance-the-open-web-platform/>`__ on a single version of the HTML and DOM specifications.

The WHATWG is leading work on things like HTML, Compatibility, Console Object, DOM, Encoding, Fetch, Fullscreen, URL and XHR.

Other Standards Bodies and Foundations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In addition to the W3C and WHATWG, there are many other standards bodies that make web platform technologies.

Ecma International
^^^^^^^^^^^^^^^^^^

Ecma (formerly ECMA - the European Computer Manufacturing Association) is a standards body based in Geneva Switzerland.
Ecma has 4 full time employees, and several active TCs (Technical Committees), most notably, TC39 (the 39th technical committee) which writes three specifications: Ecma-262, Ecma-402, Ecma-404 (collectively ECMAScript).
These are the underlying specifications for the JavaScript programming language which is implemented in web browsers and :term:`Node.js`.
We’d really like to get more into how ECMAScript is standardized, but this is material for a separate guide, or potentially a future version of this guide.

OpenJS Foundation
^^^^^^^^^^^^^^^^^

The OpenJS Foundation is a US-based Trade organization home to several dozen open source JavaScript projects including :term:`Node.js`.
Node.js is a de facto standard with a more ad hoc process for adding features than other technologies.
OpenJS is not a standards body, but it does have a governance model for adding features to Node.js.
Additionally, the OpenJS Foundation sends delegates from its projects to represent web developers at the W3C and Ecma International.
The `Node TSC <https://github.com/nodejs/TSC>`__ (Technical Steering Committee) operates within the OpenJS foundation and oversees additions and changes to the :term:`Node Global`.

The :term:`Node Global` is a set of built in :term:`APIs <API>` on top of the JavaScript programming language which adds useful functionality that developers use to make software.
The Node Global is similar to the ``window`` object in browsers, but geared toward server side software, and build tools for web developers.
Many web developers use Node.js to manage their projects’ build processes.
Node.js share several :term:`APIs <API>` with web browsers, such as ``URL``, ``fetch``, and ``TextDecoder``.
Node.js is even known to run some of the web-platform-tests tests to ensure interoperability for the features that Node.js and browsers share.

IETF
^^^^

The IETF is a loose organization with no formal membership.
This group develops the :term:`HTTP (Hypertext Transfer Protocol) <HTTP>` standard, which web browsers use as the protocol for transferring web pages.

Unicode Consortium
^^^^^^^^^^^^^^^^^^

The Unicode Consortium defines the `Unicode Standard <http://www.unicode.org/versions/Unicode12.0.0/>`__, the universal character set that is used for the web.
New versions of the Unicode Standard can include new characters such as new emoji.
Unicode also defines the UTF-8 and UTF-16 encodings.
These are now also defined in the WHATWG Encoding Standard, for completeness sake.
Unicode also has recommendations on text-related issues such as `handling bi-directional text <http://unicode.org/reports/tr9/>`__ and `rules for line breaking <http://unicode.org/reports/tr14/>`__ which are important for the web because following best practices for multilingual text helps users to read and understand text better.

IEEE
^^^^

In their own words, "IEEE is the world's largest technical professional organization dedicated to advancing technology for the benefit of humanity." Of the many and diverse technical standards they develop, you may be familiar with the IEEE 802.11 standard (defining the WLAN protocol), or the IEEE 754 Standard for Floating-Point Arithmetic.
The IEEE have working groups and their own process for developing standards.

ISO
^^^

ISO/IEC JTC1 was formed as a merger of three subcommittees of international standards bodies to avoid duplicative or incompatible standards between several *national* standards bodies.
The group's purpose is to develop, maintain, and promote standards in the fields of information technology and information and communications technology.
JTC1 subcommittees and working groups are responsible for more than 2,600 published standards in areas such as programming languages, character sets, and multimedia.
Standards organizations such as the W3C are able to publish ISO standards through a working relationship with ISO/JTC1.

Web standards are primarily specified in other places, like the W3C and Ecma International, and come to the ISO for international de jure standardization.
That means governments can require these standards for policy and procurement purposes.

For example, the W3C Web Content Accessibility Guidelines 2.0 (WCAG 2.0) `is an ISO standard <https://www.w3.org/WAI/standards-guidelines/wcag/faq/#iso>`__, which benefits countries and organizations that can more easily adopt ISO standards.
WCAG 2.0 explains how to make web content more accessible to people with disabilities.

Khronos
^^^^^^^

Khronos is the name of the standards body that specifies WebGL, the low level graphics card programming interface of the web.
This :term:`API` can be used with the HTML ``canvas`` element, defined by the WHATWG.

IANA
^^^^

The Internet Assigned Numbers Authority (IANA) coordinate the DNS Root (including managing Top Level Domains), IP addressing, and other Internet protocol resources.
