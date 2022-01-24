# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}

# The initial return conditions return a truthy value if there is a match and a falsey value if you have hit the bottom of the branch.
# The initial return conditions cover the case where a root is its own ancestor/descendant.
def lowest_common_ancestor(root, p, q)
    
   return root if !root || root == p || root == q
    left = lowest_common_ancestor(root.left, p, q) 
    right = lowest_common_ancestor(root.right, p, q) 
    return right if !left
    return left if !right
    return root
end
