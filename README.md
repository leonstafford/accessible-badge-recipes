# Accessible badge recipes

Recipes (shell scripts) to generate a11y-friendly badges for your GitHub projects.

Designed for use with [a11y-friendly badges GitHub Action](https://github.com/marketplace/actions/a11y-friendly-badges-for-github), but you're free to use in any creative way!

## Usage

Find recipes to use in your project by navigating this repository's `./recipes/` dir by language, ie `php` or `javascript` and then inspect and grab a project-specific recipe, such as `pest-codecoverage` or `eslint`.

If using the [a11y-friendly badges GitHub Action](https://github.com/marketplace/actions/a11y-friendly-badges-for-github), copy one or more recipes into a `./github/update_stats/` dir and it will run them all as part of your GitHub Actions build.

## Design goals/acceptance criteria

 - [ ] include example recipes to replace most popular badges
 - [ ] require example README.md in each recipe dir
 - [ ] shellcheck against all scripts in this repo
 - [ ] require shellspec tests within each recipe dir

## Testing

 - `shellcheck **/*.sh` lints all scripts
 - `shellspec .` tests all recipe specs 

## Contributing

I can't build all the recipes alone, so this needs community assistance.

As per the design goals listed above, I want to have each recipe dir adhere to basic code check via [shellcheck](https://github.com/koalaman/shellcheck) and include a working example `README.md` and passing [shellspec](https://github.com/shellspec/shellspec) test. This is a bit more up-front effort, but will mitigate issues further down the line for users.

Name your recipe dir and scripts something descriptive and unique, in case there are multiple examples, ie `update-pest-coverage.sh` and `pest-coverage-bold-with-link-to-artifacts.sh`. Bit lengthy, but to give you an idea.

Don't be afraid to commit anything. I'll give feedback if needed or help get it over the line if you're struggling with the testing or requirements.
