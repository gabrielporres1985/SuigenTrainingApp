package app.training.view;

import app.training.model.Person;

form PersonForm "Person Form": Person {
    header {
        message(entity), col 12;
    };

    "Id"             : id, internal, optional;
    "Name"          : personName;
    "Last Name"     : personLastName;
    "Age"           : personAge, mask decimal;
    "Date Of Birth" : personDateOfBirth;
    "Genre"         : personGenre;

    footer {
        button(save);
        button(cancel);
        button(delete), style "pull-right";
    };
}