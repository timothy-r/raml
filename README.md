# raml
Various raml and api specification experiments.

The books.html documentation was generated from the books.raml spec file.

## Generate the html docs
Use the npm tool raml2html

* Install with *npm i -g raml2html*
* Generate docs with *raml2html books.raml > books.html*

## Generate an AWS API Gateway
Use the aws-api-importer tool https://github.com/awslabs/aws-apigateway-importer

* Install the importer tool
* Generate the API with *./aws-api-import.sh --create books.raml*

## Generate mock integrations using API gateway extensions
Use aws-api-importer and the aws cli tool

* Generate an API with a mock integration *./aws-api-import.sh --create pets.raml --raml-config pets.json*
* Deploy the new API to dev stage *aws apigateway create-deployment --rest-api-id API_ID --stage-name dev*
