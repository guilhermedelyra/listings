resource "aws_key_pair" "listings-key" {
  key_name = "listings-key"
  public_key = file("./listings.pem")
}