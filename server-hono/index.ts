import { PrismaClient } from "@prisma/client";
import { Hono } from "hono";

const app = new Hono();
const prisma = new PrismaClient();

prisma
	.$connect()
	.then(() => {
		console.log("Connected!");
	})
	.catch((err) => console.log(err));

app.get("/", async (c) => {
	try {
		const flights = await prisma.flight.findMany();
		return c.json(flights);
	} catch (err) {
		console.log(err);
	}
});

export default {
	port: 3000,
	fetch: app.fetch,
};
