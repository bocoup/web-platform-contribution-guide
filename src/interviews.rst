Interviews
----------

Valerie Young (spectranaut)
~~~~~~~~~~~~~~~~~~~~~~~~~~~

**1. Tell us about the role you play in web standards work - what, where, and how are you contributing?**

I am a member of TC39, the 39th technical committee of the Ecma International, which is responsible for maintaining the `JavaScript standard <https://github.com/tc39/ecma262/>`__.
At the time of this writing (2020), I am also one of the editors of `ECMA-402 <https://github.com/tc39/ecma402>`__, the `internationalization extension <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global__Objects/Intl>`__ to the JavaScript language, the development of which falls under a Task Group of TC39.
As an editor, I review new features and help to fix parts of the spec that are vague or inconsistently formatted.

Additionally, I help maintain `Test262 <https://github.com/tc39/test262/>`__, a test suite for testing conformance of a JavaScript engine (such as a browser or Node) with the ECMA-262 standard.
I also work on `test262.report <https://test262.report/>`__, a website that runs test262 on all the major JavaScript engines and reports on the results.

Outside of JavaScript, I work on the `WAI-ARIA Authoring Practices <https://github.com/w3c/aria-practices>`__, which aims to be a resource for developers trying to make accessible, interactive modern websites using HTML, CSS and ARIA.
ARIA is an extension to HTML and SVG that can be used to provide necessary information to users who are navigating a website using a screen reader.

**2. How did you first get into web standards work?**

When I was in college, I studied physics and expected to go into physics research, but my first programming class completely derailed my plan.
I immediately found programming enjoyable, and was impressed with the incredible way in which computers and the internet allowed people to collaborate and share information freely across great distances.
I wanted to be involved in the creation of such empowering technologies!

My first job out of college was web programming for an electronic medical record company.
I left a few years later to work on the linux operating system Debian through `Outreachy <https://www.outreachy.org/>`__, a program that funds women and minorities to work on free software projects.
There I got my first experience in testing, working on the `Reproducible Builds <https://reproducible-builds.org/>`__ project (the goal: test all of Debian for "reproducibility" -- every binary Debian ships should be reproducible bit-for-bit by any curious developer!).

Eventually, I needed a regular job again, so I began looking for a work place where I could contribute to free and open source software projects.
Luckily, I found Bocoup, a software consulting company that specializes in reliability, standards and testing of the web platform.
In my first interview I was exposed to the ECMAScript specification and the test262 test suite, and I thought, "This is cool, I would totally work on this."
It is through my work at Bocoup that I got involved in all of the answers to question 1!

**3. What skills do you rely on most in your work?
Which do you find most important for success?**

First, patience.
Writing and reading and understanding specifications, writing tests of specifications, getting to the bottom of a web platform bug
(is the bug in the specification?
the implementation?
the test I wrote???)
can take a while.
You have to have patience, and let yourself slowly build up your understanding of all the technologies involved.
Take notes, draw diagrams, experiment with code.

Second, courage.
After all these years, I still get nervous asking a question to strangers online, on GitHub or IRC.
I'm even more nervous when I open a PR for something I know I need more feedback on.
Some people need more or less courage, depending on where they are starting from, but I definitely still need it.

Third, all the skills and knowledge of a regular programmer.
We are working on technologies for programmers.
It's nice to work on a product when you are the consumer!

**4. What advice would you have given to your younger self when you were starting out?**

You will be rewarded for your courage and humility!
Keep going!

Also, you will find yourself in committee meetings with mostly men who have much more experience than you (more experience on the committee, specifically) -- this can be intimidating.
Remember there are good people on those committees, people who are excited to have more diversity, excited to have you contribute, and want to help you succeed.
Focus on those people when you ask questions and offer opinions!

**5. Why do you think web standards work is important?
What's at stake?**

I initially thought free and open source software was the most important way to keep technology democratic.
But really, it keeps technology do-ocratic: whoever does the most work gets the most say.
Sometimes this is good, and sometimes it is bad.

