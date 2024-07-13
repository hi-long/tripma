/*
  Warnings:

  - You are about to drop the `FightPackage` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "FightPackage";

-- CreateTable
CREATE TABLE "flight_package" (
    "id" SERIAL NOT NULL,
    "type" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "flight_package_pkey" PRIMARY KEY ("id")
);
