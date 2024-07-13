/*
  Warnings:

  - You are about to drop the column `countryId` on the `airline` table. All the data in the column will be lost.
  - You are about to drop the column `cityId` on the `airport` table. All the data in the column will be lost.
  - You are about to drop the column `countryId` on the `airport` table. All the data in the column will be lost.
  - You are about to drop the column `flightId` on the `booking` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `booking` table. All the data in the column will be lost.
  - You are about to drop the column `bookingId` on the `booking_passenger` table. All the data in the column will be lost.
  - You are about to drop the column `fightSeatId` on the `booking_passenger` table. All the data in the column will be lost.
  - You are about to drop the column `flightId` on the `cart` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `cart` table. All the data in the column will be lost.
  - You are about to drop the column `countryId` on the `city` table. All the data in the column will be lost.
  - You are about to drop the column `cityId` on the `destination` table. All the data in the column will be lost.
  - You are about to drop the column `countryId` on the `destination` table. All the data in the column will be lost.
  - You are about to drop the column `destinationId` on the `destination_review` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `destination_review` table. All the data in the column will be lost.
  - You are about to drop the column `airlineId` on the `flight` table. All the data in the column will be lost.
  - You are about to drop the column `airportId` on the `flight` table. All the data in the column will be lost.
  - You are about to drop the column `flightId` on the `flight_seat` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[fight_seat_id]` on the table `booking_passenger` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[user_id]` on the table `cart` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `country_id` to the `airline` table without a default value. This is not possible if the table is not empty.
  - Added the required column `city_id` to the `airport` table without a default value. This is not possible if the table is not empty.
  - Added the required column `country_id` to the `airport` table without a default value. This is not possible if the table is not empty.
  - Added the required column `flight_id` to the `booking` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `booking` table without a default value. This is not possible if the table is not empty.
  - Added the required column `booking_id` to the `booking_passenger` table without a default value. This is not possible if the table is not empty.
  - Added the required column `fight_seat_id` to the `booking_passenger` table without a default value. This is not possible if the table is not empty.
  - Added the required column `flight_id` to the `cart` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `cart` table without a default value. This is not possible if the table is not empty.
  - Added the required column `country_id` to the `city` table without a default value. This is not possible if the table is not empty.
  - Added the required column `city_id` to the `destination` table without a default value. This is not possible if the table is not empty.
  - Added the required column `country_id` to the `destination` table without a default value. This is not possible if the table is not empty.
  - Added the required column `destination_id` to the `destination_review` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `destination_review` table without a default value. This is not possible if the table is not empty.
  - Added the required column `airline_id` to the `flight` table without a default value. This is not possible if the table is not empty.
  - Added the required column `airport_id` to the `flight` table without a default value. This is not possible if the table is not empty.
  - Added the required column `flight_id` to the `flight_seat` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "airline" DROP CONSTRAINT "airline_countryId_fkey";

-- DropForeignKey
ALTER TABLE "airport" DROP CONSTRAINT "airport_cityId_fkey";

-- DropForeignKey
ALTER TABLE "airport" DROP CONSTRAINT "airport_countryId_fkey";

-- DropForeignKey
ALTER TABLE "booking" DROP CONSTRAINT "booking_flightId_fkey";

-- DropForeignKey
ALTER TABLE "booking" DROP CONSTRAINT "booking_userId_fkey";

-- DropForeignKey
ALTER TABLE "booking_passenger" DROP CONSTRAINT "booking_passenger_bookingId_fkey";

-- DropForeignKey
ALTER TABLE "booking_passenger" DROP CONSTRAINT "booking_passenger_fightSeatId_fkey";

-- DropForeignKey
ALTER TABLE "cart" DROP CONSTRAINT "cart_flightId_fkey";

-- DropForeignKey
ALTER TABLE "cart" DROP CONSTRAINT "cart_userId_fkey";

-- DropForeignKey
ALTER TABLE "city" DROP CONSTRAINT "city_countryId_fkey";

-- DropForeignKey
ALTER TABLE "destination" DROP CONSTRAINT "destination_cityId_fkey";

-- DropForeignKey
ALTER TABLE "destination" DROP CONSTRAINT "destination_countryId_fkey";

-- DropForeignKey
ALTER TABLE "destination_review" DROP CONSTRAINT "destination_review_destinationId_fkey";

-- DropForeignKey
ALTER TABLE "destination_review" DROP CONSTRAINT "destination_review_userId_fkey";

-- DropForeignKey
ALTER TABLE "flight" DROP CONSTRAINT "flight_airlineId_fkey";

-- DropForeignKey
ALTER TABLE "flight" DROP CONSTRAINT "flight_airportId_fkey";

-- DropForeignKey
ALTER TABLE "flight_seat" DROP CONSTRAINT "flight_seat_flightId_fkey";

-- DropIndex
DROP INDEX "booking_passenger_fightSeatId_key";

-- DropIndex
DROP INDEX "cart_userId_key";

-- AlterTable
ALTER TABLE "airline" DROP COLUMN "countryId",
ADD COLUMN     "country_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "airport" DROP COLUMN "cityId",
DROP COLUMN "countryId",
ADD COLUMN     "city_id" INTEGER NOT NULL,
ADD COLUMN     "country_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "booking" DROP COLUMN "flightId",
DROP COLUMN "userId",
ADD COLUMN     "flight_id" INTEGER NOT NULL,
ADD COLUMN     "user_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "booking_passenger" DROP COLUMN "bookingId",
DROP COLUMN "fightSeatId",
ADD COLUMN     "booking_id" INTEGER NOT NULL,
ADD COLUMN     "fight_seat_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "cart" DROP COLUMN "flightId",
DROP COLUMN "userId",
ADD COLUMN     "flight_id" INTEGER NOT NULL,
ADD COLUMN     "user_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "city" DROP COLUMN "countryId",
ADD COLUMN     "country_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "destination" DROP COLUMN "cityId",
DROP COLUMN "countryId",
ADD COLUMN     "city_id" INTEGER NOT NULL,
ADD COLUMN     "country_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "destination_review" DROP COLUMN "destinationId",
DROP COLUMN "userId",
ADD COLUMN     "destination_id" INTEGER NOT NULL,
ADD COLUMN     "user_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "flight" DROP COLUMN "airlineId",
DROP COLUMN "airportId",
ADD COLUMN     "airline_id" INTEGER NOT NULL,
ADD COLUMN     "airport_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "flight_seat" DROP COLUMN "flightId",
ADD COLUMN     "flight_id" INTEGER NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "booking_passenger_fight_seat_id_key" ON "booking_passenger"("fight_seat_id");

-- CreateIndex
CREATE UNIQUE INDEX "cart_user_id_key" ON "cart"("user_id");

-- AddForeignKey
ALTER TABLE "city" ADD CONSTRAINT "city_country_id_fkey" FOREIGN KEY ("country_id") REFERENCES "country"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "airport" ADD CONSTRAINT "airport_city_id_fkey" FOREIGN KEY ("city_id") REFERENCES "city"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "airport" ADD CONSTRAINT "airport_country_id_fkey" FOREIGN KEY ("country_id") REFERENCES "country"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "airline" ADD CONSTRAINT "airline_country_id_fkey" FOREIGN KEY ("country_id") REFERENCES "country"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "flight" ADD CONSTRAINT "flight_airline_id_fkey" FOREIGN KEY ("airline_id") REFERENCES "airline"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "flight" ADD CONSTRAINT "flight_airport_id_fkey" FOREIGN KEY ("airport_id") REFERENCES "airport"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "flight_seat" ADD CONSTRAINT "flight_seat_flight_id_fkey" FOREIGN KEY ("flight_id") REFERENCES "flight"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "destination" ADD CONSTRAINT "destination_country_id_fkey" FOREIGN KEY ("country_id") REFERENCES "country"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "destination" ADD CONSTRAINT "destination_city_id_fkey" FOREIGN KEY ("city_id") REFERENCES "city"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "booking" ADD CONSTRAINT "booking_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "user"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "booking" ADD CONSTRAINT "booking_flight_id_fkey" FOREIGN KEY ("flight_id") REFERENCES "flight"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "booking_passenger" ADD CONSTRAINT "booking_passenger_fight_seat_id_fkey" FOREIGN KEY ("fight_seat_id") REFERENCES "flight_seat"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "booking_passenger" ADD CONSTRAINT "booking_passenger_booking_id_fkey" FOREIGN KEY ("booking_id") REFERENCES "booking"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "cart" ADD CONSTRAINT "cart_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "user"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "cart" ADD CONSTRAINT "cart_flight_id_fkey" FOREIGN KEY ("flight_id") REFERENCES "flight"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "destination_review" ADD CONSTRAINT "destination_review_destination_id_fkey" FOREIGN KEY ("destination_id") REFERENCES "destination"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "destination_review" ADD CONSTRAINT "destination_review_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "user"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
