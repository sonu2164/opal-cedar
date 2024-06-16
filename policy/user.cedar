
permit(
    principal
    action in [Action::"update", Action::"delete"],
    resource
       
) when { resource.owner == principal };
