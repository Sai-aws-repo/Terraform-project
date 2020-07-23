terraform{
    backend "s3"{
        bucket = "created_S3_bucket"
        key = "tf_state"
        region = "specify_region"
        dynamodb_table = "specify_tablename"
    }
} 