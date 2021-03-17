# adIOS
SWIFT UI Project with airtable API
Efrei Paris 4th year in Software Engineering

# Subject:
For this project, you will create an application for an event to allow people to have the all schedule and informations they need. You can do it by groups of 4-6 people.

## Documentation:
You are given an API: Create an account with [this link](https://airtable.com/tbleutsg7thW8d5sT/viwiQ1uyXrdbr8qHN?blocks=hide). You will need to create at least one account by groupe project on airtable. After that, you can access to the [API documentation](https://airtable.com/appXKn0DvuHuLw4DV/api/docs#curl/introduction) (or go Help-> Api documentation). You can use course examples. Apple documentation [here](https://developer.apple.com/develop/). For tutorials, [Raywanderlich](https://www.raywenderlich.com/library?domain_ids%5B%5D=1&subscription_types%5B%5D=free&q=swift&sort_order=relevance) is a classic one. And of course google is your best friend ;). 

## Requirements:
At least, we want those screens:

 - This application will be displaying as home page, the main schedule of the first day.
 - Each activity will have a detail page.
 - A speaker and attendee list page to have informations on them.
 - The list of the sponsors of the event. 

You are free on the design and navigation, but you have to think as a smartphone user and adapt it for a small screen. Have a think on what do you need to show to the user and how to organise the informations. Your typical user is someone who is going on the event. He may use the application before going and during the event to find which conference to go or search for informations. Of course, your application must have tests! To handle UI, you can do with SwiftUI or UIKit, your groupe choice.

## Hints:
- Have a look at other events and how they organise the informations. Don’t copy cat but that may inspire you!
- Look at table view, collection view, navigation controller, tab bar navigation.
- Ask someone, who is not in the group, to test your application to have good feedbacks.
- To match colors, you may have a look at [this kind of website](https://coolors.co/).
- Have a look at DateFormatter to handle dates.
- Before starting to code, take time to decompose the project in tasks, and multiple objectives. Like that you will go step by step, you can split work and have a better organisation. Maybe think about a MVP version not too ambitious to have something working to send in worst case scenario.

## Notation :
### 1. Project:
The application compiles on all machines, and most of all on mine, not only yours. No warnings. No dead code. The code is readable and understandable. The application do not crash. You have a clear architecture. 

### 2. UI:
All the required screens are here. The data displayed are relevant and at a logic place. It’s not horrible to watch. Objects adapt to screen size or rotation.

### 3. Navigation:
The navigation is adapted and understandable. You handle errors.

### 4. Tests:
All the application is validated by tests. Unit tests passes. UI tests passes. You have pertinents and useful tests.

### 5. Network:
You deal with online API, not fake data. Careful with synchrone and asynchrone tasks. 
Bonus ideas:
- You handle accessibility.
- Your UI is beautiful.
- User experience is well thought.
- You can filter the events by topics, themes or locations.
- Animations (not too much…).
