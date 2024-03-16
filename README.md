# Blog Application


![Cover Image](cover.png)

This is a blog application built using Flutter and Supabase. It allows users to register with Supabase Auth and access a collection of blogs. The application employs clean architecture and a feature-based folder structure for better organization.

## Features

- User registration and authentication with Supabase Auth.
- Displaying blogs from the Supabase database.
- Offline caching of blogs for users without an internet connection.
- CRUD operations for user profiles and blogs.


## Setting Up

To set up the project, follow these steps:

1. Run the provided SQL scripts on your Supabase instance to create the necessary tables and policies.
2. Create an `.env` file in the root directory of the project and enter your Supabase API key and URL.

```plaintext
SUPABASE_API_KEY=your-api-key
SUPABASE_URL=your-supabase-url
```


3. Clone the repository.
4. Run the application on your preferred Flutter development environment.

## Database Schema

The application utilizes two main tables:

### Profiles

- `id` (UUID): References the `auth.users` table.
- `updated_at` (Timestamp with Timezone): Last updated timestamp.
- `name` (Text): User's name.

### Blogs

- `id` (UUID): Unique identifier for the blog.
- `updated_at` (Timestamp with Timezone): Last updated timestamp.
- `poster_id` (UUID): References the `public.profiles` table.
- `title` (Text): Title of the blog.
- `content` (Text): Content of the blog.
- `image_url` (Text): URL of the blog's image.
- `topics` (Text Array): Array of topics associated with the blog.

## Row Level Security (RLS)

The application employs Row Level Security (RLS) for data access control. Policies are set up to ensure:

- Public profiles and blogs are viewable by everyone.
- Users can only insert and update their own profile and blogs.

## Storage

The application utilizes Supabase Storage for managing blog images. Policies are set up to ensure:

- Blog images are publicly accessible.
- Anyone can upload and update their own blog images.

## Folder Structure

The project follows a feature-based folder structure for better organization. Each feature/module has its own folder containing relevant files.

## Contributing

Contributions are welcome! Feel free to open issues or pull requests for any improvements or features you'd like to see.

