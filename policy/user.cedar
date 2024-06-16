// owner can update and delete a resource
permit(
    principal in Role::"user",
    action in [Action::"update", Action::"delete"],
    resource
       
) when { resource.owner == principal.mid };

// any user can read and create resource
permit(
    principal in Role::"user",
    action in [Action::"read", Action::"create"],
    resource == ResourceType::note
       
) ;
