package app.training.view;

import app.training.model.Person;
import app.training.model.Company;
import app.training.model.Product;
import app.training.model.SaleOportunity;

form PersonForm "Person Form": Person {
    header {
        message(entity), col 8;
        search_box, col 4, style "pull-right";
    };

    "Id"                   : id, internal, optional;
    "Person Name"          : personName;
    "Person Last Name"     : personLastName;
    "Person Age"           : personAge, mask decimal;
    "Person Date Of Birth" : personDateOfBirth;
    "Person Genre"         : personGenre;
    "Person Id"            : personId;
    "Person Telephone"     : personTelephone;
    "Person Company"       : personCompany;

    footer {
        button(save);
        button(cancel);
        button(delete), style "pull-right";
    };
}


form CompanyForm "Company Form": Company {
    header {
        message(entity), col 8;
        search_box, col 4, style "pull-right";
    };

    "Id"                 : id, internal, optional;
    "Company Name"       : companyName;
    "Company Address"    : companyAddress;
    "Company Telephone"  : companyTelephone;
    "Company Extra Data" : companyExtraData;

    footer {
        button(save);
        button(cancel);
        button(delete), style "pull-right";
    };
}


form Product "Product": Product {
    header {
        message(entity), col 8;
        search_box, col 4, style "pull-right";
    };

    "Id"                  : id, internal, optional;
    "Product Name"        : productName;
    "Product Description" : productDescription;
    "Product Amount"      : productAmount, mask decimal;

    footer {
        button(save);
        button(cancel);
        button(delete), style "pull-right";
    };
}


form SaleOportunity "Sale Oportunity": SaleOportunity {
    header {
        message(entity), col 12;
    };

    "Id"           : id, internal, optional;
    "Client"       : client;
    "Initial Date" : initialDate;
    "Status"       : status;

    footer {
        button(save);
        button(cancel);
        button(delete), style "pull-right";
    };
}
