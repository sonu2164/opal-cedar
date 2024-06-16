
permit(
    principal
    action in [Action::"update", Action::"delete"],
    resource in ResourceType::note
       
) when { resource.owner == principal };
