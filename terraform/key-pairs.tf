resource "aws_key_pair" "listings-app-key" {
  key_name = "listings-app-key"
  public_key = file("./listings.pem")
}