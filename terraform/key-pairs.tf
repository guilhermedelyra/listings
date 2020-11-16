resource "aws_key_pair" "classifieds-full-app-key" {
  key_name = "classifieds-full-app-key"
  public_key = file("./listings.pem")
}