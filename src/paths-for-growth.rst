Paths For Growth
----------------

Contributing to the web platform can be a personally and professionally rewarding career.
What you’ve learned how to do in this guide will serve you in building a career maintaining the web platform.
If you haven't already done so, take a moment to read the :doc:`testimonials` section of this guide to learn more about the paths of other professionals in this field.
Then, consider taking the steps and learning the skills outlined in the `Skills <Skills>`_ chapter to get your own career off on the right foot.

Continue Squashing Bugs
~~~~~~~~~~~~~~~~~~~~~~~

No two bugs are ever exactly alike.
The more bugs you tackle, the more you will add to your repertoire of experiences and expose yourself to different specs and components of the web platform.

Try squashing different kinds of bugs -- clarification bugs, interoperability bugs, or bugs in tooling all teach something a little different about how the platform is put together.
Continue to practice verifying and reproducing bugs, and thoroughly researching why these might be happening.
Finally, these skills give you a solid opportunity to practice improving your communication -- the better you are able to communicate about your work and research, the quicker you'll be able to conquer these bugs!

Analyze Web Compat Bugs
~~~~~~~~~~~~~~~~~~~~~~~

The Web Compat Project is a site that developers can use to report bugs they find on websites that work in one browser but not in another.
This is a good place to get started with reproducing bugs and analyzing why they happen.
In many cases, you'll need to communicate with the website's developers to let them know a bug has been found, and what they might be able to do to fix it.
In other cases, you may end up filing browser bugs.

The Web Compat Project has a well-defined process and a number of expert contributors to help you get started with these kinds of bugs.
You can `learn more about the process, and get started on your first Web Compat bug <https://webcompat.com/contributors/reproduce-bug>`__.

Join a web-platform-tests Team
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The web-platform-tests project (WPT for short) is an important part of ensuring that implementers are conforming to web specifications and not introducing regressions when they add new features.
In the :doc:`bug-guide` section of this guidebook, you learned how to write and submit different kinds of WPT tests.
There are thousands of tests, and thus plenty of opportunities to dive deep into certain types of tests, or tests for certain specifications.

The WPT project is also home to tools and infrastructure -- test runners, bots, servers, and more -- that keep WPT running smoothly.
Monitoring and maintaining this infrastructure is a critical part of WPT work, equally important as contributing tests.
As with testing, there are always opportunities to meaningfully support the web platform through infrastructure work.

Once you've mastered the process of fixing or implementing tests, or fulfilling infrastructure support needs, you may want to take on a bigger role by joining a team or administering a component of the infrastructure.
Anyone who puts in the effort to master the subject matter can join a WPT team, such as the 'reviewers' team, which reviews PRs for tests or infrastructure; or the 'wpt.fyi' team, which reviews contributions to `wpt.fyi <https://wpt.fyi/>`__ repositories.
These teams play an important role assessing, prioritizing, and triaging WPT issues.
They provide feedback to the WPT core team, and help onboard and mentor new contributors.
Conversely, you could volunteer to take on 'ownership' of a piece of infrastructure, like the wpt-pr-bot.
There are dozens of pieces to the puzzle, and myriad ways to help out.

To be successful, you'll really need your communication skills to be on point, and you'll need to be organized in your work and patient with others.
Testing the web platform is a complex task; these skills make it a little easier.

Become a Spec Editor
~~~~~~~~~~~~~~~~~~~~

If you find yourself drawn to certain domains, such as accessibility for example, you can also contribute to the web platform by working on those specifications.
For W3C and ECMA specifications, you will need to 'join' the working group or technical committee to contribute in an official capacity, but in most cases you can get started by participating in the conversations and issues happening wherever the spec is hosted on :term:`GitHub`.
For the WHATWG, your or your employer needs to sign the participation agreement to make direct contributions to the spec text.
Find the sections that are interesting and relevant to you, and start by introducing yourself, your use case(s), or see if there's an issue on the repository you can help solve.
Lastly, spend time learning the processes the group uses to make decisions and advance work.

Constructively engaging on those repositories, adding use cases, contributing tests, and filing or resolving issues will result in others viewing you as someone with expertise in the domain, and will enable you to join the working group or technical committee as an invited expert if your organization is not already a member of the W3C or ECMA.
If your organization is a member, you need to ask your W3C AC rep or ECMA Primary Contact to add you to the working group (your organization may have other steps they require you to take).
If you don't belong to a member company, you can ask the spec editor, working group chairperson, or W3C/ECMA staff contact to add you as an invited expert.

