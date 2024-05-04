SET max_parallel_maintenance_workers = 80; 
SET max_parallel_workers = 80; 
SET maintenance_work_mem TO '4 GB';
CREATE INDEX idx_tweet_tags_tag ON tweet_tags(id_tweets, tag);
CREATE INDEX idx_tweet_tags_id_tweets ON tweet_tags(tag, id_tweets);
CREATE INDEX idx_tweets_lang ON tweets(id_tweets, lang);
CREATE INDEX idx_tweets_lang_2 ON tweets(lang);
CREATE INDEX idx_tweets_lang_text ON tweets USING GIN (to_tsvector('english', text)) WHERE lang = 'en';
