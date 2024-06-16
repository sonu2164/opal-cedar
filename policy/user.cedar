// owner can update and delete a resource
permit(
    principal in Role::"user",
    action in [Action::"update", Action::"delete"],
    resource
       
) when { resource.owner == principal.mid };





