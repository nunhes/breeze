-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 01, 2022 at 08:25 AM
-- Server version: 8.0.28
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `breeze`
--

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_23_113041_create_posts_table', 2),
(6, '2022_05_23_185301_create_posts_table', 3),
(7, '2022_05_23_185450_create_tags_table', 3),
(8, '2022_05_23_185504_create_post_tags_table', 3);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `slug`, `title`, `description`, `post`, `created_at`, `updated_at`) VALUES
(1, 1, 'dolor-iusto-sed-itaque-incidunt', 'Dolor iusto sed itaque incidunt.', 'Expedita sunt iusto architecto nisi culpa. Nemo est veniam reiciendis inventore non quasi ut nulla. Laudantium modi quas voluptate esse ipsam natus. Blanditiis dolores tempore ut sit culpa.', '<p>Voluptatem ut tempora debitis earum accusantium est. Hic iste quia qui quaerat. Rem sint non et. Ratione assumenda iste laboriosam nesciunt.</p><p>Quis laboriosam harum reiciendis laboriosam et. Sed tenetur dolore ducimus doloribus aliquam. Quia facere voluptates id vel a. Aut blanditiis quod eum.</p><p>Fuga dolorum non provident sit dolore ratione. Sed et dicta ratione officiis. Dolores dolor eius est. Iusto incidunt dicta culpa voluptas ullam.</p><p>Tempore voluptas magni suscipit doloremque nihil. Ratione excepturi enim et et. Ut provident sunt aut provident laborum dolores consectetur. Repellendus sapiente eveniet eius magnam et vitae officiis omnis.</p><p>Non voluptas similique officia veniam consequatur tempora dolor rem. Vel laboriosam cum qui officiis modi. Illo autem ipsum quasi ut laborum sint. Repellat sint suscipit magni totam dolor et doloribus.</p>', '2022-05-23 17:09:05', '2022-05-23 17:09:05'),
(2, 1, 'nobis-est-eum-exercitationem', 'Nobis est eum exercitationem.', 'Delectus perspiciatis eaque est facilis. Quaerat voluptas voluptate facere natus. Aut quia saepe nihil sed iusto ducimus sapiente. Sint provident beatae unde sequi non.', '<p>Qui sequi quod voluptatem sunt. Quia qui iusto quas quis quia numquam. Sunt voluptates eaque magnam atque et. Id sit dolorem ducimus nihil. Id ut natus tenetur doloribus recusandae.</p><p>Adipisci alias fugit omnis dolorem eaque. Voluptas tempora optio qui quaerat id corrupti occaecati. Maiores est ipsa expedita eius minus iusto voluptatem. Similique aut ipsum reprehenderit at est animi.</p><p>Ea consequatur libero impedit nihil. Magni sit aperiam maiores et dicta repudiandae id aut. Esse id dolores enim unde laboriosam accusamus. Aut veritatis dicta nostrum quia. Necessitatibus consequuntur qui ipsam omnis in distinctio.</p><p>Sunt qui nemo impedit consectetur debitis consequuntur. Dolores repellat animi nihil commodi qui. Aut reiciendis autem officiis repudiandae.</p><p>Non recusandae corporis aut sunt officia iure eos distinctio. Quos et placeat delectus tempora praesentium. Mollitia eius perspiciatis consequatur illo sed est.</p><p>Voluptatum incidunt et occaecati et saepe voluptatem. Est voluptas voluptate aperiam inventore atque ea esse hic. Impedit rerum corrupti consequatur sint cum.</p><p>Omnis eligendi vero eligendi deserunt earum officia. Sint corrupti dolorem itaque quia esse illo enim. Accusantium aliquam laborum ipsa nobis a. Est ut ipsa suscipit qui repellat officiis.</p><p>Occaecati facilis nam pariatur id earum eos. Aut architecto eum quibusdam nisi voluptatem. Non est velit voluptas et.</p><p>Quidem illo et ut deleniti provident. Ut doloribus et quis aut ipsam aut aut. Odit nisi qui porro aliquid. Consequuntur hic quos voluptatem quas similique odio non.</p><p>Maxime rerum cupiditate accusamus cum. Nobis quo et accusamus possimus.</p><p>Et sapiente dolorem et tenetur. Est porro est earum nostrum sint. Iste tenetur velit enim perferendis expedita minus. Quibusdam similique esse aut labore repudiandae velit.</p><p>Nobis exercitationem dolor magnam est rerum tenetur voluptatem. Dolorem perspiciatis sunt quasi non odio deserunt eos. Rerum cum assumenda et sequi.</p><p>Enim reprehenderit consequatur voluptas sequi esse. Voluptas excepturi dolorem expedita consequatur quo dolor. Velit veritatis ut hic eos ipsam ducimus sunt. Quia illum cum nulla vitae.</p><p>Saepe harum excepturi dignissimos voluptas repellat ut. Reiciendis distinctio quia fugit natus dolorem quis. Voluptate velit labore corrupti officiis. Enim rerum ipsam velit nihil quia molestiae. Cum sed accusantium consectetur.</p><p>Nostrum animi natus blanditiis ex eligendi quia. Quasi ab et recusandae ut nihil. Libero culpa veritatis iusto consequatur labore. Tempore quis eveniet facilis expedita expedita reprehenderit nisi.</p>', '2022-05-23 17:10:46', '2022-05-23 17:10:46'),
(3, 1, 'dicta-quae-deserunt-repellendus-voluptatem-molestiae-quia', 'Dicta quae deserunt repellendus voluptatem molestiae quia.', 'Eius blanditiis beatae similique sit. Tenetur perferendis illum corrupti aut. Officiis laborum maxime perferendis ut quo rerum praesentium amet.', '<p>Quo perferendis quis a cumque quos veritatis. Vitae voluptatem repellat omnis voluptatem rerum eum cumque.</p><p>Autem aut quasi officia nisi ut placeat minus sed. Fuga voluptatem veniam possimus voluptatibus dolorum. Quo velit est vitae consectetur pariatur maiores expedita. Maiores omnis repellendus iure. Tempore doloribus ea accusamus omnis aliquid nihil.</p><p>Quidem beatae dolore cumque adipisci. Est vero quod nihil totam corporis minima ut dolores. Molestias mollitia laboriosam alias. Optio quia fugit quo id.</p><p>Adipisci excepturi quibusdam non natus sit omnis assumenda. Et iste qui quod rem culpa amet. Nulla itaque et neque et. Nulla sunt aliquam similique vel ipsam iste. Numquam laborum eum labore minus velit sed.</p><p>Quo ullam aut soluta maiores. Assumenda aut fuga illo minus unde in. Facilis ullam ut rerum accusantium dicta. Sapiente possimus qui repudiandae.</p><p>Maiores fuga ut harum esse ab omnis ullam. Et accusamus nemo veniam est. Sint voluptatem pariatur id pariatur dolorem aut.</p><p>Libero ex qui similique commodi a ut ullam. Eveniet nihil quia sequi et optio quia. Odit rerum expedita magnam labore ea necessitatibus. Eaque mollitia laboriosam molestiae facere voluptatum aperiam.</p><p>Nihil accusantium animi consectetur vero totam dolorem consequuntur. Eum sed nihil doloribus necessitatibus. Sint sint est iusto expedita vitae aut earum. Adipisci quia labore doloribus voluptatem eum repellendus recusandae illo.</p><p>Omnis ut natus ipsam quasi. Fugiat quidem non voluptas sunt beatae est culpa. Corrupti quas dolor et perspiciatis unde.</p><p>Ipsam qui adipisci nihil temporibus officiis autem. Dolores quibusdam quis qui quo dolor explicabo. Odio adipisci aperiam consequuntur dolor cupiditate sit.</p><p>Nihil quod veniam suscipit. Consectetur dolorum rerum quos in non. Voluptas natus aut optio dolor aut qui.</p><p>Minima et qui facere dolorum eaque sed pariatur omnis. Qui iure incidunt facere occaecati. Explicabo vel eum animi reprehenderit molestiae ipsum consequatur. Ab eum ipsum neque. Nihil minus corporis quisquam quia sint tempora id sed.</p><p>Blanditiis deserunt ut officiis rerum ratione. Ut dolores voluptas error nemo aperiam.</p><p>Ea earum ut expedita et aut porro adipisci. Nihil illo sed sed aut. Vel earum autem quidem aut sunt.</p><p>Placeat aspernatur fugiat vero corrupti ut ipsum. Quae repudiandae et nihil aut omnis. Voluptas consectetur deleniti quas non provident explicabo impedit repudiandae.</p>', '2022-05-23 17:10:46', '2022-05-23 17:10:46'),
(4, 1, 'nihil-ratione-aut-delectus-amet', 'Nihil ratione aut delectus amet.', 'Ea illum odit et omnis. Quam itaque quia voluptas hic eos. Dolores accusantium provident dolore voluptates. Alias dolorum consequatur facilis fugit laudantium repellat.', '<p>Earum asperiores nihil omnis voluptatem dicta quibusdam. Consequatur ipsum maiores et reprehenderit. Rerum natus ea alias ipsa et ut.</p><p>Non rerum quas alias dignissimos eveniet et porro vitae. Qui ut illum voluptatem rem. Rerum quia facilis voluptatum aut totam et. Iusto deserunt aperiam aut.</p><p>Sed aperiam quos eum enim ipsum beatae velit. Incidunt ea eos deserunt et culpa ratione rem maiores. Amet et rerum animi fuga fuga odit aut qui.</p><p>Consequatur corrupti incidunt eum delectus dicta. Praesentium et omnis sit quo architecto. Modi et quaerat et voluptatem voluptas quo fugiat. Ut assumenda quia quo alias et iste distinctio.</p><p>Natus voluptatem eligendi quod suscipit. Veritatis corporis atque molestiae qui quod nobis. Ut ea alias nobis. Neque officia iusto nisi repudiandae ducimus alias.</p><p>Laudantium nisi recusandae quaerat occaecati. Voluptatum vitae officia omnis sed nemo hic. Quia aut voluptates deleniti consequatur officia.</p><p>Sapiente nulla cumque doloremque harum quia alias. Nobis itaque incidunt nemo aliquid non. Consequatur animi eligendi sunt alias voluptatem ratione et.</p><p>Sed officiis optio fugiat aliquid. Veniam iste commodi veniam incidunt architecto quia qui. Velit consequatur doloremque aliquid nulla sit. Earum assumenda nesciunt ratione ipsa.</p><p>Debitis reprehenderit voluptates sunt molestiae occaecati. Quis ducimus sit qui modi modi vero soluta. Autem voluptatum non perspiciatis non fugiat accusamus a. Dignissimos quia vero labore dolorum consequatur enim.</p><p>Eum quo molestias omnis necessitatibus repellat dolor rem. Quia sit exercitationem error aliquid. Neque nesciunt vitae quibusdam.</p><p>Est id aliquid voluptatum voluptas ab. Est molestiae aut quia maxime similique in. Eaque voluptatem debitis non similique excepturi.</p><p>Adipisci aut asperiores tempore unde. Minima nihil repudiandae qui quo placeat est. Ut blanditiis dolor beatae repellat.</p><p>Architecto explicabo ex id et quia. Corporis et voluptas odit. A consequuntur dolor laudantium eos tenetur qui.</p><p>Dolores aut saepe beatae praesentium inventore eos. Et amet quaerat reiciendis earum aliquid dolores. Neque voluptas ipsum aut ut.</p><p>Quo sit dolorem voluptate expedita eius voluptas. Iste nulla et est veritatis est. Et modi doloribus velit consequuntur. Dolor ut aut sed.</p>', '2022-05-23 17:10:46', '2022-05-23 17:10:46'),
(5, 1, 'cum-sequi-velit-sint-aut', 'Cum sequi velit sint aut.', 'Et et culpa laboriosam dolor occaecati magnam unde. Aut porro fuga et consequatur facere. Vitae sed illo deserunt velit qui voluptatem vero.', '<p>Temporibus sed dolorem voluptatibus veniam impedit a aut sunt. Ut consectetur quisquam sint consequatur blanditiis ea id sit. Quam est quia omnis non est saepe laudantium dignissimos. Et fugit deserunt dolor labore vitae accusantium dolore quo.</p><p>Voluptatem sequi necessitatibus libero voluptates accusantium placeat. Pariatur consequatur aperiam voluptates maiores ipsum rem. Atque sunt odit ducimus dolore cupiditate corrupti doloribus. Voluptas et doloremque error voluptatem unde pariatur omnis.</p><p>Dignissimos iure quibusdam occaecati eligendi vel iste. Et magni unde repudiandae sunt. Cum unde soluta totam nihil.</p><p>Rerum quam perferendis blanditiis consequatur. Dolor error neque pariatur sed quae. Aut voluptatem vero quas qui.</p><p>Nostrum a et qui non. Et et harum qui placeat quis hic dolore perferendis. Et culpa debitis facilis nulla.</p><p>Nulla ad dolor accusantium. Ipsam quod corporis quia rerum aperiam repudiandae aut. Est inventore enim nemo.</p>', '2022-05-23 17:10:46', '2022-05-23 17:10:46'),
(6, 1, 'ipsam-ut-sed-iure-temporibus-rem-quis-quos', 'Ipsam ut sed iure temporibus rem quis quos.', 'Exercitationem quaerat aut deserunt quaerat eligendi. Ullam laboriosam nihil consequatur et veritatis. Assumenda totam impedit velit hic. Nam enim consequuntur et eligendi.', '<p>Veniam adipisci sapiente inventore ab nam. Corporis vel labore nihil et reprehenderit aliquid optio libero. Dicta id unde asperiores ut quo.</p><p>Et qui et suscipit magnam inventore. Illo est quo impedit qui aspernatur. Rem similique qui dolorum saepe animi saepe.</p><p>Rerum error et et eos. Consequatur occaecati omnis voluptatum occaecati facere ab. Veritatis quia dolorem nesciunt perspiciatis.</p><p>Accusantium quibusdam velit minima sunt numquam neque qui. Fuga repellat repellendus consequatur ut culpa est. Voluptatibus doloremque illum maxime nihil praesentium. Earum doloribus qui a enim ea.</p><p>Corporis aut ullam velit tempora sed autem. Quo commodi omnis est ipsum officia omnis eveniet. Deserunt laboriosam vero veniam necessitatibus dolore ad.</p><p>Aliquid odit sint rerum qui ut. Est corrupti rem consequatur sint. Aut nobis soluta vel ad et. Qui natus et quidem sed atque voluptas.</p><p>Omnis earum odit libero quibusdam voluptate. Accusamus voluptatibus dolores atque quasi nostrum at. Modi ea est nemo fugit. In rem qui est et autem qui quo.</p><p>Eum voluptates voluptatem et. Eos sapiente ut explicabo quod.</p><p>Ea dolores dolorum quae tenetur asperiores reprehenderit et. Vel sit nisi et. Tempore vero debitis repellat blanditiis.</p><p>Similique consequatur suscipit sequi et. Voluptatibus nesciunt odit odio. Asperiores quidem facere itaque tempora quaerat enim quo. Quis eos non velit aut animi distinctio dolorem.</p><p>Quo eligendi dolor repellendus reprehenderit. Amet quasi aut consequatur qui velit est.</p><p>Ratione repudiandae nihil voluptatibus id. Distinctio et est ipsam in voluptas ut mollitia perferendis. Perspiciatis labore distinctio nesciunt neque voluptas maiores quo.</p><p>Amet veritatis nemo dignissimos tenetur. Saepe et debitis dolores deserunt sequi quas non. Hic sit non impedit quia aut.</p><p>Placeat nam dicta dolores corporis rerum veritatis consequuntur. Voluptatibus aut dolorem nemo sed blanditiis reprehenderit voluptas. Dolorum architecto quae exercitationem dolores dignissimos corrupti blanditiis.</p>', '2022-05-23 17:10:46', '2022-05-23 17:10:46'),
(7, 1, 'asperiores-et-autem-itaque-minima-aspernatur', 'Asperiores et autem itaque minima aspernatur.', 'Eum sed rerum qui aut sit et. Dolore perferendis delectus est sint id facilis. Explicabo dignissimos odio illum et officiis sunt. Mollitia sapiente et vitae cumque nesciunt velit.', '<p>Ipsum soluta aliquid rerum ut et. Quo sit eum non et. Doloribus quidem dolore nostrum tempora eos aut. Illo aut a voluptatem architecto.</p><p>Hic cum veritatis voluptatum voluptas. Non esse asperiores esse. Corporis aliquid atque voluptas. Rerum tenetur aliquam est est.</p><p>Officiis ut nobis voluptates ullam natus. Aut voluptatem ut corrupti hic voluptatem corporis omnis. Autem facere reprehenderit voluptatum occaecati. Ullam mollitia quis rerum qui temporibus.</p><p>Et ullam autem accusantium error porro et. Eum nulla voluptatum quasi eligendi molestiae aliquam. Pariatur nesciunt aliquam eum quas reiciendis temporibus. Quas temporibus ullam laudantium id neque cumque nostrum.</p><p>Et voluptates culpa modi iste. Est id unde aliquid culpa voluptas. Sed consequatur sit dignissimos et voluptatem. Est iusto neque velit quas.</p><p>Laborum consequuntur tenetur soluta esse perspiciatis nulla deserunt. Adipisci illum culpa aut nisi sed quae molestiae. Aut vel labore fugiat fugiat sequi illum nobis atque. Corrupti ut repellat qui quo et quam quia aut. Hic ea quae magnam voluptas qui nulla doloribus atque.</p><p>Iste possimus sit numquam aliquid ea. Et est ut quis voluptatum ut. Non odio dolorum sapiente beatae voluptas id. Natus vero ullam quia facilis.</p><p>Commodi illum repudiandae inventore earum asperiores. Possimus deserunt facilis eos dolor harum. Officia inventore quo eos et culpa. Fugit sint magni rerum non.</p><p>Aliquam earum ducimus perspiciatis qui adipisci. Optio a ut excepturi voluptate quia. Asperiores sunt dolorum tempore enim et. Expedita dolorem aliquid tenetur sequi.</p><p>Fuga consequatur soluta nesciunt quasi sint et optio quis. Fuga sint sit praesentium nihil. Earum est est recusandae qui.</p><p>Omnis tempora dignissimos ratione corrupti quidem et fugit. Impedit modi hic ipsum praesentium quis hic sit sed. Labore sunt molestiae iusto modi quis dolor perspiciatis.</p><p>Nobis sed quia eveniet sit expedita magni nemo. Quasi minus rem quidem. Fugit non sed laboriosam natus sed sunt eaque qui. Ex ut accusantium nulla alias porro et non.</p><p>Molestiae qui id rerum cumque et impedit. Alias laborum et vel earum adipisci eaque.</p><p>Molestiae architecto voluptas accusamus quia. In quod earum fugiat ullam. Qui consequatur repellat omnis perspiciatis.</p>', '2022-05-23 17:10:46', '2022-05-23 17:10:46'),
(8, 1, 'aut-perferendis-temporibus-rerum-facilis-harum-corrupti', 'Aut perferendis temporibus rerum facilis harum corrupti.', 'Tempora aut iure officia amet. Sed sed nemo voluptas laudantium. Aspernatur quasi eius exercitationem quaerat in id tenetur.', '<p>Qui vitae necessitatibus nobis a error in. Quis enim placeat magnam. Expedita et nulla magni. Qui cum voluptatum aut vero in.</p><p>Quia error laboriosam velit a nesciunt. Voluptatum sapiente dolorem voluptas maxime similique vel doloremque. Fuga impedit nemo non. Libero laboriosam qui vel et dolore ipsum excepturi. Aut qui nihil distinctio aliquid.</p><p>Nam commodi nisi facilis hic consequatur sunt nemo accusamus. Beatae perferendis a et fuga dicta dolor. Vel dignissimos dignissimos molestiae deleniti ducimus mollitia quibusdam. Soluta qui ducimus eveniet cumque explicabo natus qui ea.</p><p>Facere inventore laboriosam dignissimos nihil aliquid rem. Maxime illo voluptatem ut esse consectetur. Voluptatem aut qui rerum nam veniam sed. Ipsa illum neque reprehenderit numquam consectetur impedit expedita et.</p><p>Eos sint repellat dolores fugit quia inventore. Fugiat qui distinctio et sint ut molestiae consequatur voluptate. In nihil impedit qui nam est aut. Sunt veritatis ab et magnam nobis itaque.</p><p>Maiores rerum corporis aperiam ducimus fugit officia veritatis. Consequatur est voluptatem modi aut quas incidunt. Odio blanditiis officia dolores non ut voluptates.</p><p>Qui sed rem amet tenetur consequatur sapiente. Voluptas iusto quos architecto tempora temporibus ipsum consequatur quidem. Molestiae eos rerum natus hic et maxime dolore. Ea minus magni unde nesciunt adipisci.</p><p>Provident quia laboriosam ipsum tempora totam voluptas. Consequatur repellendus facere quis sunt fugit voluptate.</p><p>Sit libero molestiae nam quas accusamus eius ea. Voluptatem aut eligendi aperiam omnis et tempore modi sint. Est eligendi nihil voluptatem commodi odit rerum.</p>', '2022-05-23 17:10:46', '2022-05-23 17:10:46'),
(9, 1, 'nostrum-culpa-sint-quos-minus', 'Nostrum culpa sint quos minus.', 'Odit aut quisquam doloribus nihil porro odit laborum. Veritatis dolorem natus qui. Modi perferendis eos in sunt id et voluptatibus.', '<p>Aut eaque et fugiat assumenda. Iste sed nam corrupti porro non. Est aut omnis qui.</p><p>Similique voluptatem vero eum iure. Nostrum enim et vel. Libero quos voluptates qui quae consequuntur non quo. Cum blanditiis voluptatem quia eaque placeat.</p><p>Voluptas minus dolor quos praesentium veniam et sequi. Rerum cumque error doloremque molestias repudiandae. In corporis debitis minus dignissimos.</p><p>Quam nesciunt soluta eos ut. Est dolores sapiente sunt et quo. Facere et ut blanditiis nobis est. Cupiditate eligendi suscipit sunt voluptatem qui.</p><p>Consequuntur qui iure ea quasi odit. Facilis quo blanditiis sint eos dolor tenetur reprehenderit.</p><p>Quis omnis sapiente et voluptatem quo consequatur labore praesentium. Ducimus dolor ut non quia. Adipisci impedit non voluptatem dicta qui.</p><p>Enim sint consequuntur architecto consequatur quia eius. Neque minus voluptas et sunt repudiandae labore cupiditate qui. Ex dicta consequatur ab. Libero doloribus sit ad quaerat eum.</p><p>Repellendus fugiat necessitatibus laudantium dignissimos veniam optio officia. Vero quia est autem voluptates. Doloremque laudantium et qui necessitatibus dolorem tempore necessitatibus minima. Ex consequuntur sed exercitationem incidunt voluptas cum qui.</p><p>Consequatur non quia commodi quia debitis aut labore mollitia. Et rerum accusantium dolor pariatur perferendis iste non. Architecto nam quisquam est maiores a enim ipsa. Iste placeat totam dolorem temporibus repellendus.</p><p>Quod sed perspiciatis expedita aut nostrum. Eos ut reiciendis quidem. Omnis quo ab aut. Quasi temporibus eaque dolorem minima doloremque. Sed aperiam ut rerum necessitatibus iure totam rerum.</p><p>Veritatis sit ut voluptas et quo aliquid. Aut praesentium rem accusantium sint. Distinctio reprehenderit laboriosam ut quo. Quidem sapiente omnis quae molestias.</p><p>Et consequatur totam quia provident reiciendis. Quidem omnis consequatur sunt libero sit.</p>', '2022-05-23 17:24:49', '2022-05-23 17:24:49'),
(10, 1, 'similique-non-quia-consequatur-voluptatum', 'Similique non quia consequatur voluptatum.', 'Nisi voluptas voluptatem quae excepturi maxime dolorem facere. Cupiditate repudiandae suscipit quae sint et sit aut. Quibusdam possimus rerum voluptatem nam ea. Voluptatem nihil sunt repudiandae inventore hic.', '<p>Exercitationem ullam voluptatum vel doloribus blanditiis in reiciendis voluptates. Qui et ex dolorem similique. Qui recusandae earum reiciendis quo illo aut repellat provident.</p><p>Quod temporibus possimus qui consequuntur. Voluptas laborum qui recusandae itaque quis. Praesentium praesentium a rerum voluptatem quis voluptatem fugiat.</p><p>Deserunt eligendi debitis et molestiae sed. Consectetur inventore sint possimus illum eum. Ratione saepe non velit veniam nulla sint accusantium veniam. Ipsum consequatur nihil sit eos non.</p><p>Soluta aut quibusdam commodi enim in inventore. Voluptatem corrupti nam optio qui in sit magni. Nobis suscipit maxime assumenda ullam et nihil minus.</p><p>Hic veniam voluptatem veritatis nobis velit. Suscipit vel unde odit autem ut provident nihil. Qui magnam quia eum sequi et.</p><p>Nulla ex omnis eveniet reprehenderit dolore provident quas. Debitis voluptatibus qui qui quis. Ea eveniet nam nobis quam expedita.</p><p>Id ut aut rerum consequatur eos id. Ea cupiditate et quisquam nihil. Asperiores vero eos rerum temporibus nihil corrupti.</p><p>Voluptatem voluptas velit dolorem ipsam et cupiditate adipisci. Autem quam fugiat ea ratione. Voluptatibus voluptates voluptatem rerum. Non qui qui quaerat explicabo nostrum omnis.</p>', '2022-05-23 17:24:49', '2022-05-23 17:24:49'),
(11, 1, 'molestiae-quam-voluptatibus-natus-repudiandae-earum-fugit-quam', 'Molestiae quam voluptatibus natus repudiandae earum fugit quam.', 'Et sequi quo et expedita dolor placeat. Quia sunt officia quis recusandae sit similique assumenda. Vel cumque debitis mollitia facilis. Fugit maiores voluptatem quam recusandae unde harum dicta.', '<p>Laborum in dolor omnis qui. Culpa aut at dignissimos nobis. Illum eaque totam totam optio.</p><p>Neque aliquam aliquam nobis dolores. Veniam dolorem repellendus velit illum maxime perspiciatis sed.</p><p>Vel esse modi dolores totam ipsum. Omnis voluptatem et non tempora voluptatem aliquam. Necessitatibus est sed ea ipsa. In molestiae eaque possimus minima consequatur. Quos impedit nihil pariatur.</p><p>Velit sint beatae ut sit. Aliquam illo ut architecto et officiis voluptates fugit. Dolorem doloremque quas omnis enim. Officia recusandae voluptates veritatis ut sit.</p><p>Eius debitis temporibus quibusdam. Recusandae praesentium commodi porro nostrum consequuntur dolore. Fugiat amet asperiores dignissimos facere ducimus dolorum.</p><p>Eum molestiae quae in est. Voluptatem eligendi porro dolore aliquam consequatur asperiores. Eum debitis cumque omnis aspernatur officia dolores.</p><p>Beatae deserunt non et praesentium eum. Accusamus ipsa ipsa voluptas iste cum quisquam autem. Repudiandae atque ut rerum maiores.</p><p>Qui quod labore libero eos quia vel. Fugiat consequatur est ipsam velit est repellat. Nihil nemo necessitatibus excepturi aut quas.</p><p>Soluta perferendis tenetur consequatur et minus officia. In tenetur beatae qui. Expedita a possimus numquam accusamus. Ut magni incidunt error adipisci minus.</p><p>Ut magni sed aliquid quasi harum odit. Sit doloribus aut possimus architecto aut sed. Ea id quidem dolores dolores. Illum natus commodi sit sint earum voluptatem voluptatum.</p><p>Non aut suscipit et id sunt suscipit. Labore aut quia provident ipsum aut qui quia. Voluptate veritatis voluptatem sunt ipsum.</p><p>A odit tempore sit totam ipsum ad id. Molestiae consequatur repellendus ea sunt nemo. Doloribus sed eum rerum est. Eveniet earum autem sunt error autem quis aut excepturi.</p><p>Fuga doloremque voluptatem aut voluptatum aut architecto quae. Dolorem eum aperiam dolore. Inventore similique nisi est nobis et magni.</p>', '2022-05-23 17:24:49', '2022-05-23 17:24:49'),
(12, 1, 'odit-nemo-nobis-ea-non-quis', 'Odit nemo nobis ea non quis.', 'Veritatis consequatur animi consectetur excepturi. Explicabo vitae quia amet consequatur vero debitis reiciendis. Omnis temporibus doloribus qui pariatur.', '<p>Corrupti quas aut voluptate qui assumenda. Dolor sit qui tenetur. Quam odio consequatur reiciendis est non. Nisi accusantium adipisci mollitia alias sed illo molestiae.</p><p>Quaerat assumenda est neque id ipsum et porro. Quidem voluptatem at amet iusto repellendus iusto nihil. Sunt ullam at ut cumque.</p><p>Magnam occaecati maxime temporibus quasi. Harum esse in impedit sequi amet harum. Totam eos et iste assumenda totam. Quia voluptatem ad itaque aut.</p><p>Pariatur enim est in laborum. Voluptatem voluptatum assumenda optio aut ratione a voluptatem. Aut quia hic eius fugit. Aut eaque quae et rem quia officiis numquam non.</p><p>Quasi maxime culpa nemo voluptates. Quia ipsum consequatur accusamus minus. Corporis sint possimus quo placeat est omnis.</p><p>Assumenda ab quod quidem sapiente sit nesciunt. Voluptatem expedita voluptas vel laboriosam odit voluptatum. Nobis eius qui amet qui quis labore.</p><p>Est dicta quis quo natus temporibus voluptatem et. Veniam dolorem ratione pariatur minima voluptas dolorem deleniti dolorem.</p><p>Corporis velit aperiam asperiores accusantium pariatur. Consequatur enim vel illo et nesciunt. Dolor inventore sapiente iste atque consequatur. Provident et reprehenderit ex nobis. Ducimus officia odio reiciendis sint.</p><p>Unde enim consequatur sit beatae impedit. Eos et est molestiae sit modi accusantium et. Omnis dolores molestias qui iste at. Quia mollitia dolores soluta sit sapiente sint quo iure.</p><p>Aut necessitatibus quos quaerat quo numquam. Soluta aut reprehenderit at vitae nam mollitia.</p><p>Consectetur iusto est vel id voluptatem voluptates aut. Ad quidem unde omnis atque. Corporis dolor quo aut et. Quibusdam sint et odit esse officiis omnis commodi. Quasi odio sit consectetur adipisci numquam consequatur nihil.</p><p>Non quia ea exercitationem amet. Doloribus earum consequuntur quod dolorum et libero. Enim est occaecati quo iure enim molestias aliquam iste. Aspernatur blanditiis assumenda quasi et ut.</p><p>Voluptas rem sed amet quos consectetur. Mollitia quae blanditiis omnis quis sit. Qui cumque possimus qui. Eaque sit explicabo harum vel asperiores.</p><p>Ratione vel omnis earum ut molestiae aperiam. Hic dignissimos similique quod aliquid nisi doloremque qui. Voluptates accusamus excepturi et quasi ab architecto officia.</p>', '2022-05-23 17:24:50', '2022-05-23 17:24:50'),
(13, 1, 'nobis-enim-aliquid-accusantium-doloremque-et-dignissimos-sapiente', 'Nobis enim aliquid accusantium doloremque et dignissimos sapiente.', 'Nulla molestiae ratione reiciendis sed odio. Nihil hic doloremque qui vel ut cum officia inventore. Cumque possimus voluptate voluptas.', '<p>Sed occaecati doloribus iure totam dolorem et nisi. Molestiae explicabo incidunt sed maxime unde in tenetur. Deserunt voluptates voluptates sed et ut. Odio cum dolorem est. Optio laudantium minima molestias assumenda aspernatur.</p><p>Aut enim sint delectus facere et. Earum porro eum maiores sed non est assumenda. Et cupiditate voluptates atque voluptatibus.</p><p>Illum dolor doloremque quo. Nihil quas sit non omnis. Aut et enim et veniam. Et quos tempore non voluptatem eum dolores tempore.</p><p>Delectus veritatis non reprehenderit libero id facilis. Voluptas voluptatem consectetur a. Tempora eaque et ullam dignissimos sequi cupiditate aliquam ratione. Iste exercitationem molestias illo necessitatibus harum nulla.</p><p>Repellat repellendus quia dolor sit quia odio nihil nesciunt. Consectetur sint tempore nihil quibusdam esse fugiat. Adipisci saepe repellat sunt sed enim impedit quibusdam voluptatem. Itaque nulla vel rerum qui possimus et odio. Est culpa et quos voluptatum laudantium pariatur tempora pariatur.</p><p>Aut a eum voluptates eum quos veniam suscipit. Est excepturi sit deserunt officiis. Aspernatur itaque voluptatem voluptate ex.</p><p>Omnis nihil ex veritatis nesciunt quibusdam. Velit suscipit ullam alias perferendis. Dignissimos sunt quo consequatur sed voluptatibus.</p><p>Cupiditate laudantium consequatur et qui. Harum rerum sequi cupiditate. Optio quos facere aut dicta.</p><p>Officia neque itaque dolor ab ad. Sunt corrupti ipsam consequatur commodi omnis modi saepe. Quisquam natus cupiditate eveniet. Minima eum temporibus sed natus. Ut porro illum rerum omnis maiores qui.</p>', '2022-05-23 17:24:50', '2022-05-23 17:24:50'),
(14, 1, 'nihil-et-ipsa-laborum-ab-quos-aut', 'Nihil et ipsa laborum ab quos aut.', 'Praesentium voluptate consequuntur qui fuga tempora similique sit. Et sint voluptate dolor excepturi. Et asperiores non minus consequatur et et aut id.', '<p>In aliquid magnam fuga nulla ullam harum. Reprehenderit quisquam amet debitis ratione. Dolores beatae et ipsum autem facilis. Inventore accusamus enim qui eaque. Atque tenetur hic iste est quia quo odio ut.</p><p>In voluptatem assumenda voluptas commodi. Inventore temporibus accusamus magni alias eos molestiae quam autem. Ut est occaecati qui aut amet laboriosam. Reiciendis earum voluptatem alias consequatur assumenda ducimus expedita omnis.</p><p>Et ad qui est voluptatem autem doloremque voluptas et. Ipsum nostrum est impedit est voluptas eum. Aut laboriosam neque error et voluptatibus dolor.</p><p>Non quia et rerum quidem veniam natus porro. Optio rerum nihil nam sapiente. Aliquid blanditiis praesentium maxime velit.</p><p>Cupiditate iusto animi qui numquam quia quam. Laboriosam ipsum est neque consequatur. Deserunt at ullam omnis aliquid sunt accusamus. Deleniti expedita impedit voluptatum sed soluta quis.</p><p>Sed quos sint perferendis illo. Animi cumque optio magnam quae earum totam. Eius eaque et cum voluptatem unde. Quibusdam excepturi laborum illo.</p><p>Voluptatem natus neque soluta inventore consequatur perferendis a. Recusandae blanditiis voluptatem autem dolores et libero quidem. Eum quia accusamus accusantium iste nihil.</p><p>Non et qui vitae laboriosam est impedit. Nostrum ipsum error illum iure. Tempora corporis earum et nihil odio qui consequatur. Eos quos iste suscipit fugiat ullam praesentium consequatur quas.</p><p>Modi sed tempora cum beatae. Tempore nisi sapiente dolores blanditiis. Ipsum quis dicta quisquam.</p><p>Nesciunt explicabo amet ut ut qui similique. Quis dignissimos ducimus esse voluptate et. Cumque veritatis fugiat velit architecto rem esse vel voluptatem.</p><p>Velit consectetur et dolor amet. Assumenda quia et ipsa ut nemo deserunt.</p><p>Doloribus non sequi quia modi. Suscipit aperiam nulla voluptatem. Dolor sapiente magnam possimus dolorem.</p><p>Sed hic et provident dicta corrupti. Aut et quibusdam accusamus doloribus. Reprehenderit necessitatibus est numquam quia laborum. Veniam est aut et autem.</p><p>Exercitationem sint quod adipisci. Hic culpa eaque dolorem consequatur tempore assumenda. Qui fuga sint quia assumenda in.</p>', '2022-05-23 17:24:50', '2022-05-23 17:24:50'),
(15, 1, 'rem-aut-architecto-doloremque-magni', 'Rem aut architecto doloremque magni.', 'Veritatis illum deleniti dolor iste autem ut. Animi ut voluptas ipsa tempore error. Nesciunt quo nulla velit soluta omnis eum blanditiis. Ad illum nulla sequi esse iure.', '<p>Ipsum labore voluptate qui aliquam. Non repellat doloremque id atque sint maxime modi accusantium. Nostrum et delectus et fugit atque veritatis voluptatem.</p><p>Delectus voluptas iure sit sequi in qui quia. Sint et non excepturi ullam dolorem et tempora. Mollitia quis consectetur accusamus cumque vero iste sit vitae. Et et et dolores dolor.</p><p>Omnis voluptatem itaque et tempore dignissimos provident. Modi at cumque quis rem a voluptates rerum. Doloremque doloremque libero incidunt itaque.</p><p>Et et accusantium quidem rerum est ut error. Animi aut tempore consequatur qui. Inventore qui quis nemo quam rerum.</p><p>Delectus rerum culpa nihil beatae ipsa. Numquam et minus quod repudiandae repellendus quas architecto. Odit quia qui omnis et quo aspernatur ullam. Excepturi exercitationem itaque beatae et animi ea dolor. Omnis molestiae facere cupiditate perspiciatis distinctio.</p><p>Natus odio quibusdam autem. Et sapiente ex et beatae facilis impedit.</p>', '2022-05-23 17:24:50', '2022-05-23 17:24:50'),
(16, 1, 'ratione-dolore-debitis-explicabo-nulla-corrupti', 'Ratione dolore debitis explicabo nulla corrupti.', 'Quibusdam similique est sit et soluta. Facilis laboriosam et amet accusantium et accusamus nesciunt. Ipsam eveniet dolore culpa. Voluptatem rerum porro excepturi.', '<p>Iure porro velit est fugit occaecati. Ut impedit voluptas numquam est. Nemo corrupti ut ipsum recusandae enim enim quia iste.</p><p>Perferendis consequatur impedit eveniet recusandae consequuntur fuga et quae. Dolorem non ullam deleniti sunt in adipisci nam. Et reprehenderit reiciendis illo voluptatem aspernatur.</p><p>Id iste reprehenderit eaque placeat repellat. Rerum perspiciatis sapiente blanditiis quod repudiandae nisi. Neque temporibus nulla facilis rerum voluptas. Corrupti asperiores ad ea.</p><p>Odio vel eum similique adipisci porro deserunt. Amet ut ratione alias non perspiciatis aut repellendus. Necessitatibus laborum suscipit quibusdam et. Libero sunt deserunt labore sit minus.</p><p>Assumenda quaerat dolore neque quo beatae velit molestiae. Quibusdam sequi cumque eos illo. A ullam asperiores veritatis nihil labore nostrum.</p>', '2022-05-23 17:24:50', '2022-05-23 17:24:50'),
(17, 1, 'blanditiis-quos-minus-necessitatibus-commodi-iusto-expedita', 'Blanditiis quos minus necessitatibus commodi iusto expedita.', 'Ut minima distinctio qui dignissimos ut. Eos ut dolores dolores cum ipsam optio corrupti ullam. Quidem sunt possimus omnis dolor quia unde sed assumenda.', '<p>Vero modi ut quia vel. Libero praesentium dolorem quia dignissimos laboriosam. Aspernatur doloribus velit totam ea sit dicta ut et. Nostrum reprehenderit repellendus voluptatibus consequatur quisquam laudantium.</p><p>Libero tenetur cupiditate fuga autem libero. Voluptatem ut nihil commodi eligendi labore. Maiores beatae accusantium accusantium corrupti.</p><p>Amet velit illo ratione consequatur accusamus. Doloribus commodi quae voluptas ipsam. Minus nulla recusandae dignissimos nam fuga. Velit soluta cumque distinctio placeat adipisci fugit. Repudiandae debitis ipsam qui excepturi fugiat quaerat.</p><p>Sunt officiis reiciendis sapiente blanditiis suscipit quos. Praesentium ipsa porro enim odio expedita accusantium a. Magni quo culpa veritatis sequi expedita sint sit aperiam.</p><p>Dolorem et dolores at dolor dicta culpa nemo. Est ut sit quos. Incidunt nostrum est sed. Cumque sequi voluptatem distinctio praesentium.</p><p>Non repudiandae inventore et maiores voluptas. Consectetur voluptatum qui est earum. Sint assumenda et sit aut.</p><p>Aperiam nesciunt ea quod. Iste id numquam dolor id expedita sequi fuga.</p><p>Maxime qui eligendi facilis rem. Enim sit id aut. Enim reiciendis ut quasi. Sequi non sit consequuntur fuga et fugiat explicabo.</p><p>Culpa placeat eveniet corporis. Architecto provident commodi inventore. Inventore aspernatur expedita ducimus voluptatem modi ea. Odio velit quo temporibus expedita. Ratione quis voluptas ea voluptatem.</p><p>Veniam asperiores magnam mollitia laborum enim. Illum sit ullam dolor aut repudiandae. Tempora similique ea recusandae eaque possimus ratione et.</p>', '2022-05-23 17:24:50', '2022-05-23 17:24:50'),
(18, 1, 'dolorem-ab-sequi-facere-ea', 'Dolorem ab sequi facere ea.', 'Voluptatem nam harum error. Natus quis dolorem in magni illum nihil.', '<p>Et repellendus eum a voluptatum aspernatur molestiae. Et eaque eaque eos non odit. Aut perspiciatis maiores ratione asperiores reprehenderit. Repudiandae numquam quos asperiores aut dolor voluptatem eum.</p><p>Quis voluptatum aut excepturi. Laudantium qui dolorem repudiandae amet. Commodi dolorum distinctio ab fugit sunt.</p><p>Eius facilis occaecati omnis ea. Omnis ut corporis sint architecto dolorum. Dolor occaecati quidem est fugiat ut quis atque. Quasi mollitia aut rem placeat dolores.</p><p>Consequuntur quo vero molestiae neque itaque est. Quia molestiae sit et repellat qui et ab.</p><p>Praesentium sit ut quia sed occaecati ab. Facilis aspernatur ea alias odio quas. Ratione similique doloribus ab cumque. Adipisci maiores consequatur et incidunt occaecati fugit et.</p>', '2022-05-23 17:24:50', '2022-05-23 17:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 5, NULL, NULL),
(2, 1, 4, NULL, NULL),
(3, 2, 9, NULL, NULL),
(4, 2, 1, NULL, NULL),
(5, 2, 2, NULL, NULL),
(6, 2, 2, NULL, NULL),
(7, 3, 2, NULL, NULL),
(8, 3, 7, NULL, NULL),
(9, 3, 6, NULL, NULL),
(10, 3, 7, NULL, NULL),
(11, 4, 3, NULL, NULL),
(12, 4, 8, NULL, NULL),
(13, 4, 2, NULL, NULL),
(14, 4, 1, NULL, NULL),
(15, 4, 2, NULL, NULL),
(16, 5, 9, NULL, NULL),
(17, 5, 4, NULL, NULL),
(18, 5, 6, NULL, NULL),
(19, 6, 7, NULL, NULL),
(20, 6, 1, NULL, NULL),
(21, 6, 2, NULL, NULL),
(22, 7, 8, NULL, NULL),
(23, 7, 2, NULL, NULL),
(24, 8, 7, NULL, NULL),
(25, 8, 9, NULL, NULL),
(26, 8, 8, NULL, NULL),
(27, 9, 3, NULL, NULL),
(28, 9, 4, NULL, NULL),
(29, 9, 3, NULL, NULL),
(30, 10, 6, NULL, NULL),
(31, 10, 9, NULL, NULL),
(32, 10, 6, NULL, NULL),
(33, 10, 1, NULL, NULL),
(34, 10, 1, NULL, NULL),
(35, 11, 9, NULL, NULL),
(36, 11, 2, NULL, NULL),
(37, 11, 6, NULL, NULL),
(38, 12, 9, NULL, NULL),
(39, 12, 4, NULL, NULL),
(40, 12, 8, NULL, NULL),
(41, 13, 6, NULL, NULL),
(42, 13, 4, NULL, NULL),
(43, 14, 9, NULL, NULL),
(44, 14, 3, NULL, NULL),
(45, 14, 4, NULL, NULL),
(46, 15, 3, NULL, NULL),
(47, 15, 9, NULL, NULL),
(48, 15, 2, NULL, NULL),
(49, 15, 6, NULL, NULL),
(50, 16, 7, NULL, NULL),
(51, 16, 1, NULL, NULL),
(52, 17, 2, NULL, NULL),
(53, 17, 1, NULL, NULL),
(54, 17, 7, NULL, NULL),
(55, 17, 5, NULL, NULL),
(56, 18, 5, NULL, NULL),
(57, 18, 4, NULL, NULL),
(58, 18, 1, NULL, NULL),
(59, 18, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(1, 'beatae', '2022-05-23 17:15:56', '2022-05-23 17:15:56'),
(2, 'soluta', '2022-05-23 17:24:50', '2022-05-23 17:24:50'),
(3, 'facere', '2022-05-23 17:24:50', '2022-05-23 17:24:50'),
(4, 'in', '2022-05-23 17:24:50', '2022-05-23 17:24:50'),
(5, 'dolorum', '2022-05-23 17:24:51', '2022-05-23 17:24:51'),
(6, 'doloremque', '2022-05-23 17:24:51', '2022-05-23 17:24:51'),
(7, 'ut', '2022-05-23 17:24:51', '2022-05-23 17:24:51'),
(8, 'optio', '2022-05-23 17:24:51', '2022-05-23 17:24:51'),
(9, 'odio', '2022-05-23 17:24:51', '2022-05-23 17:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(1, 'nunhes', 'nunhes@gmail.com', NULL, '$2y$10$AMX.xmLbsdw9z1Qghb7he.Qy8MaNvu0.u1o.juez3l0n/kn7GEt72', NULL, '2022-05-21 22:10:52', '2022-05-21 22:10:52');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
