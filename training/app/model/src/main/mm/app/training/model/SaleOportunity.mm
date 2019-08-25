package app.training.model;

entity SaleOportunity searchable by {company}{
    company: Company;
    initialDate: Date;
    status: SaleStatus;
}