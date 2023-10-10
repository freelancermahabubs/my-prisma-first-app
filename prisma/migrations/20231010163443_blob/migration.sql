/*
  Warnings:

  - You are about to alter the column `col1` on the `user` table. The data in that column could be lost. The data in that column will be cast from `TinyInt` to `Blob`.
  - Added the required column `col3` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `col4` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `col5` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `col6` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `user` ADD COLUMN `col3` TINYBLOB NOT NULL,
    ADD COLUMN `col4` MEDIUMBLOB NOT NULL,
    ADD COLUMN `col5` BINARY(250) NOT NULL,
    ADD COLUMN `col6` VARBINARY(250) NOT NULL,
    MODIFY `col2` LONGBLOB NOT NULL,
    MODIFY `col1` BLOB NOT NULL;
