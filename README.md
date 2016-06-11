# raml
Various raml and api specification experiments.

The books.html documentation was generated from the books.raml spec file.

## Generate the html docs

* Use the npm tool raml2html
* Install with

```
npm i -g raml2html
```

* Generate docs with

```
raml2html books.raml > books.html
```

## Generate an AWS API Gateway

* Use the aws-api-importer tool https://github.com/awslabs/aws-apigateway-importer
* Install the importer tool following its instructions
* Generate the API with

```
./aws-api-import.sh --create books.raml
```

## Generate mock integrations using API gateway extensions
* Use aws-api-importer and the aws cli tool
* Generate an API with a mock integration

```
./aws-api-import.sh --create pets.raml --raml-config pets.json
2016-06-11 18:27:20,360 INFO - Using API Gateway endpoint https://apigateway.eu-west-1.amazonaws.com
2016-06-11 18:27:22,438 INFO - Attempting to create API from RAML definition. RAML file: pets.raml
2016-06-11 18:27:22,659 INFO - Creating API with name Pets API
2016-06-11 18:27:22,823 INFO - Created API jc7rbxsdvi
2016-06-11 18:27:22,969 INFO - Removing default model Error
2016-06-11 18:27:23,023 INFO - Removing default model Empty
2016-06-11 18:27:23,199 INFO - Creating resource 'pets' on pmglmjef0b
2016-06-11 18:27:23,302 INFO - Creating method for api id jc7rbxsdvi and resource id z21q6c with method GET
2016-06-11 18:27:23,369 INFO - Creating integration with type MOCK
2016-06-11 18:27:23,636 INFO - Creating method for api id jc7rbxsdvi and resource id z21q6c with method POST
2016-06-11 18:27:23,698 INFO - Creating integration with type MOCK
```
    
* Deploy the new API to **dev** stage

```
aws apigateway create-deployment --rest-api-id API_ID --stage-name dev
```
