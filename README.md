# Backend-Pair-Programming-Interview

## Dependencies

| Name  | Version |
|-------|---------|
| Ruby  | 2.7.6   |
| Rails | 7.0.4   |

## Setup

Clone this project locally. In your terminal, `cd` to the root of the project and run:

    bin/setup

## Database Seeds

Seed data can be found in the `db/seeds.rb` file. Initially seed the database with:

    bin/rails db:seed

If you change the seed file and wish to seed the database from scratch, run:

    bin/rails db:seed:replant

## Tests

In the project root directory run:

    bin/rspec

## Endpoints

| HTTP Method | Endpoint   | Description           |
|-------------|------------|-----------------------|
| GET         | /questions | List of all questions |
| POST        | /questions | Add a new question    |

## Data Model Diagram

```mermaid
erDiagram
    ProductQuetion }o--|| Product: has
    ProductQuetion }o--|| Question: has
    
    Product {
        bigint id PK
        string name
    }
    Question {
        bigint id PK
        string answer
        string label
    }
    ProductQuetion {
        bigint product_id FK
        bigint question_id FK
    }
```

| Model          | Description                                                |
|----------------|------------------------------------------------------------|
| Product        | An item that can be sold on the website                    |
| ProductQuetion | Join table for Products and Questions                      |
| Question       | A general question or a question associated with a product |