resource "aws_eip" "listings-service-eip" {
  instance = module.listings-service.instance-id
}

module "listings-service" {
  source = "./node-server"

  ami-id               = "ami-02898a1921d38a50b"
  key-pair             = aws_key_pair.listings-app-key.key_name
  name                 = "listings-service"
  private-ip           = "10.0.1.5"
  subnet-id            = aws_subnet.listings-app-subnet-private-1.id
  vpc-security-group-ids = [
    aws_security_group.allow-internal-http.id,
    aws_security_group.allow-ssh.id,
    aws_security_group.allow-all-outbound.id
  ]
}

module "listings-service-db" {
  source = "./mysql-db"

  apply-immediately      = true
  db-name                = "db"
  db-subnet-group-name   = aws_db_subnet_group.private.id
  identifier             = "listings-service-db"
  password               = var.listings-service-db-password
  publicly-accessible    = false
  username               = var.listings-service-db-username
  vpc-security-group-ids = [aws_security_group.allow-internal-mysql.id]
}
