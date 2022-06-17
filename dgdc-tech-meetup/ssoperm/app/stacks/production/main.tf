module "sso_account_assignments" {
  source  = "../../modules/sso/modules/account-assignments"
  context = module.this.context

  account_assignments = [

    ############
    ## GROUPS ##
    ############
    {
      principal_name      = "administrator"
      principal_type      = "GROUP"
      permission_set_name = "AdministratorAccessRole"
      permission_set_arn  = var.permission_sets["AdministratorAccessRole"].arn
      account             = var.aws_account
    },
    # {
    #   principal_name      = "developer"
    #   principal_type      = "GROUP"
    #   permission_set_name = "ReadOnlyRole"
    #   permission_set_arn  = var.permission_sets["ReadOnlyRole"].arn
    #   account             = var.aws_account
    # },

    ###########
    ## USERS ##
    ###########
    # {
    #   principal_name      = "user@example.com"
    #   principal_type      = "USER"
    #   permission_set_name = "AdministratorAccessRole"
    #   permission_set_arn  = var.permission_sets["AdministratorAccessRole"].arn
    #   account             = var.aws_account
    # },

  ]
}
