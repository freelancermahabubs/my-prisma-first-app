/*
  Warnings:

  - You are about to drop the column `col3` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `col4` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `col5` on the `user` table. All the data in the column will be lost.
  - The `col1` column on the `user` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE `user` DROP COLUMN `col3`,
    DROP COLUMN `col4`,
    DROP COLUMN `col5`,
    DROP COLUMN `col1`,
    ADD COLUMN `col1` BOOLEAN NOT NULL DEFAULT true,
    MODIFY `col2` CHAR(100) NOT NULL DEFAULT 'Prisma';