Web standards are another way to democratize the creation of technology, but more intentionally.
The committees are structured to make collaborative decisions and to try to prevent any one person or company's individual motivations from overwhelming the best solutions to a problem.
The W3C and TC39 are both increasingly reaching out for community involvement from others besides those who make it onto the committee through their jobs or expertise.
If you are interested in helping the democratic evolution of the web in this way, I encourage you to join.

Simon Pieters (zcorpan)
~~~~~~~~~~~~~~~~~~~~~~~

**1. Tell us about the role you play in web standards work - what, where, and how are you contributing?**

I am one of the editors of the HTML standard.
I have contributed in particular to images, video, form controls, rendering, and the HTML parser.

I try to improve interoperability between browser engines,
and at the same time address web developers' pain points and improve accessibility.

I analyze web compatibility,
identify pain points for web developers,
discuss with implementers to understand their requirements,
design solutions,
write specification prose,
write conformance tests,
review specification changes and tests,
find, report, and sometimes fix bugs in specifications and implementations.

**2. How did you first get into web standards work?**

I first got interested in web design after a class in web design at school, around age 17.
I learned that there were multiple web browsers, but sometimes web sites would only work correctly in one of them.
I quickly ran into differences between browsers.
This was when before Firefox was called Firefox, but I learned that this browser was better than Internet Explorer 6.0 at following the web standards.

This was an interesting space.
So much to explore.
I would read tutorials, blogs, specifications, and discuss front-end web development in forums.
Eventually I learned by helping professional web developers who were asking for advice in these forums.
Following the web standards first and applying hacks and workarounds for IE6 was challenging and fun.

I did a lot of "view source" to find out how things were done.
I would read the HTML (or XHTML) and CSS source code of w3.org.
I recall one day I was viewing the W3C homepage and in the sidebar it was showing a graybeard who was working with W3C specifications,
and I thought to myself "I wonder what it would be like to have this as a job".
A split second later I snapped back to reality and realized that was never going to happen.

I started studying "Innovation and Product Design" at Mälardalens Högskola in Sweden.
I was going to become a product designer -- designing physical products.
Web development was still a strong interest, but it shifted more towards web standards and web browsers.
I read a document by Ian Hickson about `how to minimize a test case <https://www.hixie.ch/advocacy/writing-test-cases-for-web-browsers>`__
and started reporting bugs to browsers.
I was chatting with Anne van Kesteren in ICQ about why CSS didn't have a parent selector.

In 2005, I subscribed to the WHATWG mailing list, and started to participate in discussions about this exciting next version of HTML.
One of my earliest contributions was `suggesting the new doctype <https://annevankesteren.nl/2005/07/html5-doctype>`__.

In 2007, I applied for a summer internship at Opera Software in Linköping, to work on writing tests for HTML5.
I got the job, and after the internship I was offered a full-time position to work on Quality Assurance for the DocXS (Documents, XML, and Scripting) team.
I accepted the offer and dropped off University.

**3. What skills do you rely on most in your work?
Which do you find most important for success?**

Communication is critical:
In my case, this is almost always asynchronous written communication.
This allows me to think things through and do my research before responding to a question.

Research and analytical skills:
Making decisions in web standards often requires research into what browsers currently do and what web content expects to happen.

Literacy with web standards:
Ability to read and write a specification correctly.

Imagination:
Ability to imagine the behavior of a complex system or an algorithm.

Creativity:
Coming up with novel solutions.
Identifying interesting cases to test.

**4. What advice would you have given to your younger self when you were starting out?**

Maybe to study Computer Science, which I have not done.
I think it would have been more relevant knowledge for me (for example, algorithms and data structures), given what I ended up working with.
On the other hand, maybe I would end up on a completely different career path?

I think my advice would be to have the courage to change what to study when I realized what my interests were.

**5. Why do you think web standards work is important?
What's at stake?**

The web, in principle, gives anyone free speech and access to information.
No one entity has full control.

Throughout the lifetime of the web, it has been in competition with other information or application platforms that are often under control of one company.

Without working on web standards, the web would probably have been replaced completely by one or more of those,
enabling censorship and limitation of access to information.
