-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 19, 2023 at 07:53 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2023-11-03 06:26:27', '2023-11-03 06:26:27'),
(2, 'Web Design', 'web-design', '2023-11-03 06:26:27', '2023-11-03 06:26:27'),
(3, 'Personal', 'personal', '2023-11-03 06:26:27', '2023-11-03 06:26:27');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_02_091911_create_posts_table', 1),
(6, '2023_11_02_143348_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Odit qui rerum.', 'quis-vero-sed-dolorum-et', 'Est aut est qui. Qui quaerat quia non est ut. Adipisci aut minima quisquam debitis.', '<p>Dolorem ut praesentium voluptatem aut sed. Eos illo molestiae assumenda expedita quo consequatur aut dolorem. Porro reprehenderit et ea ullam qui est. Ratione et modi enim et ullam.</p><p>Aut earum sit dignissimos quae. Aliquid et quia perferendis reiciendis doloremque. Aut quis autem at ut illo libero. Ea omnis reiciendis aut.</p><p>Dolor quo nemo voluptas. Totam cupiditate at quia laboriosam quisquam. Aut dolorem quam molestiae nisi velit error quibusdam labore.</p><p>Et ea alias dolorem mollitia. Sunt sed reiciendis et velit rerum. Consectetur odio minus ea hic dolores libero.</p><p>Omnis error reprehenderit alias est dolore voluptatem aut. Repellendus praesentium nesciunt reiciendis fugit vitae quidem.</p><p>Ratione autem omnis necessitatibus amet. Rem et dolorum consequatur pariatur ut. Ratione culpa inventore dolorem.</p><p>Quo pariatur facilis distinctio aut. Repudiandae nobis totam nobis vel. Non repellendus iure quisquam enim eos perferendis. Sit itaque voluptas quis repellat.</p><p>Iure porro ipsam totam enim repellendus eveniet. Error aut dicta sed cum illo. Ratione corrupti atque iure sint quia.</p><p>Ea iusto illo sit voluptatem enim est culpa. Omnis doloremque earum non sit. Repellendus aperiam et id temporibus odio. A sint quos velit consequatur in.</p>', NULL, '2023-11-03 06:26:27', '2023-11-03 06:26:27'),
(2, 1, 3, 'Quos quis mollitia.', 'iure-qui-aut-sint-magni', 'Cupiditate velit odio molestiae repellendus. Occaecati error quis praesentium laudantium unde. Ea quidem velit voluptatem officia officiis. Omnis officiis laudantium aperiam mollitia assumenda praesentium.', '<p>In dolor animi ut repellat veniam. Molestiae reprehenderit sapiente debitis et nisi et.</p><p>Sequi voluptatem amet quia perspiciatis ut labore officia libero. Voluptate aliquid sed omnis dolorem maxime adipisci. Autem autem perspiciatis natus ratione dolorum natus rerum.</p><p>Blanditiis dolorem numquam ex incidunt natus iusto. Corporis reiciendis hic est consequatur quos. Ut qui ut tempore vel provident fugiat minus. Illo iste quia eum harum quos est.</p><p>Asperiores dolores at amet quidem sapiente. Fugiat architecto mollitia et quia dolore perferendis et dolores. Et excepturi dolor dicta molestias.</p><p>Eius est sed eligendi explicabo. Qui qui iusto aperiam animi veniam omnis architecto. Sint doloremque earum rerum in.</p>', NULL, '2023-11-03 06:26:27', '2023-11-03 06:26:27'),
(3, 1, 3, 'Quo optio quidem nemo delectus quo minima.', 'molestiae-corporis-blanditiis-expedita-ipsa-et-nostrum-dicta', 'Laborum labore iure in molestiae consequatur. Pariatur commodi dicta in in veritatis fugit dolores. Quia eligendi voluptas sed.', '<p>Nihil voluptas commodi eligendi qui. Consequatur quam quam est quia nobis. Voluptatem error quam porro in nemo neque dolor.</p><p>Necessitatibus necessitatibus consequuntur voluptatem qui vitae voluptatem voluptatem. Eligendi tenetur ipsum voluptas non rerum voluptatem. Iste ipsam rerum at. Tempora voluptas quos doloribus eos enim optio.</p><p>Ut quo qui sint et consequuntur. Cumque vitae hic error. Eum voluptatum aut laudantium voluptatem recusandae commodi.</p><p>Quis quae voluptatibus incidunt est voluptatibus optio alias dolorem. Veritatis cum minima et ullam minima animi. Qui minus sapiente veniam ea officiis. Doloribus ipsam atque porro debitis nesciunt deleniti voluptatum.</p><p>Et cum provident pariatur est officiis unde quod voluptatibus. Nesciunt sequi consectetur perspiciatis. Earum in voluptatum aspernatur velit rerum eius eos est. Nostrum provident sit eos dolore quaerat facere iure.</p><p>Dolor architecto similique enim corrupti et ipsum accusantium. Omnis sed doloribus magni voluptatem sit hic incidunt. Accusantium fuga sunt exercitationem fuga consequatur blanditiis impedit. Totam dignissimos quaerat et autem laboriosam iste.</p><p>Sit consequatur minima aperiam. Consectetur quo sunt labore aut voluptas saepe. Dolore occaecati autem sit nostrum magnam.</p><p>Maxime sed id eius quia deserunt sunt et. Dolorem quia impedit facilis quia illo deserunt qui. Quo delectus et expedita cupiditate ut eum rerum. Sed sit et atque ad eius et unde.</p><p>Aliquam fugit rerum libero in laboriosam aut. Unde ducimus eius quisquam cupiditate perferendis. Commodi sed rerum voluptas repellat.</p><p>Et et officia impedit est provident quo. Numquam et nihil impedit in exercitationem nesciunt. Eveniet sunt sint est qui.</p>', NULL, '2023-11-03 06:26:27', '2023-11-03 06:26:27'),
(4, 2, 1, 'Perspiciatis non molestiae ut id qui voluptates reprehenderit sit enim consequatur.', 'eveniet-in-provident-id-explicabo-ea-sint-quam', 'Velit totam in totam blanditiis. Laborum laborum non cum tenetur sit. Fuga qui nihil labore.', '<p>Consequuntur qui voluptas veniam quia. Impedit necessitatibus omnis quia debitis nisi veritatis cumque. Vitae porro consequatur animi magnam cum eligendi.</p><p>Repellat sed aliquam incidunt iste. Deleniti neque pariatur esse eligendi hic quibusdam minus. Eaque in autem laborum et molestiae unde. Velit eum sed accusantium ut.</p><p>Dolor temporibus ut voluptas eveniet. Corrupti aut sit praesentium ut sed. Ut provident repellat soluta voluptas et qui. Officiis doloremque neque rerum.</p><p>Praesentium impedit veritatis expedita quis ducimus. Dicta quas tempore eum vel. Est commodi est cupiditate cum.</p><p>Occaecati illo eum ut consequatur blanditiis. Vel voluptatem quos explicabo. Aut nobis distinctio tempora et veritatis assumenda modi.</p>', NULL, '2023-11-03 06:26:27', '2023-11-03 06:26:27'),
(5, 1, 2, 'Nam voluptatibus porro sit explicabo doloribus qui.', 'reiciendis-voluptas-quaerat-magni-labore-voluptatem', 'Illum vitae blanditiis inventore. Tenetur vitae omnis doloremque provident ut veniam veritatis sed. Itaque iusto qui nobis minima qui. Minima quia quidem est ea odit aliquam.', '<p>Libero delectus sint atque dolor aut aspernatur rerum. Laboriosam quam occaecati rem quo aut ex. Natus perferendis non similique et libero quaerat consequuntur.</p><p>Nihil in quae ut neque voluptatum. Similique maiores unde est rem. Suscipit error tenetur consequatur laborum consequatur ut eum.</p><p>Sed voluptates aut nihil ut. Molestiae veritatis ipsam atque et omnis. Aliquid ea minus asperiores esse.</p><p>Eos recusandae omnis dolores eaque. Beatae molestiae nulla et ipsam.</p><p>Distinctio itaque omnis enim voluptatum nihil tempora. Nostrum delectus ut delectus. Sapiente inventore aut ex ut. Repudiandae inventore voluptate repellendus mollitia consequatur.</p><p>Odio ab libero inventore. Voluptate alias at maiores sed enim. Expedita perspiciatis nihil recusandae facere et commodi dignissimos.</p>', NULL, '2023-11-03 06:26:27', '2023-11-03 06:26:27'),
(6, 1, 3, 'Debitis excepturi autem qui voluptates.', 'dolores-voluptatem-neque-quia-debitis-rerum-possimus', 'Accusamus sit est dolor rerum. Esse voluptas nihil rerum voluptas quo. Sunt veritatis iure voluptatum eveniet vel. Vel illo quia explicabo omnis.', '<p>Non placeat aut laboriosam illum. Repellendus ad asperiores rerum consequatur est. Temporibus et maxime earum ut non earum tenetur.</p><p>Est cupiditate magnam architecto ut animi. Accusantium consequatur fuga fugit quia exercitationem deleniti.</p><p>Tempora laborum et culpa ea. Quam aut ut sit. Facere impedit officiis maxime enim dolore.</p><p>Voluptas et sit voluptatem reiciendis facere. Architecto enim non optio est est quibusdam commodi. Dolorum et minus cumque sint accusantium tenetur.</p><p>Impedit voluptatum est quam omnis et molestiae distinctio cumque. Qui accusantium et cupiditate vitae veritatis dolores natus. Eius officia quia ex non laborum dolorem aut. Eveniet molestiae quod quidem accusamus provident aperiam.</p>', NULL, '2023-11-03 06:26:27', '2023-11-03 06:26:27'),
(7, 1, 1, 'Suscipit modi possimus qui et voluptas commodi.', 'ipsam-voluptas-exercitationem-nihil-officia', 'Et illum iure aperiam cum nihil repellendus ut. Ab delectus voluptatum dolor vel aut recusandae. Consequatur nemo cupiditate similique quae architecto magni. Ut deleniti natus consequatur magnam et.', '<p>At architecto eveniet aliquam et sequi nisi. Voluptatem nemo nam quaerat officia repellat totam et. Ut sit repudiandae quidem repellat.</p><p>Eligendi voluptatum architecto numquam vitae. Quo exercitationem beatae aut beatae. Qui rerum dolores nisi molestiae omnis ex in.</p><p>Cum et qui porro rerum magnam aperiam culpa. Ut repellendus aut beatae doloremque. Consequatur in tempore quis dolor nemo qui. Rerum et est veniam molestiae nulla.</p><p>Nesciunt adipisci dolorum quia nisi reiciendis fugiat omnis. Aut qui quia minus necessitatibus eveniet porro. Rem assumenda voluptatem ipsam molestiae consectetur aut exercitationem. Fugiat voluptatum asperiores in officiis mollitia facere.</p><p>Amet vel nesciunt et animi neque cumque ab. Tenetur at quia occaecati dolores eum. Vel quo ea dolore quia molestiae sunt voluptatem.</p><p>Ipsam perspiciatis fugiat repellat aut reiciendis cumque. Est occaecati esse ipsum distinctio. Voluptates dolorum est voluptas.</p>', NULL, '2023-11-03 06:26:27', '2023-11-03 06:26:27'),
(8, 1, 1, 'Expedita rerum rerum.', 'est-officiis-nulla-similique-molestias-porro-id', 'Et quaerat sed et. Voluptatem libero consequuntur soluta pariatur quia voluptas. Consequatur rerum sit reiciendis ut ad ut blanditiis. Consectetur ipsa aut molestiae fuga.', '<p>Necessitatibus velit eaque libero omnis. Dolores magni velit harum consequatur consequatur enim omnis aut. Eaque dolore ex aliquid occaecati.</p><p>Rerum ut harum eveniet odit. Hic sed commodi consequatur hic blanditiis.</p><p>Nostrum et porro libero aliquam. Nam neque quo consequatur id sequi voluptatem ex. Praesentium asperiores omnis atque et quaerat voluptates. Quia aspernatur non officia ipsam nihil.</p><p>Nemo quisquam repudiandae quia nihil. Sint ipsum ut reiciendis mollitia optio eius quae. Ex mollitia quisquam velit deleniti sint. Voluptates atque et et omnis.</p><p>Rerum voluptatem asperiores numquam facere ipsam eum. Ab possimus ut fugiat quos vero aliquam voluptatibus. Voluptate eos officiis delectus neque.</p>', NULL, '2023-11-03 06:26:27', '2023-11-03 06:26:27'),
(9, 2, 2, 'Molestias natus error maxime quas nesciunt.', 'sit-ratione-autem-est-architecto-sunt', 'Et temporibus qui et porro quo. Harum nulla nisi minus ipsa quam numquam qui et.', '<p>Laboriosam culpa et voluptate iusto est commodi iure. Laboriosam nostrum vel eos deserunt expedita facilis. Dolores tempore voluptas distinctio quia ab rem.</p><p>Distinctio ea et impedit ea assumenda. Molestias hic repellendus dolores eaque voluptatem enim. Beatae occaecati voluptatum ut ab.</p><p>Voluptas sequi repellat et autem possimus aut porro. Laboriosam neque nisi molestiae officiis similique et et modi. Minus corrupti ullam debitis esse.</p><p>Error minima neque incidunt qui. Distinctio tenetur aut quas voluptas.</p><p>Eveniet perspiciatis et quis quam est a. Soluta commodi voluptatum unde odit earum. Assumenda beatae error officiis earum. Tempora vel neque fugiat sapiente.</p><p>Voluptas ut nam officia quisquam architecto consectetur. Dicta quia error modi delectus. Unde expedita natus sapiente tempore eum labore. Ipsa praesentium itaque fugiat illo.</p>', NULL, '2023-11-03 06:26:27', '2023-11-03 06:26:27'),
(10, 2, 2, 'Cupiditate nisi sunt et consequatur pariatur iusto quae cumque ratione.', 'quo-occaecati-magni-est', 'Blanditiis assumenda id ratione est velit magnam placeat. Quibusdam dolor quaerat sunt velit velit consequuntur.', '<p>Delectus ipsa a qui tenetur. Veritatis tempore recusandae at libero autem neque. Odit accusamus necessitatibus est vel repellendus ad beatae. Quam quia ratione eligendi recusandae quis.</p><p>Sint nisi dolore inventore ab provident. Ut est voluptates non. Accusamus dignissimos iusto molestias laudantium repudiandae ullam dolorum.</p><p>Dolorem laudantium non corrupti enim molestiae. Ullam a rem dolore. Voluptates ex qui quibusdam dignissimos similique dolor maiores.</p><p>Ex eos culpa quos. Aliquam provident laborum quasi dolor officiis eum nemo. Repudiandae architecto nulla rem.</p><p>Animi quia eos occaecati dolorem quidem deserunt. Earum laudantium quas excepturi laudantium quis id. Aut ut nesciunt voluptatem perspiciatis est quia.</p><p>Recusandae provident labore dignissimos animi sint voluptatem illum. Iure eligendi illo assumenda quod eos adipisci quae. Velit quam quia in quas nostrum qui temporibus. Debitis recusandae dolores occaecati modi. Et voluptatibus laboriosam dicta.</p><p>Neque doloribus fugit aut omnis. Asperiores eum omnis dolorem natus. Inventore illum et possimus. Blanditiis totam rerum rem facilis.</p><p>Eum et molestiae et. Voluptatem accusamus beatae quia vel aut. Minus et qui voluptate voluptatem rerum.</p>', NULL, '2023-11-03 06:26:27', '2023-11-03 06:26:27'),
(11, 2, 2, 'Quos magni nisi ipsa quis molestiae.', 'iusto-itaque-voluptatum-quasi-voluptates-sed-quo', 'Nesciunt similique ab quas et dolorem quos ratione. Debitis quibusdam voluptas dicta nisi occaecati velit libero.', '<p>Reprehenderit cum ut est aspernatur id voluptatem. Pariatur illum non eos facere eos ipsam. Molestias sint voluptatibus illum. Ducimus aut sed amet velit perferendis molestiae delectus.</p><p>Qui reiciendis quam commodi. Placeat deleniti dolores at quo. Animi quia deleniti accusantium nihil et voluptatem sit. Quo doloribus maiores voluptate qui. Aut harum sed rerum voluptatem animi et non.</p><p>Quo maiores repudiandae veniam sunt enim pariatur voluptate. Praesentium in ipsa nihil voluptatem ipsa. Perspiciatis error perferendis illo commodi harum commodi. Voluptatem architecto amet laborum et dignissimos.</p><p>Odio quia minima praesentium atque. Mollitia iure molestias distinctio.</p><p>In officia labore perspiciatis nemo vero ut incidunt. Odit voluptas soluta iste non nesciunt repudiandae. Explicabo sit rerum necessitatibus nihil nesciunt. Animi voluptatum at totam totam est reiciendis placeat. Vel est excepturi culpa blanditiis animi molestiae nam.</p><p>Odit sunt error quae occaecati. Pariatur quasi natus aut non voluptatibus perferendis quod fugit.</p>', NULL, '2023-11-03 06:26:27', '2023-11-03 06:26:27'),
(12, 2, 3, 'Quia enim tempora vel.', 'quia-illo-at-aut', 'Aliquam dolor quam consequatur sed eum. Qui dolore reiciendis neque est. Enim et vel sint explicabo aut. Fugiat magni impedit molestiae cupiditate quo nisi autem optio.', '<p>Fugiat totam deserunt praesentium repellendus tenetur voluptatem dolorum. Nostrum amet sequi nam eligendi. Enim delectus sit at similique facilis nisi.</p><p>Sint eos recusandae ipsa. Nostrum beatae maiores quo rerum quia id suscipit. Perspiciatis porro esse odio quasi quam rem id.</p><p>Odit qui est doloremque nihil omnis. Corrupti recusandae fugit harum tempore tempore. Ut harum natus minima.</p><p>Quia ut enim minus ut cupiditate quaerat consectetur. Quis repudiandae et quia dolor. Consequuntur ipsam officia sit aut. Sunt voluptatibus omnis qui exercitationem dolorem omnis cupiditate.</p><p>Odio autem praesentium voluptas quis ut. Modi reiciendis aut molestiae architecto neque ut. Error aut placeat doloremque.</p><p>Autem quod est rerum omnis non. In voluptas ut quia sed porro. Et quidem optio sed sed pariatur explicabo distinctio.</p><p>Voluptatum quo et delectus voluptatum at quia. Enim nemo alias cumque et aliquam quis. Ut aliquid dolores vitae neque et officia optio. Et quis maiores non voluptatem ratione quia.</p><p>Inventore officia ea vel aut et. Perferendis dolor vitae mollitia sed autem sit laborum. Nesciunt eum exercitationem ipsum ipsam amet ad pariatur autem. Ut dolores quasi quia. Exercitationem reiciendis ut excepturi voluptate aut est.</p>', NULL, '2023-11-03 06:26:27', '2023-11-03 06:26:27'),
(13, 1, 3, 'Aut reprehenderit provident reprehenderit iusto dolorum.', 'rem-mollitia-beatae-reiciendis-aspernatur', 'Officiis quia perferendis sed fugiat minima quia inventore. Minima rem incidunt doloribus. Eaque ipsa et sit rerum qui.', '<p>Corporis enim omnis animi. Ab consequatur sit sit. Voluptas qui voluptatum repudiandae natus velit.</p><p>Dolorum officia quia nisi. Et ullam fugiat beatae minima omnis amet. Voluptatem quia aliquam nam sed libero eaque repudiandae. Laudantium laborum inventore voluptas neque ullam.</p><p>Adipisci et et inventore atque dolores eligendi sed veritatis. Eveniet unde officiis et autem vel nulla. Quia quod id provident laborum et iusto sequi. Dolores quod sapiente saepe nihil cupiditate.</p><p>Similique sed quia repudiandae minima consequuntur. Accusantium dolores adipisci libero.</p><p>Quae voluptatem doloribus accusantium dicta rerum. Similique facilis rerum reiciendis et quo. Vel recusandae natus deserunt qui qui pariatur saepe placeat. Incidunt tempora nihil praesentium quas labore laudantium.</p>', NULL, '2023-11-03 06:26:27', '2023-11-03 06:26:27'),
(14, 2, 2, 'Sit ut eius distinctio pariatur architecto voluptatem.', 'eligendi-illo-velit-ut', 'In eos exercitationem non quae. Voluptatem et perspiciatis quaerat deserunt repellat voluptatibus. Corporis amet aut officia earum sit quae. Sequi explicabo inventore velit porro pariatur nam.', '<p>Quas et cupiditate aut voluptatibus ut. Est perspiciatis voluptatem maxime vitae dicta molestias dolorem eaque. Labore rerum dolor minus sit minima ut odio quasi.</p><p>Consequuntur modi occaecati aut. Reprehenderit et recusandae iure aut. Adipisci nihil alias autem excepturi aut voluptatem pariatur. Facilis unde ut optio rem error.</p><p>Molestiae nisi accusantium illo accusamus officia beatae. Molestiae in at saepe libero fugit pariatur fugiat est. Esse corrupti facere laboriosam non praesentium in. Nesciunt laudantium alias non.</p><p>Et consequatur quas repellendus magni in non et accusamus. Voluptatibus sequi quam ipsa modi. Quo et a possimus nobis ea aperiam. Et omnis odit dignissimos omnis ratione veritatis.</p><p>Incidunt vitae ipsum asperiores aut et assumenda voluptates. Non ab ut maxime minus. Neque laboriosam a quos dignissimos ea laudantium vero officiis.</p><p>Harum repudiandae voluptates architecto enim. Incidunt perferendis exercitationem sed praesentium. Voluptas aut illo minima laboriosam ullam occaecati reprehenderit. Sunt vel facilis distinctio qui similique sequi et.</p><p>Dolor voluptas dolor voluptates molestias qui reprehenderit. Et possimus ea qui eligendi ad qui. Officiis ea repellat optio aut tempora excepturi temporibus.</p><p>Laudantium voluptates sapiente in quis accusamus sapiente nisi. Doloribus officia est cumque quam numquam.</p><p>Commodi voluptas quaerat pariatur. Deserunt eaque ut dicta quae cupiditate et. Rem cupiditate quo totam cumque quos voluptas minima quisquam.</p>', NULL, '2023-11-03 06:26:27', '2023-11-03 06:26:27'),
(15, 2, 2, 'Et dolorem nulla et ut rerum accusamus.', 'similique-animi-accusantium-dolor-earum-ut-non', 'Quis a modi magni velit cum hic. Rerum qui expedita animi repellat ut est repudiandae. Quis dolores voluptatem aliquam quod doloribus voluptas sequi doloribus. Molestiae dicta totam unde exercitationem est corrupti sed.', '<p>In autem vitae temporibus nesciunt. Ducimus iure dolorum ut veniam occaecati sit eum iusto. Minima enim maxime in. Sunt officia in id eos laborum voluptas repellat.</p><p>Quis possimus at fuga est et. Laborum porro sed possimus voluptates nihil dolorem. Blanditiis quasi deserunt a. Error adipisci hic sed nam.</p><p>Doloremque fugit sit sed consequatur excepturi voluptas perspiciatis quia. Eaque officia fugiat dignissimos sint libero doloremque eligendi. Doloribus vel quidem est.</p><p>Recusandae est est cum molestiae. Sunt nihil sed sunt soluta. Modi et a sit voluptatem cum ullam. Vel aut tenetur fugiat voluptas illum autem. Qui aut aliquid optio doloribus omnis odio praesentium.</p><p>Ipsam voluptates aut maiores iure ad aperiam. Ut cumque qui aut a repudiandae et. Qui ipsa consequatur et quia itaque a. Eaque officiis optio non quam quae nam.</p><p>Voluptates et dolores ut vero alias. Vitae veritatis voluptatum iusto doloremque ut. Incidunt ea et fuga impedit nihil quod omnis.</p>', NULL, '2023-11-03 06:26:27', '2023-11-03 06:26:27'),
(16, 1, 1, 'Occaecati molestias est molestias architecto sunt.', 'omnis-ad-eos-hic-voluptates-aperiam-aspernatur-illum-repellendus', 'Occaecati voluptatibus eius quia autem tempore qui voluptas nam. Provident officia assumenda debitis ducimus eligendi. Qui minima tempora omnis odio. Assumenda alias rerum placeat dicta dolores.', '<p>Ratione placeat ratione maxime animi quae et facilis. Doloribus et minus qui dolorem. Fugiat aut nulla ipsam rerum impedit laboriosam dolorem commodi. Quod ut porro rerum distinctio corporis assumenda.</p><p>In nam velit et quia consequatur at facilis dolores. Omnis repudiandae quibusdam alias ducimus ullam. Sint ipsam id ullam molestiae aut et rem. Ut optio cumque ut blanditiis.</p><p>Aut quo perspiciatis laboriosam sint ut rerum. Tempore delectus distinctio porro voluptas doloremque voluptas. Modi est placeat voluptatum et autem quae ut. Omnis repellendus modi vel quos assumenda voluptatem soluta.</p><p>Tempore ut corporis dolorem reiciendis eos. Et veniam suscipit sint vero sit ea. Possimus tenetur eius suscipit similique incidunt voluptas harum.</p><p>Totam sed eveniet eos vitae eos laboriosam. Et quo quam sed ipsum. Laborum quaerat dolore aliquid sequi ut recusandae. Et recusandae autem atque vitae ut molestiae quas.</p><p>Odio dolores atque architecto id laudantium aperiam inventore asperiores. Placeat soluta sed et est. Ducimus nihil ut dolor hic id.</p><p>Incidunt et aut error fugiat quibusdam cupiditate et. Autem nihil impedit exercitationem nihil in itaque ducimus. Consequatur sequi eaque rerum similique eum deleniti excepturi. Aut est neque fugiat. Officia maiores aut occaecati voluptas quasi iste consequatur amet.</p><p>Ut ab eveniet sed voluptatem. Quia architecto dolor quia eligendi adipisci est.</p><p>Qui vero facere voluptatum nemo assumenda. Quibusdam non id dolor non a ad sint ut. Asperiores hic libero itaque.</p>', NULL, '2023-11-03 06:26:27', '2023-11-03 06:26:27'),
(17, 1, 3, 'Assumenda sequi ex accusamus reiciendis ipsum molestiae voluptas.', 'qui-enim-voluptas-est-facilis-adipisci-assumenda-molestiae', 'Doloremque omnis libero sed quae earum quia magnam. Omnis error perferendis sed quisquam. Aut maxime aut sit dolorem rerum cupiditate ut. Distinctio enim natus quidem voluptatibus distinctio voluptatibus ea id.', '<p>Porro et ut doloremque animi tempora ea. Itaque sint nesciunt enim corrupti vitae.</p><p>Distinctio earum ullam officia perspiciatis ullam. Libero dignissimos reprehenderit fuga. Eos et autem reprehenderit consequatur quisquam. Eligendi quia sit ut animi.</p><p>Saepe aut et quia cum. Quia minus voluptas expedita qui voluptatibus quidem. Ratione deleniti ut provident delectus voluptas. Sed fugit quo est quis dignissimos sed et.</p><p>Error dicta quisquam et officiis voluptas. Et eligendi nemo qui fugiat eaque sunt rerum. Numquam officiis in rerum itaque quis magni ipsa.</p><p>Iusto nam provident occaecati quia culpa ratione minus. Itaque ut omnis repudiandae aut. Dolorem qui et culpa maxime cumque quis.</p>', NULL, '2023-11-03 06:26:27', '2023-11-03 06:26:27'),
(18, 1, 3, 'Corrupti rerum placeat.', 'officia-repudiandae-voluptas-facilis-eius-quidem-non-voluptatem', 'Ut saepe ea dicta. Tempora eligendi quis dolores amet. Maxime culpa velit vero enim optio. Autem nisi est eum sunt sunt blanditiis.', '<p>Non perferendis reiciendis est dignissimos suscipit et. Corporis et quis est totam. Tempore assumenda possimus ex qui sit magnam. Laboriosam ducimus ipsa soluta iusto eaque.</p><p>Molestiae qui eligendi et praesentium. Numquam nostrum labore accusantium. Culpa sunt omnis consequatur quis nihil praesentium cumque possimus.</p><p>Natus et facilis qui ex eius. Iusto maiores consequatur ut officiis consequatur sit.</p><p>Provident et unde aut sit voluptatem accusantium. Id a voluptates incidunt quisquam id est. Nisi eum nihil dolor est. Necessitatibus laudantium dolores ut iste et in vero velit.</p><p>Modi voluptatem fuga commodi adipisci consequatur. Eum explicabo ut consequuntur temporibus sint. Ea illo minus voluptatem et aut.</p><p>Voluptatum labore maiores minima id facilis. Dolorem ut cupiditate nostrum blanditiis ea dicta facilis. Iusto est quasi vel provident rerum.</p><p>Officiis qui esse molestiae. Optio nihil excepturi alias molestiae. Aut corrupti maiores officiis et eum.</p>', NULL, '2023-11-03 06:26:27', '2023-11-03 06:26:27'),
(19, 2, 2, 'Animi facere eos repellat expedita.', 'exercitationem-consequatur-rerum-ad-nulla-repellat-officiis', 'Sequi consequatur tempora assumenda qui voluptatem iure vel. Libero facere velit minus consequatur repellat. Suscipit ut fugiat et et tempore fugit. Molestiae eaque qui voluptas ipsam magnam esse.', '<p>Rerum saepe at repudiandae ipsam. Reiciendis cum vel beatae et molestiae. Doloribus deserunt exercitationem voluptatem quas adipisci quos magnam. Voluptas et eveniet velit dolores.</p><p>Reiciendis quae corporis rerum ex. Fugiat totam quisquam molestiae sint rerum ipsa. Mollitia et eum molestiae earum. Eveniet aut consectetur enim architecto et.</p><p>Quas incidunt omnis consequatur culpa natus placeat est molestiae. Tempore ex iste modi sapiente autem. Et facilis est ut minima.</p><p>Animi sequi quas mollitia laborum et. Est ducimus sunt omnis eos veniam minus ex. Nostrum fugit et architecto rerum consequuntur id veritatis.</p><p>Ea occaecati accusamus et id reprehenderit fugiat facere ipsum. Architecto enim odio dolor sit est rerum doloremque. Molestiae aut dolores voluptas quaerat doloremque modi molestiae. Rem amet sint tempora assumenda distinctio et. At ipsum qui recusandae esse consequatur voluptas quia.</p><p>Et ea reprehenderit aut at sequi. Natus minus optio sed sunt qui. Est rerum nihil impedit voluptas quas consequatur.</p><p>Pariatur ea nobis sed unde neque id dolore. Nulla cum cupiditate autem ut aut ut.</p><p>Dicta quo consequatur earum est quaerat perspiciatis. Ratione distinctio eos aliquid unde in dolorem. Et praesentium amet reprehenderit officiis ut debitis. Sed deserunt enim nobis quo non.</p>', NULL, '2023-11-03 06:26:27', '2023-11-03 06:26:27'),
(20, 1, 1, 'Reprehenderit animi ut quia deserunt esse.', 'voluptatum-autem-voluptatem-temporibus-accusamus', 'Architecto quod voluptatum velit asperiores enim quibusdam. Labore natus et numquam a illum et. Quas quod accusantium eos deserunt itaque provident. Quasi tenetur ut vel et amet.', '<p>Id aspernatur velit dolor non qui. Praesentium fugit sequi quia id qui debitis. Fuga aut vero doloribus voluptates.</p><p>Omnis ab ut aut impedit recusandae minima neque. Voluptatem consequuntur molestiae non omnis saepe delectus ipsa. Nemo ut necessitatibus alias harum est animi rem. Eveniet veniam doloremque sequi numquam.</p><p>Est quidem et porro ipsum consequatur. Consequatur non nam voluptatem quis laboriosam unde. Quaerat ipsa beatae corrupti et suscipit quasi.</p><p>Praesentium et ea voluptatum. Ipsa rerum esse libero odio sit aperiam inventore. Accusantium quos qui ratione illo. Quasi eum atque cupiditate quibusdam.</p><p>Eos quia facere earum mollitia. Exercitationem a quam molestiae. Molestiae voluptatem aperiam placeat debitis et dolore.</p><p>Officia ut voluptatem quo ut odit non et sequi. Eaque nemo excepturi dolorem veritatis. Et ad consectetur sint quam. Ratione est fuga et reiciendis quia.</p><p>Ducimus nam voluptas expedita. Quod possimus ipsam iusto aut in est et. Voluptatum illum ratione cupiditate quia ut temporibus ratione animi.</p><p>Commodi qui cumque aut aliquam et. Voluptas aut id qui facilis culpa in amet. Sint commodi qui qui consequatur rerum dolorum sequi. Sequi autem nostrum libero consequatur.</p>', NULL, '2023-11-03 06:26:27', '2023-11-03 06:26:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Irfan Sitompul', 'purwadi07', 'ozy59@gmail.com', '2023-11-03 06:26:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'N9qzlSlOHwF42Z8OtaaiuoqcvpR7Cv51ARxwoVY5nHdpktYt5kHhdy0Wm8gx', '2023-11-03 06:26:27', '2023-11-03 06:26:27'),
(2, 'Darmaji Haryanto', 'bancar.lailasari', 'winda61@gmail.com', '2023-11-03 06:26:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pPBIhEF4qP', '2023-11-03 06:26:27', '2023-11-03 06:26:27'),
(3, 'Bakiadi Wasita', 'mutami', 'diana.lailasari@example.org', '2023-11-03 06:26:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C0JEC9hzIK', '2023-11-03 06:26:27', '2023-11-03 06:26:27'),
(8, 'Putri', 'putr', 'myputunity@gmail.com', NULL, '$2y$10$8FjcA0ZvzElIV/81Ih/BhucSf2YfqNOutS3F6kDlrytupYUDF65e.', NULL, '2023-11-05 22:47:38', '2023-11-05 22:47:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
