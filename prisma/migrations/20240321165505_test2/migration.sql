/*
  Warnings:

  - You are about to drop the column `email` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `largeNumber` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `preferences` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `role` on the `user` table. All the data in the column will be lost.
  - You are about to drop the `_categorytopost` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `category` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `post` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `userpreference` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `_categorytopost` DROP FOREIGN KEY `_CategoryToPost_A_fkey`;

-- DropForeignKey
ALTER TABLE `_categorytopost` DROP FOREIGN KEY `_CategoryToPost_B_fkey`;

-- DropForeignKey
ALTER TABLE `post` DROP FOREIGN KEY `Post_authorId_fkey`;

-- DropForeignKey
ALTER TABLE `post` DROP FOREIGN KEY `Post_favoritedById_fkey`;

-- DropForeignKey
ALTER TABLE `userpreference` DROP FOREIGN KEY `UserPreference_userId_fkey`;

-- DropIndex
DROP INDEX `User_age_name_key` ON `user`;

-- DropIndex
DROP INDEX `User_email_idx` ON `user`;

-- DropIndex
DROP INDEX `User_email_key` ON `user`;

-- AlterTable
ALTER TABLE `user` DROP COLUMN `email`,
    DROP COLUMN `largeNumber`,
    DROP COLUMN `preferences`,
    DROP COLUMN `role`;

-- DropTable
DROP TABLE `_categorytopost`;

-- DropTable
DROP TABLE `category`;

-- DropTable
DROP TABLE `post`;

-- DropTable
DROP TABLE `userpreference`;
