# iOS-Interview-Project Take Home Challenge

## Create a TableView
Referring to example.png, create a tableView that displays a list of apps. Include a simple NavigationItem with title, "Apps", and do NOT create the tab bar. You will be using **MockAppService** to replicate fetching the data from a server. There is no time limit for this challenge but a reasonable amount of time is 1 hour. Feel free to use any architectural / design patterns that most closely mimic production quality code, but do not worry about creating reusable UI components (i.e. creating a ButtonFactory with configurable inputs, etc.)

Checklist:
* Model the data with a swift object and use that model to feed your tableView's datasource.
* Handle both the success case and the failure case for the mock network service call. The success case should display the tableView and the failure case should hide the tableView and display the returned error's description in the middle of the view.
* The "GET / price" button should be responsive to touch down events, and should print "Downloading {appname}" when tapped.
* The In-App purchases label should only be displayed for apps that have in-app purchases.
* The apps should be sorted in alphabetical order.

Notes: Try not to use Interface builder for laying out your views unless it will prevent you from finishing the challenge. You may use any dependency / package manager you want. Don't worry too much about have the EXACT design -- the idea is to layout the elements relative to each other in way the example PNG shows. Don't stress too much over fonts, spacing, sizes, colors, etc.

w
