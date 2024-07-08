def nodes: recurse(.nodes[]);
def all_nodes: recurse(.nodes[], .floating_nodes[]);
def scratch: .nodes[] |.nodes[] | select(.name == "__i3_scratch");
def focused_workspace: .nodes[] | .nodes[] | select(all_nodes | .focused);
