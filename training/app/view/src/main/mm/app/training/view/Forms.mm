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
    "Person Company"       : personCompany, optional;

    footer {
        button(save);
        button(cancel);
        button(delete), style "pull-right";
    };
}



form ProductForm "Product Form": Product {
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




form CompanyForm "Company Form": Company {
    header {
        message(entity), col 8;
        search_box, col 4, style "pull-right";
    };

    "Id"                      : id, internal, optional;
    "Company Name"            : companyName;
    "Company Address"         : companyAddress;
    "Company Telephone"       : companyTelephone;
    "Company Extra Data"      : companyExtraData;
    "Company Person"          : companyPerson, table {
        companyPersonId: id, internal, optional;
        name: personName;
        lastName: personLastName;
        age: personAge;
        dateOfBirth: personDateOfBirth;
        genre: personGenre;
        personId: personId;
        telephone: personTelephone;
    };
	horizontal {
		button(add_row, companyPerson);
		button(remove_row, companyPerson);
	};
    "Company Sale Oportunity" : companySaleOportunity, table{
        saleOportunityId: id, internal, optional;
        saleOportunityInitialDate: initialDate;
        saleOportunityStatus: status;
    };
	horizontal {
		button(add_row, companySaleOportunity);
		button(remove_row, companySaleOportunity);
	};

    footer {
        button(save);
        button(cancel);
        button(delete), style "pull-right";
    };
}




form SaleOportunityForm "Sale Oportunity Form": SaleOportunity {
    header {
        message(entity), col 12;
    };

    "Id"           : id, internal, optional;
    "Company"      : company;
    "Initial Date" : initialDate;
    "Status"       : status;

    footer {
        button(save);
        button(cancel);
        button(delete), style "pull-right";
    };
}

