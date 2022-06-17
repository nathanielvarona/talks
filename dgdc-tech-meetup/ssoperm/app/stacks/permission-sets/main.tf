module "permission_sets" {
  source  = "../../modules/sso/modules/permission-sets"
  context = module.this.context

  permission_sets = [

    {
      name             = "AdministratorAccessRole",
      description      = "Allow Full Access to the account",
      relay_state      = "",
      session_duration = "PT12H",
      tags             = {},
      inline_policy    = "",
      policy_attachments = [
        "arn:aws:iam::aws:policy/AdministratorAccess",
      ]
    },

    {
      name             = "ReadOnlyRole"
      description      = "Read Only Access"
      relay_state      = ""
      session_duration = "PT12H"
      tags             = {}
      inline_policy    = data.aws_iam_policy_document.inline_policy_S3Access.json
      policy_attachments = [
        "arn:aws:iam::aws:policy/ReadOnlyAccess",
      ]
    },

  ]
}
