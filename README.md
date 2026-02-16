# Python testing for research

A short course on the basics of software testing in Python using the `pytest` library.

This lesson uses [The Carpentries Workbench][workbench] template.

It is derived from the [FAIR2 for Research Software](https://fair2-for-research-software.github.io/)
training course [python-testing-for-research](https://github.com/FAIR2-for-research-software/python-testing-for-research)
by the University of Sheffield.

## Course Description

Whether you are a seasoned developer or just write the occasional script, it's important to know that your code does what you intend, and will continue to do so as you make changes.

Software testing is a methodology of automatically ensuring that your code works correctly, without having to go back and manually verify after each change.

This course seeks to provide you with conceptual understanding and the tools you need to start ensuring the robustness of your code.

### Contents

- Basic tests
- Running a test suite & understanding outputs
- Best practices
- Testing for errors
- Testing floating point data
- Fixtures
- Parametrisation
- Testing file outputs
- Continuous integration & automatic test-running with GitHub

## Contributions

Contributions are welcome, please refer to the [contribution guidelines](CONTRIBUTING.md) of how to do so and ensure that you adhere to the [Code of Conduct](CODE_OF_CONDUCT.md).

### Build the lesson locally

To render the lesson locally, you will need to have [R][r] installed.
Instructions for using R with the Carpentries template is available on the
[Carpentries website](https://carpentries.github.io/workbench/#installation).
We recommend using the
[`{renv}`](https://rstudio.github.io/renv/articles/renv.html) package.

After cloning the repository, you can set up `renv` and install all packages with:

``` r
renv::init()
# Optionally update packages
renv::update()
```
Once you have installed the dependencies, you can render the pages locally by starting R in the project root and running:

``` r
sandpaper::serve()
```

When building the site subsequently, you may need to run `renv::activate()` first.

This will build the pages and start a local web-server in R and open it in your browser. These pages are "live" and will respond to local file changes if you save them.

[git]: https://git-scm.com
[r]: https://www.r-project.org/
[workbench]: https://carpentries.github.io/workbench/




