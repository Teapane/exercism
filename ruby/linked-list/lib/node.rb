class Node
  attr_reader :data
  attr_accessor :link

  def initialize(data)
    @data = data
  end

  def link
    @link
  end

  def link=(link)
    @link = link
  end
end

# A linked list can be thought of as collection of nodes
# Always need to keep track of the previous element
# Two data structures, the nodes and the list
# The nodes are pieces of data, that through links create a data sequence
# The nodes are indiviudal pieces of data
# If a node has a nil link, the list stops there
# Nodes three and four couldn't be accessed if node twos link is nil 
# Node A --> Node B --> Node C --> Node A
# 1. In order to find Node C, you must first travel through Node A --> Node B.  
    # Start at the beginning of the list; create a 'reference' head, go through each node until a match is found
    # If node isn't present in the list, return "Node Not Found!"
# 2. To add a node, you first must travel through all the nodes in order to find the end. 
# 3. 
# 4. 
# 5. Start at the head, and iterate through the collection. 
    # Look for duplication or uniqueness.  
    # If something is duplicated/not unique, return false. 
    # If no duplication, list is unique

# Singly-Linked List  O(n)     O(n)  O(1)    O(1)         O(n)  O(n)  O(1)  O(1)  O(n)
                    #Indexing search  insert  delete      Worst case scenarios

# Linked lists are not the best data structures as seen my this Big O chart.  
