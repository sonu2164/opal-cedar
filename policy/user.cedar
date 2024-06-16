// All users can read all resources
permit(
    principal in Role::"user",
    action in [Action::"update", Action::"delete"],
    resource
       
) when { resource.owner == principal };
