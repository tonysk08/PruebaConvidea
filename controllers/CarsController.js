const controller = {};

controller.list = (req, res) => {
    req.getConnection((err,conn) => {
        conn.query('SELECT * FROM automobiles', (err,automobiles) =>{
            if(err)
            {
                res.json(err);
            }
            console.log(automobiles)
            res.render('automobiles',{
                data:automobiles
            })
        });
    });
};

module.exports = controller