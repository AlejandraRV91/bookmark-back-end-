/** @format */

const db = require("../db/dbConfig.js");
const getAllReviews = async (bookmark_id) => {
	try {
		const allReviews = await db.manyOrNone(
			"SELECT * FROM reviews WHERE bookmark_id=$1",
			bookmark_id
		);
		return allReviews;
	} catch (err) {
		return err;
	}
};

const getReview = async (id, bookmark_id) => {
	try {
		const review = await db.oneOrNone(
			"SELECT * FROM reviews WHERE id=$1 AND bookmark_id=$2",
			[id, bookmark_id]
		);
		return review;
	} catch (err) {
		return err;
	}
};

const createReview = async (review) => {
	try {
		const newReview = await db.one(
			"INSERT INTO reviews (reviewer, title, content, rating, bookmark_id) VALUES ($1, $2, $3, $4, $5) RETURNING *",
			[
				review.reviewer,
				review.title,
				review.content,
				review.rating,
				review.bookmark_id,
			]
		);
		return newReview;
	} catch (err) {
		return err;
	}
};

const deleteReview = async (id, bookmark_id) => {
	try {
		const deletedReview = await db.oneOrNone(
			"DELETE FROM reviews WHERE id = $1 AND bookmark_id=$2 RETURNING *",
			[id, bookmark_id]
		);
		return deletedReview;
	} catch (err) {
		return err;
	}
};

const updateReview = async (id, review) => {
	try {
		const updatedReview = await db.oneOrNone(
			"UPDATE reviews SET reviewer=$1, title=$2, content=$3, rating=$4 WHERE id=$5 RETURNING *",
			[review.reviewer, review.title, review.content, review.rating, id]
		);
		return updatedReview;
	} catch (err) {
		return err;
	}
};

module.exports = {
	getAllReviews,
	getReview,
	createReview,
	deleteReview,
	updateReview,
};
