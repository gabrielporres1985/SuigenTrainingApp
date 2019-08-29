package app.training.model;

entity Company
    described_by companyName
    searchable by {
        companyName
    }
{
    companyName: String;
    companyLogo: Resource, optional;
    companyAddress: entity CompanyAddress * {
        streetName: String;
        streetNumber: Int;
        storageId: Int;
        zipCode: Int;
    };
    companyTelephone: String;
    companyExtraData: String;
    companyPerson: Person*;
    companySaleOportunity: SaleOportunity*;
}