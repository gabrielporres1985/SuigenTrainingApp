package app.training.model;

entity Company
    described_by companyName
    searchable by {
        companyName
    }
{
    companyName: String;
    companyAddress: String;
    companyTelephone: String;
    companyExtraData: String;
}