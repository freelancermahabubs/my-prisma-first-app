/*
  Warnings:

  - You are about to drop the column `col1` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `col10` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `col11` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `col12` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `col13` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `col14` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `col2` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `col3` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `col4` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `col5` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `col6` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `col7` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `col8` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `col9` on the `user` table. All the data in the column will be lost.
  - Added the required column `remarks` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX `User_col14_key` ON `user`;

-- AlterTable
ALTER TABLE `user` DROP COLUMN `col1`,
    DROP COLUMN `col10`,
    DROP COLUMN `col11`,
    DROP COLUMN `col12`,
    DROP COLUMN `col13`,
    DROP COLUMN `col14`,
    DROP COLUMN `col2`,
    DROP COLUMN `col3`,
    DROP COLUMN `col4`,
    DROP COLUMN `col5`,
    DROP COLUMN `col6`,
    DROP COLUMN `col7`,
    DROP COLUMN `col8`,
    DROP COLUMN `col9`,
    ADD COLUMN `remarks` ENUM('New', 'Existing', 'VIP', 'Regular', 'Bad') NOT NULL;
