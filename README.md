# raml
Raml and api specification experiments

## Generate the html docs
Use the npm tool raml2html

* Install with *npm i -g raml2html*
* Generate docs with *raml2html books.raml > books.html*

## Generate an AWS API Gateway
Use the aws-api-importer tool https://github.com/awslabs/aws-apigateway-importer

* Install the importer tool
* Generate the API with *./aws-api-import.sh --create books.raml*

## Generate mock integrations using API gateway extensions
This should be possible for raml specs as well as swagger ones