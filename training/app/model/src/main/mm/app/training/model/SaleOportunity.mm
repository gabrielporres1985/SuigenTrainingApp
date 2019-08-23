package app.training.model;

entity SaleOportunity {
    client: Person;
    initialDate: Date;
    status: SaleStatus;
}