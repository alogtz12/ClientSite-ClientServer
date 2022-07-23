var express = require('express');
var router = express.Router();

const comment = require('../services/comments');

/* GET languages listing. */
router.get('/', async function(req, res, next) {
    try{
        res.json(await comment.getComment(req.query.page));
    }catch(err){
        console.error('Error' + err.message);
        next(err);
    }
});

router.get('/permissions', function(req, res, next) {
    res.render("permissions");
  });

module.exports = router;