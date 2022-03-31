resource "aws_dynamodb_table" "maintopic" {
    name = "maintopic"
	billing_mode = "PAY_PER_REQUEST"
    hash_key = "word"
    range_key = "classification"

    attribute {
        name = "classification"
        type = "S"
    }
    attribute {
        name = "word"
        type = "S"
    }
}