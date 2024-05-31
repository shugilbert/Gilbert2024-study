resource "aws_s3_bucket" "tf-test-bucket-gilbert" {
  bucket = "tf-test-bucket-gilbert"

  tags = {
    Name        = "tf-test-bucket-gilbert"
    Environment = "Dev"
  }
}


resource "aws_s3_bucket_versioning" "versioning_tf-test-bucket-gilbert" {
  bucket = aws_s3_bucket.tf-test-bucket-gilbert.id
  versioning_configuration {
    status = "Enabled"
  }
}

#resource "aws_s3_bucket_object" "uploads" {
  #key   = "someobject"
  #bucket = aws_s3_bucket.tf-test-bucket-gilbert.id
  #source  = "index.html"
  


resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"
 
}

resource "aws_subnet" "main_public_subnet" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = var.av_zonea

  tags = {
    Name = "main_public_vpc"
  }
}

resource "aws_subnet" "main_private_subnet" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = var.av_zonec

  tags = {
    Name = "main_private_vpc"
  }
}


resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "igw"

  }
}

#resource "aws_internet_gateway_attachment" "igw_att" {
  #internet_gateway_id = aws_internet_gateway.igw.id
  #vpc_id              = aws_vpc.main_vpc.id



resource "aws_instance" "test-server" {
  
  ami           = var.ami_id
  instance_type = var.instance_type
#availability_zone = var.availability_zone
  tags = {
    Name = var.tag
    Environment= "Dev"
    createdby="gilbert"
    instance_state= "true"
  }
}