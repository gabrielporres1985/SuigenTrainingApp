package app.training.model;

entity Person {
    personName: String;
    personLastName: String;
    personAge: Int;
    personDateOfBirth: Date;
    personGenre: Genre;
}

enum Genre {
    FEMALE: "Female";
    MALE: "Male";
}