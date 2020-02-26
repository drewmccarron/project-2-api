### Technologies

This app uses JavaScript, Ruby on Rails, Heroku, jQuery, Handlbars, and Bootstrap.

[The backend respository can be found here](https://github.com/drewmccarron/project-2-api)


### Planning
The first planning step was determining what app the would ultimately do. For
this, I had an idea for a video game that utilized equipping pieces of armor and
gear as the main mechanic. As a first step towards making that, this app would
allow users to create, delete, update, and manage lists of different customized
equipment sets (i.e. 'Loadouts').

Next, I decided what columns my tables needed and what their relationships with
each other would be. As part of this, the User table would be used for
authentication and own many loadouts. The Loadouts table would have columns for
a name as well as slots for an armor set, weapon, and trinket. These columns
would contain strings that are names of the pieces of equipment used in that
slot of the loadout.

Next, I drafted a wireframe for the app. When doing so, I designed the layout
around the planned functionality of the app. There would need to be a login
screen with options for signing in and signing up for the app. After getting
past that, users would need to see, create, delete, and update loadouts. This
requires forms where users can input the needed information as well as clearly-
labeled sections and buttons for each of those core actions. Additionally,
this stage of the app would also require the necessary logout and password-
changing features.

### Development Process

Development started on the Rails API. The Loadouts table was created with its
name, armor_slot, weapon_slot, and trinket_slot columns. Then, a migration was
done to connect the Users and Loadouts table.

After the initial creation and set-up of the tables, they were tested using
curl-scripts. Once I had determined that the API portion of the app was working
as intended, development on the client began.

The first steps of creating the frontend was setting up the authentication.
Loadouts were owned by users, so having a logged-in user was necessary for
testing the browser app. After completing this section, I next began on
connecting the client with the Loadouts table.

At this stage, I tested the Loadouts-portion of functionality by creating,
deleting, retrieving, and patching loadouts through the app with console.log
statements of the data. After confirming that client could interact with the
API, I began using handlebars to convert that data into usable HTML. From here,
development centered around app design and layout, where the app became more
organized, intuitive, and visually appealing.

### Future Updates
The next large update to the app would likely be adding a third database that
would contain a list of pre-made items that users could equip, instead of
typing in the names of their own items. This is intuitive and more in-line with
how a similar video game inventory-equipment systems work.

This would be implemented by replacing the text-inputs for the forms used to
create and update loadouts with menus (such as drop-downs) that contain lists of
items that can be selected for the respective equipment slots.

### Wireframe and ERD

[Login screen](https://i.imgur.com/f6PPiBg.png)

[Main app](https://i.imgur.com/eZReP2p.png)

[ERD](https://i.imgur.com/hwu4rv8.png)

### User Stories

As a user, I want to be able to save loadouts of equipped items on a character.

As a user, I want to be able to see all of my previously-created loadouts.

As a user, I want to be able to retrieve previously-created loadouts and have
it's equipped items equipped to the character.

As a user, I want to be able to delete previously-created loadouts.

As a user, I want to be able to update previously-created loadouts.
