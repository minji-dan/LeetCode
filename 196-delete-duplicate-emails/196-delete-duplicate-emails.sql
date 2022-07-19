# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below

DELETE p1
FROM person AS p1 
    INNER JOIN person AS p2 ON p1.email=p2.email
WHERE p1.id > p2.id 


# | 1  | john@example.com || 1  | john@example.com | 
# | 1  | john@example.com || 3  | john@example.com |
# | 2  | bob@example.com  || 2  | bob@example.com  |
# | 3  | john@example.com || 1  | john@example.com | X
# | 3  | john@example.com || 3  | john@example.com |

# case: delete p1
# ["id", "email"]
# [1, "john@example.com"]
# [2, "bob@example.com"]

# case: delete p2 

# ["id", "email"]
# [2, "bob@example.com"]
# [3, "john@example.com"]

