-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 02, 2021 at 07:19 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `relationship`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, 'agrabad commerce college road   ', NULL, NULL),
(2, 2, ' Dhaka commerce college road', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `all__relations`
--

CREATE TABLE `all__relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Code` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Output` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `all__relations`
--

INSERT INTO `all__relations` (`id`, `Name`, `Code`, `Output`, `created_at`, `updated_at`) VALUES
(1, 'One to One', '<div class=\"row\">\r\n            <div class=\"col\">\r\n               <div class=\"card\">\r\n                  <div class=\"card-header info\">One To one [User -> Address, Phone]</div>\r\n                     <div class=\"card-body\">                       \r\n                        <table class=\"table table-bordered\">\r\n                           <thead class=\"text-center\">\r\n                              <tr>\r\n                                 <th>id</th>\r\n                                 <th>Step</th>\r\n                                 <th>Code</th>\r\n                              </tr>\r\n                           </thead>\r\n                           <tbody>\r\n                              @php\r\n                                 $all_data = App\\One_to_one::all();\r\n                              @endphp\r\n                              @foreach($all_data as $data)\r\n                                 <tr>\r\n                                    <td>{{ $data->id}}</td>\r\n                                    <td>{{ $data->Step}}</td>\r\n                                    <td> <pre>{{ $data->Code}}</pre></td>\r\n                                 </tr>\r\n                               @endforeach                                               \r\n                           </tbody>\r\n                        </table>\r\n                     </div>\r\n               </div>\r\n            </div>\r\n         </div>', '<div class=\"row\">\r\n            <div class=\"col\">\r\n               <div class=\"card\">\r\n                  <div class=\"card-header success\">One To one [User -> address/Phone]</div>\r\n                     <div class=\"card-body\">                       \r\n                        <table class=\"table table-bordered\">\r\n                           <thead lass=\"bg-dark\">\r\n                              <tr class=\"text-center\">\r\n                                 <th>id</th>\r\n                                 <th>Name</th>\r\n                                 <th>Email</th>\r\n                                 <th class=\"bg-info\">Address</th>\r\n                                 <th class=\"bg-info\">Phone</th>\r\n                              </tr>\r\n                           </thead>\r\n                           <tbody>\r\n                              @php\r\n                                 // $Users = App\\User::all();\r\n                                 $Users = App\\User::all();\r\n\r\n                              @endphp\r\n                              @foreach($Users as $User)\r\n                                 <tr class=\"text-center\">\r\n                                    <td>{{ $User->id}}</td>\r\n                                    <td>{{ $User->name}}</td>\r\n                                    <td>{{ $User->email}}</td>\r\n                                    <td>{{ $User->getAddress->address}}</td>\r\n                                    <td>{{ $User->getPhone->phone}}</td>\r\n                                 </tr>\r\n                               @endforeach                                               \r\n                           </tbody>\r\n                        </table>\r\n                     </div>\r\n               </div>\r\n            </div>\r\n         </div>', NULL, NULL),
(2, 'One to One [Inverse]', '<div class=\"row\">\r\n            <div class=\"col\">\r\n               <div class=\"card\">\r\n                  <div class=\"card-header info\">One To one [Inverse] [Phone -> User]</div>\r\n                     <div class=\"card-body\">                       \r\n                        <table class=\"table table-bordered\">\r\n                           <thead class=\"text-center\">\r\n                              <tr>\r\n                                 <th>id</th>\r\n                                 <th>Step</th>\r\n                                 <th>Code</th>\r\n                              </tr>\r\n                           </thead>\r\n                           <tbody>\r\n                              @php\r\n                                 $all_data = App\\One_to_one_inverse::all();\r\n                              @endphp\r\n                              @foreach($all_data as $data)\r\n                                 <tr>\r\n                                    <td>{{ $data->id}}</td>\r\n                                    <td>{{ $data->Step}}</td>\r\n                                    <td> <pre>{{ $data->Code}}</pre></td>\r\n                                 </tr>\r\n                               @endforeach                                               \r\n                           </tbody>\r\n                        </table>\r\n                     </div>\r\n               </div>\r\n            </div>\r\n         </div>', '  <div class=\"row\">\r\n            <div class=\"col\">\r\n               <div class=\"card\">\r\n                  <div class=\"card-header success\">One To one [Inverse] [Phone -> User]</div>\r\n                     <div class=\"card-body\">                       \r\n                        <table class=\"table table-bordered\">\r\n                           <thead lass=\"bg-dark\">\r\n                              <tr class=\"text-center\">\r\n                                 <th>id</th>\r\n                                 <th>Phone</th>\r\n                                 <th class=\"bg-info\">Name</th>\r\n                                 <th class=\"bg-info\">Email</th>\r\n                              </tr>\r\n                           </thead>\r\n                           <tbody>\r\n                              @php\r\n                                 // $Users = App\\User::all();\r\n                                 $phones = App\\Phone::with(\'user\')->get();\r\n\r\n                              @endphp\r\n                              @foreach($phones as $phone)\r\n                                 <tr class=\"text-center\">\r\n                                    <td>{{ $phone->id}}</td>\r\n                                    <td>{{ $phone->phone}}</td>\r\n                                    <td>{{ $phone->user->name}}</td>\r\n                                    <td>{{ $phone->user->email}}</td>\r\n                                 </tr>\r\n                               @endforeach                                               \r\n                           </tbody>\r\n                        </table>\r\n                     </div>\r\n               </div>\r\n            </div>\r\n         </div>', NULL, NULL),
(3, 'One To Many', '<div class=\"row\">\r\n            <div class=\"col\">\r\n               <div class=\"card\">\r\n                  <div class=\"card-header info\">One To Many [Post ->Comments]</div>\r\n                     <div class=\"card-body\">                       \r\n                        <table class=\"table table-bordered\">\r\n                           <thead class=\"text-center\">\r\n                              <tr>\r\n                                 <th>id</th>\r\n                                 <th>Step</th>\r\n                                 <th>Code</th>\r\n                              </tr>\r\n                           </thead>\r\n                           <tbody>\r\n                              @php\r\n                                 $all_data = App\\One_to_many::all();\r\n                              @endphp\r\n                              @foreach($all_data as $data)\r\n                                 <tr>\r\n                                    <td>{{ $data->id}}</td>\r\n                                    <td>{{ $data->Step}}</td>\r\n                                    <td><pre>{{ $data->Code}}</pre></td>\r\n                                 </tr>\r\n                               @endforeach                                               \r\n                           </tbody>\r\n                        </table>\r\n                     </div>\r\n               </div>\r\n            </div>\r\n         </div>', '<div class=\"row\">\r\n            <div class=\"col\">\r\n               <div class=\"card\">\r\n                  <div class=\"card-header success\">One To Many [Post ->Comments]</div>\r\n                     <div class=\"card-body\">                       \r\n                        <table class=\"table table-bordered\">\r\n                           <thead lass=\"bg-dark\">\r\n                              <tr class=\"text-center\">\r\n                                 <th>id</th>\r\n                                 <th>Post Title</th>\r\n                                 <th class=\"bg-info\">Comments</th>\r\n                              </tr>\r\n                           </thead>\r\n                           <tbody>\r\n                              @php\r\n                                 $posts = App\\Post::all();\r\n                              @endphp\r\n                              @foreach($posts as $post)\r\n                                 <tr class=\"text-center\">\r\n                                    @php\r\n                                       $rowspan =$post->comments->count();\r\n                                       $totalRow = $rowspan+1;\r\n                                    @endphp\r\n\r\n                                    <td rowspan=\"{{$totalRow}}\">{{ $post->id}}</td>\r\n                                    <td rowspan=\"{{$totalRow}}\">{{ $post->post}}</td>\r\n                                    @foreach($post->comments as $comment)\r\n                                       <tr>\r\n                                          <td>{{ $comment->comment}}</td>                                       \r\n                                       </tr>\r\n                                    @endforeach\r\n                                 </tr>\r\n                               @endforeach                                               \r\n                           </tbody>\r\n                        </table>\r\n                     </div>\r\n               </div>\r\n\r\n               <div class=\"card mt-3\">\r\n                  <div class=\"card-header success\"><h5>Different Design</h5>One To Many [Post ->Comments] </div>\r\n                     <div class=\"card-body\">\r\n                        <table class=\"table table-bordered\">\r\n                           <thead lass=\"bg-dark\">\r\n                              <tr class=\"text-center\">\r\n                                 <th>id</th>\r\n                                 <th>Post Title</th>\r\n                                 <th class=\"bg-info\">Comments</th>\r\n                              </tr>\r\n                           </thead>\r\n                           <tbody>\r\n                              @php\r\n                                 $posts = App\\Post::all();\r\n                              @endphp\r\n                              @foreach($posts as $post)\r\n                                 <tr class=\"text-center\">\r\n                                    <td>{{ $post->id}}</td>\r\n                                    <td>{{ $post->post}}</td>\r\n                                    <td>\r\n                                       @foreach($post->comments as $comment)\r\n                                          {{$loop->index+1}}) {{ $comment->comment}}</br>                                   \r\n                                       @endforeach\r\n                                    </td>\r\n                                 </tr>\r\n                               @endforeach                                               \r\n                           </tbody>\r\n                        </table>\r\n                     </div>\r\n               </div>\r\n            </div>\r\n         </div>', NULL, NULL),
(4, 'One To Many [Inverse]', '<div class=\"row\">\r\n            <div class=\"col\">\r\n               <div class=\"card\">\r\n                  <div class=\"card-header info\">One To Many [Inverse] [Post ->User, Category]</div>\r\n                     <div class=\"card-body\">\r\n                        <table class=\"table table-bordered\">\r\n                           <thead class=\"text-center\">\r\n                              <tr>\r\n                                 <th>id</th>\r\n                                 <th>Step</th>\r\n                                 <th>Code</th>\r\n                              </tr>\r\n                           </thead>\r\n                           <tbody>\r\n                              @php\r\n                                 $all_data = App\\One_to_many_inverse::all();\r\n                              @endphp\r\n                              @foreach($all_data as $data)\r\n                                 <tr>\r\n                                    <td>{{ $data->id}}</td>\r\n                                    <td>{{ $data->Step}}</td>\r\n                                    <td> <pre>{{ $data->Code}}</pre>\r\n                                    </td>\r\n                                 </tr>\r\n                               @endforeach                                               \r\n                           </tbody>\r\n                        </table>\r\n                     </div>\r\n               </div>\r\n            </div>\r\n         </div>', '<div class=\"row\">\r\n            <div class=\"col\">\r\n               <div class=\"card\">\r\n                  <div class=\"card-header success\">One To Many [Inverse] [Post ->User, Category]</div>\r\n                     <div class=\"card-body\">                       \r\n                        <table class=\"table table-bordered\">\r\n                           <thead lass=\"bg-dark\">\r\n                              <tr class=\"text-center\">\r\n                                 <th>id</th>\r\n                                 <th class=\"bg-info\">User Name</th>\r\n                                 <th class=\"bg-info\">Category Name</th>\r\n                                 <th>Post Title</th>\r\n                                 <th>Description</th>\r\n                              </tr>\r\n                           </thead>\r\n                           <tbody>\r\n                              @php\r\n                                 $posts = App\\Post::all();\r\n                              @endphp\r\n                              @foreach($posts as $post)\r\n                                 <tr class=\"text-center\">\r\n                                    <td>{{ $post->id}}</td>\r\n                                    <td>{{ $post->user->name}}</td>\r\n                                    <td>{{ $post->category->categoryName}}</td>\r\n                                    <td>{{ $post->post}}</td>\r\n                                    <td>{{ $post->description}}</td>\r\n                                 </tr>\r\n                               @endforeach                                               \r\n                           </tbody>\r\n                        </table>\r\n                     </div>\r\n               </div>\r\n            </div>\r\n         </div>', NULL, NULL),
(5, 'Many To Many', ' <div class=\"row\">\r\n            <div class=\"col\">\r\n               <div class=\"card\">\r\n                  <div class=\"card-header info\">Many To Many [User ->Category [Via Post]]</div>\r\n                     <div class=\"card-body\">                       \r\n                        <table class=\"table table-bordered\">\r\n                           <thead class=\"text-center\">\r\n                              <tr>\r\n                                 <th>id</th>\r\n                                 <th>Step</th>\r\n                                 <th>Code</th>\r\n                              </tr>\r\n                           </thead>\r\n                           <tbody>\r\n                              @php\r\n                                 $all_data = App\\Many_to_many::all();\r\n                              @endphp\r\n                              @foreach($all_data as $data)\r\n                                 <tr>\r\n                                    <td>{{ $data->id}}</td>\r\n                                    <td>{{ $data->Step}}</td>\r\n                                    <td> <pre>{{ $data->Code}}</pre>\r\n                                    </td>\r\n                                 </tr>\r\n                               @endforeach                                               \r\n                           </tbody>\r\n                        </table>\r\n                     </div>\r\n               </div>\r\n            </div>\r\n         </div>', ' <div class=\"row\">\r\n            <div class=\"col\">\r\n               <div class=\"card\">\r\n                  <div class=\"card-header success\">Many To Many [User ->Category [Via Post]]</div>\r\n                     <div class=\"card-body\">                       \r\n                        <table class=\"table table-bordered\">\r\n                           <thead lass=\"bg-dark\">\r\n                              <tr class=\"text-center\">\r\n                                 <th>User Id</th>\r\n                                 <th>User Name</th>\r\n                                 <th class=\"bg-info\">Category Name[Job]</th>\r\n                              </tr>\r\n                           </thead>\r\n                           <tbody>\r\n                              @php\r\n                                 $users = App\\User::all();\r\n                              @endphp\r\n                              @foreach($users as $user)\r\n                                 <tr class=\"text-center\">\r\n                                    @php\r\n                                       $rowspan =$user->category->count();\r\n                                       $totalRow = $rowspan+1;\r\n                                    @endphp\r\n\r\n                                    <td rowspan=\"{{$totalRow}}\">{{ $user->id}}</td>\r\n                                    <td rowspan=\"{{$totalRow}}\">{{ $user->name}}</td>\r\n                                    @foreach($user->category as $categoryName)\r\n                                       <tr  class=\"text-center\">\r\n                                          <td>{{ $categoryName->categoryName }}</td>\r\n                                       </tr>      \r\n                                    @endforeach     \r\n                                 </tr>\r\n                              @endforeach     \r\n                           </tbody>\r\n                        </table>\r\n                     </div>\r\n               </div>\r\n            </div>\r\n         </div>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `created_at`, `updated_at`) VALUES
(1, 'Php Programming', NULL, NULL),
(2, 'Java programming', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES
(13, 1, '1st comment', NULL, NULL),
(14, 1, '2nd comment', NULL, NULL),
(15, 1, '3rd comment', NULL, NULL),
(16, 2, '1st comment v2', NULL, NULL),
(17, 2, '2nd comment v2', NULL, NULL),
(18, 2, '3rd comment v2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `post_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'This is image', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `many_to_manies`
--

CREATE TABLE `many_to_manies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Step` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Code` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `many_to_manies`
--

INSERT INTO `many_to_manies` (`id`, `Step`, `Code`) VALUES
(1, 'Table 1', 'User\r\nid, name'),
(2, 'Table 2', 'Category\r\nid, categoryName'),
(3, 'Table 3', 'Post\r\nid, user_id, category_id'),
(4, 'Relation To', 'User to [Category]'),
(5, 'Model 1 [User]', 'public function category(){\r\n   return $this->belongsToMany(\'App\\Category\', \'App\\Post\');\r\n   // return $this->belongsToMany(Category::class, Post::class);\r\n   // return $this->belongsToMany(\'App\\Category\', \'App\\Post\', \'user_id\', \'category_id\');\r\n}'),
(6, 'Controller', 'use App\\User;\r\nuse App\\Category;\r\nuse App\\Post;\r\n\r\n$users = App\\User::all();\r\n\r\nforeach($users as $user){\r\n   echo $user->name;\r\n   foreach($user->category as $categoryName)\r\n      echo $categoryName->categoryName;\r\n   }\r\n}'),
(7, 'Blade', '@php\r\n   $users = App\\User::all();\r\n@endphp\r\n@foreach($users as $user)\r\n   <tr class=\"text-center\">\r\n      @php\r\n         $rowspan =$user->category->count();\r\n         $totalRow = $rowspan+1;\r\n      @endphp\r\n\r\n      <td rowspan=\"{{$totalRow}}\">{{ $user->id}}</td>\r\n      <td rowspan=\"{{$totalRow}}\">{{ $user->name}}</td>\r\n      @foreach($user->category as $categoryName)\r\n         <tr>\r\n            <td>{{ $categoryName->categoryName }}</td>\r\n         </tr>      \r\n      @endforeach     \r\n   </tr>\r\n@endforeach');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_30_064921_create_addresses_table', 1),
(6, '2020_12_30_084539_create_images_table', 2),
(7, '2020_12_30_084555_create_categories_table', 2),
(8, '2020_12_31_104209_create_posts_table', 3),
(9, '2014_10_12_000000_create_users_table', 4),
(10, '2021_02_11_083736_create_one_to_ones_table', 5),
(11, '2021_02_11_091002_create_phones_table', 6),
(12, '2021_02_11_095430_create_one_to_one_inverses_table', 7),
(13, '2021_02_11_111840_create_one_to__manies_table', 8),
(14, '2021_02_11_111938_create_comments_table', 8),
(15, '2021_02_13_103720_create_user__categories_table', 9),
(17, '2021_02_14_083752_create_one_to_manies_table', 11),
(18, '2021_02_14_100934_create_one_to_many_inverses_table', 12),
(19, '2021_02_14_103606_create_many_to_manies_table', 13),
(22, '2021_02_25_070021_create_all__relations_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `one_to_manies`
--

CREATE TABLE `one_to_manies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Step` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Code` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `one_to_manies`
--

INSERT INTO `one_to_manies` (`id`, `Step`, `Code`) VALUES
(1, 'Table 1', 'Post\r\nid, post'),
(2, 'Table 2', 'Comment\r\nid, post_id, comment'),
(3, 'Relation To', 'Post To [Comment]'),
(4, 'Model 1 [Post]', 'public function comments(){\r\n   return $this->hasMany(Comment::class);\r\n}'),
(5, 'Controller', 'use App\\Post;\r\nuse App\\Comment;\r\n\r\npublic function index(){\r\n\r\n   $posts = Post::all();\r\n\r\n   foreach ($posts as $post) {\r\n      foreach ($post->comments as $comment) {\r\n         echo $comment->comment;\r\n      }\r\n   }\r\n}'),
(6, 'Blade', '@foreach($posts as $post)\r\n   <tr class=\"text-center\">\r\n      @php\r\n         $rowspan =$post->comments->count();\r\n         $totalRow = $rowspan+1;\r\n      @endphp\r\n\r\n      <td rowspan=\"{{$totalRow}}\">{{ $post->id}}</td>\r\n      <td rowspan=\"{{$totalRow}}\">{{ $post->post}}</td>\r\n      @foreach($post->comments as $comment)\r\n         <tr>\r\n            <td>{{ $comment->comment}}</td>                                       \r\n         </tr>\r\n      @endforeach\r\n   </tr>\r\n @endforeach    '),
(7, 'Table 1', 'Post\r\nid, post'),
(8, 'Table 2', 'Comment\r\nid, post_id, comment'),
(9, 'Relation To', 'Post To [Comment]'),
(10, 'Model 1 [Post]', 'public function comments(){\r\n   return $this->hasMany(Comment::class);\r\n}'),
(11, 'Controller', 'use App\\Post;\r\nuse App\\Comment;\r\n\r\npublic function index(){\r\n\r\n   $posts = Post::all();\r\n\r\n   foreach ($posts as $post) {\r\n      foreach ($post->comments as $comment) {\r\n         echo $comment->comment;\r\n      }\r\n   }\r\n}'),
(12, 'Blade', '@foreach($posts as $post)\r\n   <tr class=\"text-center\">\r\n      @php\r\n         $rowspan =$post->comments->count();\r\n         $totalRow = $rowspan+1;\r\n      @endphp\r\n\r\n      <td rowspan=\"{{$totalRow}}\">{{ $post->id}}</td>\r\n      <td rowspan=\"{{$totalRow}}\">{{ $post->post}}</td>\r\n      @foreach($post->comments as $comment)\r\n         <tr>\r\n            <td>{{ $comment->comment}}</td>                                       \r\n         </tr>\r\n      @endforeach\r\n   </tr>\r\n @endforeach    ');

-- --------------------------------------------------------

--
-- Table structure for table `one_to_many_inverses`
--

CREATE TABLE `one_to_many_inverses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Step` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Code` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `one_to_many_inverses`
--

INSERT INTO `one_to_many_inverses` (`id`, `Step`, `Code`) VALUES
(1, 'Table 1', 'User\r\nid, name'),
(2, 'Table 2', 'Category\r\nid, categoryName'),
(3, 'Table 3', 'Post\r\nid, user_id, category_id, post, description'),
(4, 'Relation To', 'Post To [User, Category]'),
(5, 'Model 3 [Post]', 'public function user(){\r\n   return $this->belongsTo(User::class);\r\n} \r\n\r\npublic function category(){\r\n   return $this->belongsTo(Category::class);\r\n}'),
(6, 'Controller', 'use App\\User;\r\nuse App\\Category;\r\nuse App\\Post;\r\n\r\npublic function index(){\r\n\r\n   $posts = Post::all();\r\n\r\n   foreach ($posts as $post) {\r\n      echo $post->id;\r\n      echo $post->user->name;\r\n      echo $post->category->categoryName;\r\n      echo $post->post;\r\n      echo $post->description;   \r\n   }\r\n}'),
(7, 'Blade', '@php\r\n   $posts = App\\Post::all();\r\n@endphp\r\n@foreach($posts as $post)\r\n   <tr class=\"text-center\">\r\n      <td>{{ $post->id}}</td>\r\n      <td>{{ $post->user->name}}</td>\r\n      <td>{{ $post->category->categoryName}}</td>\r\n      <td>{{ $post->title}}</td>\r\n      <td>{{ $post->description}}</td>\r\n   </tr>\r\n @endforeach  ');

-- --------------------------------------------------------

--
-- Table structure for table `one_to_ones`
--

CREATE TABLE `one_to_ones` (
  `id` int(20) NOT NULL,
  `Step` text NOT NULL,
  `Code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `one_to_ones`
--

INSERT INTO `one_to_ones` (`id`, `Step`, `Code`) VALUES
(1, 'Table 1', 'User\r\nid, name, email'),
(2, 'Table 2', 'Address\r\nid, user_id, address'),
(3, 'Table 3', 'Phone\r\nid, user_id, mobile'),
(4, 'Relation To', 'User To [Address, phone]'),
(5, 'Model 1 [User]', 'User Model\r\npublic function getAddress(){\r\n        return $this->hasOne(\'App\\Address\');\r\n        return $this->hasOne(Address::class);\r\n        return $this->hasOne(Address::class, \'foreign_key\');\r\n        return $this->hasOne(Address::class, \'user_id\');\r\n        return $this->hasOne(Address::class, \'foreign_key\', \'local_key/Primary_key\');\r\n        return $this->hasOne(Address::class, \'user_id\', \'id\');\r\n    }\r\n    public function getPhone(){\r\n        return $this->hasOne(Post::class);\r\n    }'),
(6, 'Controller', 'use App\\User;\r\nuse App\\Post;\r\n\r\npublic function index(){\r\n\r\n      $data[\'Users\'] = User::all();\r\n      $data[\'Users\'] = User::with(\'getAddress\', \'getPhone\')->get();\r\n\r\n      foreach ($data[\'Users\'] as $User) {\r\n         echo \"Name: \" .$User->name. \"<br>\";         \r\n         echo \"Address: \" .$User->getAddress->address.\"<br>\";         \r\n         echo \"Phone\" .$User->getPhone->phone;\r\n      }\r\n}'),
(7, 'Blade', '@php\r\n   $users = App\\User::all();\r\n@endphp\r\n\r\n@foreach($users as $user)\r\n   {{ $user->name}}\r\n   {{ $user->getAddress->address}}\r\n   {{ $user->getPhone->Phone}}\r\n@endforeach   ');

-- --------------------------------------------------------

--
-- Table structure for table `one_to_one_inverses`
--

CREATE TABLE `one_to_one_inverses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Step` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Code` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `one_to_one_inverses`
--

INSERT INTO `one_to_one_inverses` (`id`, `Step`, `Code`) VALUES
(1, 'Table 1', 'User\r\nid, name, email'),
(2, 'Table 2	', 'Phone\r\nid, user_id, phone'),
(3, 'Relation To', 'Phone To [User]'),
(4, 'Model 2 [Phone]', 'public function user(){\r\n   return $this->belongsTo(User::class);\r\n}\r\n\r\nN:B: In this \"belongsTo\" function Name always will be model name.\r\nExample: If model name \"User\", the function name will be \"user or User\".\r\nBut if use \"getUser\" , the function will be face problem.\r\nSo always function name will be as like \"Model\" name.'),
(5, 'Controller', 'use App\\User;\r\nuse App\\Phone;\r\n\r\npublic function index(){\r\n   $phones = Phone::all();\r\n   foreach ($phones as $phone) {\r\n      echo \"Phone: \" .$phone->phone. \"<br>\";         \r\n      echo \"Name: \" .$phone->user->name.\"<br>\";\r\n   }\r\n}'),
(6, 'Blade', '@php\r\n   $phones = App\\Phone::with(\'user\')->get();\r\n@endphp\r\n\r\n@foreach($phones as $phone)\r\n   {{ $phone->phone}}\r\n   {{ $phone->user->name}}\r\n   {{ $phone->user->email}}\r\n@endforeach   ');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`id`, `user_id`, `phone`, `created_at`, `updated_at`) VALUES
(1, 1, '+880 1680607293', NULL, NULL),
(2, 2, '+880 1558102860', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `post` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `post`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1st Post', '1st Description', NULL, NULL),
(2, 2, 2, '2nd Post', '2nd description', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Code` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Output` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Md Aslam', 'aslam@gmail.com', NULL, '$2y$10$2ndl8taLi5Ug1h6gI3oWo.xdBpaNOTOJvwK//y7pvZcwqyLXV44jS', NULL, '2020-12-31 05:33:27', '2020-12-31 05:33:27'),
(2, 'Md Rahim', 'rahim@gmail.com', NULL, '$2y$10$Cp5bv7cl7LJGsH3sk7NdCeMkGWAVD4Pm0HaQa4U4EPZiV0JYrQBgW', NULL, '2021-02-11 04:59:50', '2021-02-11 04:59:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all__relations`
--
ALTER TABLE `all__relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `many_to_manies`
--
ALTER TABLE `many_to_manies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `one_to_manies`
--
ALTER TABLE `one_to_manies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `one_to_many_inverses`
--
ALTER TABLE `one_to_many_inverses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `one_to_ones`
--
ALTER TABLE `one_to_ones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `one_to_one_inverses`
--
ALTER TABLE `one_to_one_inverses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `all__relations`
--
ALTER TABLE `all__relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `many_to_manies`
--
ALTER TABLE `many_to_manies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `one_to_manies`
--
ALTER TABLE `one_to_manies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `one_to_many_inverses`
--
ALTER TABLE `one_to_many_inverses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `one_to_ones`
--
ALTER TABLE `one_to_ones`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `one_to_one_inverses`
--
ALTER TABLE `one_to_one_inverses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
