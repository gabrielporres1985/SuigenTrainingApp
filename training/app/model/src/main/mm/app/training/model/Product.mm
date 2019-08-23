package app.training.model;

entity Product
    described_by productName
    searchable by {
        productName;
    }
{
    productName: String;
    productDescription: String;
    productAmount: Decimal(10, 2);
}