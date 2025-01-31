using my.bookshop as my from '../db/data-model';

service CatalogService @(requires : 'authenticated-user') {
    @(restrict : [
        {
            grant : '*',
            to    : ['Write']
        },
        {
            grant : 'READ',
            to    : ['Read']
        }
    ])
    entity Books as projection on my.Books;
}