Specification editors are responsible for the accuracy of different versions of a specification.
It is very detail-oriented and process-driven work, so before you volunteer to take on such a role consider whether that will be something you like.
Talk to other spec editors, and make sure you understand how the requirements of the role will match up with your strengths and things you like to do.
Spec editors play a critical role in the success of the web platform, so the decision to become one shouldn't be taken lightly.
If you decide that it's something you want to do, it's a good idea to start out by apprenticing with the current editors so you get the hang of the work before volunteering to take on the top spot.

Become a Browser Implementer
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Another path you could take is to work on web implementations.
We often assume that this work is limited to browser vendors like Apple, Google, Microsoft, Mozilla, Opera, or Samsung, and indeed these organizations tend to consume the largest scope of web platform technologies.
Luckily the underlying engines that drive these browsers -- WebKit, Chromium, Gecko, and now Servo -- are all open source.
That means you can start contributing browser implementations or fixes *without* joining one of these companies.

As with other contribution examples we've provided in this guide, getting started requires a few important steps.
First, read the project's documentation, get the code, and build it.
If there's something you don't understand, ask for help in the project's irc channel -- if the documentation isn't clear, improvements are always welcome!
Finally, find a bug you want to fix, submit a patch, and ask for review.
To prepare for this kind of role, it's really helpful to know the languages that the implementation uses.
Most implementations are written in C++, and knowledge of Rust and JavaScript are also useful.

If you do want to join an organization to work on browser implementations full time, it's a really good idea to go through this process on your own once or twice.
This gets you familiar with the codebase and helps prepare you for what will likely be a rigorous interview process.
There are also other implementers in addition to the major browser vendors you may be interested in working with depending on what you find interesting.
For example, if you are interested in 'Web of Things' specs you could look at organizations like Bosch or Intel, which explore how to leverage web technologies for internet connected devices.
There are also browsers that use existing engines, but focus on specific concerns, as the Brave browser does with privacy.
Our organization, Bocoup, is a consulting firm which provides spec testing and tooling services.

Become a Working Group Chair
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The working group or technical committee chair is responsible for keeping the group's work on track, per its charter or scope documents.
This role can handle a variety of tasks, depending on the community built up around the work.
They may call meetings, keep repositories organized and issues triaged, prioritize tasks and workstreams, interface with implementers, plan new work or features, lead internal process and decision-making, maintain the group's tooling, work with W3C staff, prepare documents for horizontal review or publication... the list of responsibilities can seem endless, which is why most groups have co-chairs!

It's a good idea to be an active member of a working group community for some time before volunteering to chair.
To be successful in this role, you'll need to be able to build and maintain good working relationships.
You'll need to be able to help others work through disagreements and conflict, and you'll need a good understanding of the group's technical decision-making, historical contexts, and other dynamics that can influence the productivity of the group.
It takes a lot of time to gather this knowledge and experience, so think carefully before stepping into this role.
When you do, you'll find that it equally rewarding as it is challenging.

To prepare for such a responsibility, you can start out by volunteering for or chairing sub-committees or task groups within the working group.
This will help you get a sense of what the experience will be like in a lower-stakes setting.
It will also help you to get more comfortable with the standards-making process, which can really take some time to understand thoroughly.

Start a Community Group or Interest Group
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you’re interested in facilitation and consensus building without the overhead of editing a specification, starting a CG or IG at the W3C is a great way to go, and anyone can start one.
These groups are great places to explore and flesh out a technology area and how it intersects with the web.
In starting or joining a group, you can share your vision, ideas for possible solutions, look for use cases, and find other people who may have similar problems or interests, without the additional process or IPR rules a formal working group requires.

One possible path is to start a community group and invite people from outside the W3C who care about the domain you're exploring to give feedback on their pain points where that domain intersects with web.
Your community group can then take those pain points, synthesize them into use cases, and bring them to existing working groups to include in their standardization work.

In 2011, the Games Community Group did exactly this, producing a set of use cases and bringing them to various W3C working groups to be addressed.
By 2019, nearly all of the pain points the CG identified for web games developers had been addressed.
You can read one of the `initial Games CG reports from 2011 <https://docs.google.com/a/bocoup.com/document/pub?id=1fs1hpZvP05ViEWtaLSmNQUV_PW2jCWS5Oe2GAdBKgl0>`__.

