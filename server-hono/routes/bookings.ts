import { PrismaClient } from "@prisma/client";
import { Hono } from "hono";

const app = new Hono();
const prisma = new PrismaClient();

app.get("/", (c) => {
	return c.json({});
});

app.post("/", (c) => {
	return c.json({});
});

app.put("/:id", (c) => {
	return c.json({});
});

app.delete("/:id", (c) => {
	return c.json({});
});

export default app;
