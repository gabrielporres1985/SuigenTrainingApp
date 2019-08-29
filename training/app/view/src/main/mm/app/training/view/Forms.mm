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
    "Person Age"           : personAge, mask decimal, optional ;
    "Person Date Of Birth" : personDateOfBirth, optional ;
    "Person Genre"         : personGenre;
    "Person Id"            : personId;
    "Person Telephone"     : personTelephone;
    "Person Company"       : personCompany, optional;
    "Person Picture"       : personPicture, optional;

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
    "Company Logo"            : companyLogo;
    "Company Telephone"       : companyTelephone;
    "Company Extra Data"      : companyExtraData;

    "Company Address"         : companyAddress, table {
        companyStreetName: streetName;
        companyStreetNumber: streetNumber;
        companyBuildId: storageId;
        companyZipCode: zipCode;
    };

	horizontal {
		button(add_row, companyAddress);
		button(remove_row, companyAddress);
	};

    "Company Person"          : companyPerson, table {
        companyPersonId: id, internal, optional;
        name: personName, display;
        lastName: personLastName, display;
        telephone: personTelephone, display;
        personPicture: personPicture, disable;
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
    "Person"       : person;
    "Products"     : products, table {
        productItem: product;
        quantityItem: quantity;
    };

	horizontal {
		button(add_row);
		button(remove_row);
	};

    footer {
        button(save);
        button(cancel);
        button(delete), style "pull-right";
    };
}

