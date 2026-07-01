const express = require("express");
const router = express.Router();

const db = require("../config/db");


// GET semua review
router.get("/", async (req, res) => {

    try {

        const result = await db.query(
            "SELECT * FROM reviews ORDER BY id DESC"
        );

        res.json(result.rows);

    } catch (err) {

        res.status(500).json(err);

    }

});


// POST review
router.post("/", async (req, res) => {

    const { title, rating, review } = req.body;

    try {

        await db.query(

            `INSERT INTO reviews(title,rating,review)
             VALUES($1,$2,$3)`,

            [title, rating, review]

        );

        res.json({
            message: "Review berhasil ditambahkan"
        });

    } catch (err) {

        res.status(500).json(err);

    }

});


// DELETE review
router.delete("/:id", async (req, res) => {

    try {

        await db.query(

            "DELETE FROM reviews WHERE id=$1",

            [req.params.id]

        );

        res.json({
            message: "Review berhasil dihapus"
        });

    } catch (err) {

        res.status(500).json(err);

    }

});

module.exports = router;