package app.training.model;

entity SaleOportunity searchable by {company}{
    company: Company;
    initialDate: Date;
    status: SaleStatus;
    person: Person;
    products: entity SaleOportunityProducts * {
        product: Product;
        quantity: Int;
    };
}