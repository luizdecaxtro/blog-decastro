-- Schema do banco D1 do CMS do Blog DeCastro.
-- Rode isso uma vez no console D1 da Cloudflare (aba "Console" do banco),
-- depois de criar o banco pelo dashboard.

CREATE TABLE IF NOT EXISTS posts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  slug TEXT UNIQUE NOT NULL,
  title TEXT NOT NULL,
  summary TEXT,
  tag TEXT,
  video_id TEXT,
  cover_image TEXT,
  body_html TEXT,
  course_link TEXT,
  published INTEGER NOT NULL DEFAULT 0,
  created_at TEXT NOT NULL DEFAULT (datetime('now')),
  updated_at TEXT NOT NULL DEFAULT (datetime('now'))
);

CREATE INDEX IF NOT EXISTS idx_posts_published ON posts (published, created_at DESC);
