// All users can read all resources
permit(
    principal in Role::"member",
    action in [Action::"create", Action::"read", Action::"update", Action::"delete"],
    resource in ResourceType::"note" if {
        action == Action::"create" || 
        action == Action::"read" || 
        (action in [Action::"update", Action::"delete"] && resource.owner == principal)
    }
);
