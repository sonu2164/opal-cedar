// All users can read all resources
permit(
    principal in Role::"user",
    action in [Action::"update", Action::"delete"],
    resource in ResourceType::"note"
       
) when { resource.owner == principal };
