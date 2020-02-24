terraform {
    backend "s3" {
        bucket = "dwybourn-backend"
        key = "section6"
        region = "eu-west-2"
    }
}