# Given an array of social media posts and an array of users, return a list of posts (as an array of hashes) that replaces the submitted_by id number as the person's actual name.

# For example, given this array of posts (note that the submitted_by is an id number):

posts = [
    {"title" => 'Me Eating Pizza', "submitted_by" => 231, "likes" => 1549},
    {"title": 'i never knew how cool i was until now',
    "submitted_by": 989, "likes": 3},
    {"title": 'best selfie evar!!!', "submitted_by": 111, "likes": 1092},
    {"title": 'Mondays are the worst', "submitted_by": 403, "likes": 644}
]

# And this array of users:

users = [
    {"user_id": 403, "name": "Aunty Em"},
    {"user_id": 231, "name": "Joelle P."},
    {"user_id": 989, "name": "Lyndon Johnson"},
    {"user_id": 111, "name": "Patti Q."},
]
