def all_stories
    cryptonite("SELECT * FROM stories ORDER BY id DESC")
  end

def create_story(user_posting_id, user_posting_name, crypto_id, story)
  cryptonite("INSERT INTO stories(user_posting_id, user_posting_name, crypto_id, story) VALUES($1, $2, $3, $4)", [user_posting_id, user_posting_name, crypto_id, story])
end

def delete_story(id)
  cryptonite("DELETE FROM stories WHERE id = $1", [id])
end

def edit_stories(id)
  cryptonite("SELECT * FROM stories WHERE id = $1", [id])[0]
end

def update_story(crypto_id, story, id)
  cryptonite("UPDATE stories SET crypto_id = $1, story = $2 WHERE id = $3", [crypto_id, story, id])
end

# def story_user_name(user_posting_id)
# cryptonite("SELECT name FROM users WHERE id = (SELECT user_posting_id FROM stories WHERE id = $1 ", [user_posting_id])

  # cryptonite("SELECT name FROM users WHERE id = $1", [user_posting_id])[0]
# end


