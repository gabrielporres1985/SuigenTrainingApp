package app.training.model;

entity Person
    described_by personName, personLastName
    searchable by {
        personName;
        personLastName;
    }
{
    personName: String;
    personLastName: String;
    personAge: Int, optional ;
    personDateOfBirth: Date, optional ;
    personGenre: Genre;
    personId: String;
    personTelephone: String;
    personCompany: Company, optional;
    personPicture: Resource, optional;
}