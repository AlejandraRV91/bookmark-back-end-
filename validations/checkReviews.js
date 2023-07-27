/** @format */

const checkReviewer = (req, res, next) => {
	if (req.body.reviewer) {
		next();
	} else {
		res.status(400).json({ error: "Reviewer is required" });
	}
};

const checkRating = (req, res, next) => {
	const rating = req.body.rating;
	if (typeof rating === "number" && rating >= 0 && rating <= 5) {
		next();
	} else {
		res.status(400).json({
			error: "Rating must be a number between 0 and 5",
		});
	}
};

const checkTitle = (req, res, next) => {
	if (req.body.title) {
		next();
	} else {
		res.status(400).json({ error: "Title is required" });
	}
};

const checkContent = (req, res, next) => {
	if (req.body.content) {
		next();
	} else {
		res.status(400).json({ error: "Content is required" });
	}
};

module.exports = {
	checkReviewer,
	checkRating,
	checkTitle,
	checkContent,
};
