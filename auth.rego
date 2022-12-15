package httpapi.authz
import input
default allow = false



allow {
  {"name": input.name,"groupname": input.groupname} = data.geostore.usergroup[_]
  input.request_path = ["v1", "collection"]
  input.company = "temidayo"
  input.request_method = "GET"
  input.groupname = "GEOCITY_ADMINS"
}

allow {
  {"name": input.name,"groupname": input.groupname} = data.geostore.usergroup[_]
  input.request_path = ["v1", "collection"]
  input.company = "letsbet"
  input.request_method = "GET"
  input.groupname = "VIEWER"
}

