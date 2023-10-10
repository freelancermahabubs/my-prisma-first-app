/*
  Warnings:

  - You are about to drop the column `col1` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `col2` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `col3` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `col4` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `col5` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `col6` on the `user` table. All the data in the column will be lost.
  - You are about to drop the `stringmodel` table. If the table is not empty, all the data it contains will be lost.

*/
-- AlterTable
ALTER TABLE `user` DROP COLUMN `col1`,
    DROP COLUMN `col2`,
    DROP COLUMN `col3`,
    DROP COLUMN `col4`,
    DROP COLUMN `col5`,
    DROP COLUMN `col6`,
    ADD COLUMN `email` VARCHAR(191) NOT NULL DEFAULT '',
    ADD COLUMN `password` VARCHAR(191) NOT NULL DEFAULT '';

-- DropTable
DROP TABLE `stringmodel`;

-- CreateTable
CREATE TABLE `Profile` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `fname` VARCHAR(191) NOT NULL,
    `lname` VARCHAR(191) NOT NULL,
    `city` VARCHAR(191) NOT NULL,
    `posCode` VARCHAR(191) NOT NULL,
    `userID` INTEGER NOT NULL,

    UNIQUE INDEX `Profile_userID_key`(`userID`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Profile` ADD CONSTRAINT `Profile_userID_fkey` FOREIGN KEY (`userID`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
