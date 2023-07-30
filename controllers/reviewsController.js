/** @format */

const express = require("express");
const reviews = express.Router({ mergeParams: true });

const {
	getAllReviews,
	getReview,
	createReview,
	deleteReview,
	updateReview,
} = require("../queries/reviews");

const {
	checkReviewer,
	checkRating,
	checkTitle,
	checkContent,
} = require("../validations/checkReviews");

reviews.get("/", async (req, res) => {
	const { bookmarkId } = req.params;
	try {
		const allReviews = await getAllReviews(bookmarkId);
		res.json(allReviews);
	} catch (err) {
		res.status(500).json({ error: "server error" });
	}
});

reviews.get("/:id", async (req, res) => {
	const { bookmarkId, id } = req.params;
	try {
		const review = await getReview(id, bookmarkId);
		if (review) {
			res.json(review);
		} else {
			res.status(404).json({ error: "review not found" });
		}
	} catch (err) {
		res.status(500).json({ error: "server error" });
	}
});

reviews.post(
	"/",
	checkReviewer,
	checkRating,
	checkTitle,
	checkContent,
	async (req, res) => {
		const { bookmarkId } = req.params;
		try {
			const newReview = await createReview({
				...req.body,
				bookmark_id: bookmarkId,
			});
			res.status(201).json(newReview);
		} catch (err) {
			res.status(400).json({ error: err.message });
		}
	}
);

reviews.delete("/:id", async (req, res) => {
	const { bookmarkId, id } = req.params;
	try {
		const deletedReview = await deleteReview(id, bookmarkId);
		if (deletedReview) {
			res.json(deletedReview);
		} else {
			res.status(404).json({ error: "review not found" });
		}
	} catch (err) {
		res.status(500).json({ error: "server error" });
	}
});

reviews.put(
	"/:id",
	checkReviewer,
	checkRating,
	checkTitle,
	checkContent,
	async (req, res) => {
		const { bookmarkId, id } = req.params;
		try {
			const existingReview = await getReview(id, bookmarkId);
			if (!existingReview) {
				return res.status(404).json({ error: "Review not found" });
			}
			const updatedReview = await updateReview(id, { ...req.body });
			res.json(updatedReview);
		} catch (err) {
			res.status(500).json({ error: "Server error" });
		}
	}
);

module.exports = reviews;
