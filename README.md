# Lab 3 - Github Repo Finder

Github Repo Finder is a GitHub Repo search app using the [GitHub API](https://developer.github.com/v3/search/#search-repositories).

Time spent: 3 hours spent in total

## User Stories

The following **required** functionality is completed:

- [check] Table rows for search results should be dynamic height according to the content height.
- [check] Custom cells should have the proper Auto Layout constraints.

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1.
2.

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='https://github.com/sammanthp007/Github-Repo-Finder/blob/master/walkthrough.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

# Lab 5

Github Repo Finder is a GitHub Repo search app using the [GitHub API](https://developer.github.com/v3/search/#search-repositories).

Time spent: 3 hours spent in total

## User Stories

The following **required** functionality is completed:
### Milestone 1: Setup
- [ ] Open the GithubDemo.xcworkspace from the last GitHub Repo Finder lab.
We'll be using the GitHub Search API.
### Milestone 2: Allow Filtering by Number of Stars
- [ ] Add a settings button to the left of the search bar:
- [ ] For buttons in the navigation bar, you can use a BarButtonItem in Interface Builder.
- [ ] Tapping on the settings button should modally present a SearchSettingsViewController:
To add a navigation bar to your SearchSettingsViewController, you can embed it inside a navigation controller via the Editor -> Embed In -> Navigation Controller menu option.
- [ ] The SearchSettingsViewController should have a single setting for the minimum number of stars a repo needs to have.
This should be represented by a slider.
You'll need a way to pass the settings information between the RepoResultsViewController and your SearchSettingsViewController. This can be done in prepareForSegue.

- [ ] To communicate the settings from the SearchSettingsViewController back to the RepoResultsViewController, we'll use the delegate pattern and create a protocol:

- [ ] Then we'll create a property inside of the SearchSettingsViewController:

- [ ] There is a save UIBarButtonItem for settings. When the save button is tapped the settings are saved and applied to the search immediately.

- [ ] There is a cancel UIBarButtonItem. Tapping on the cancel button returns to the main search results and discards any changes to the settings so that they are not reflected once the settings screen is opened the next time.

- [ ] Implement the actions for when each UIBarButtonItem is tapped:

- [ ] Conform the RepoResultsViewController class to the SettingsPresentingViewControllerDelegate protocol:

- [ ] When we segue from the RepoResultsViewController to the SearchSettingsViewController, we'll want to set the RepoResultsViewController as the delegate:

### Bonus 1: Allow Filtering by Language
- [ ] The settings view controller should use a table view to display all settings.
- [ ] There should be a setting for whether to filter by language. This setting is controlled by a toggle switch.
- [ ] When the language filter toggle is on, a list of languages should appear in the table.
- [ ] Tapping on a language toggles whether it will be included in the search.
### Bonus 2: Configurable Sort Order
- [ ] Add an option to the settings view controller for sorting search results based on either stars, forks, or relevance
