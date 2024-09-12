module "network" {
    source = "./network"
    vpc_cidr=var.vpc_cidr
    public1=var.public1
    public2=var.public2
    private1=var.private1
    private2=var.private2
    region=var.region
}