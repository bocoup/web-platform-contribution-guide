# Contribution Guidelines

Thanks for your interest in contributing to the Web Platform Contribution
Guide! In order to improve consistency and avoid uncertainty, we follow a few
stylistic conventions:

- Semantic line feeds - write each sentence on a dedicated line; these line
  breaks won't be visible in the rendered version of the guide; see [Semantic
  Linefeeds](https://rhodesmill.org/brandon/2012/one-sentence-per-line/) for
  the rationale behind this convention.
- One space after punctuation - don't use double space after a period,
  exclamation mark, or question mark.

The `lint.sh` script checks for the above conventions. You can run it before
building as follows:

    ./lint.sh && make html
