const controller = {};

controller.list = (req, res) => {
    req.getConnection((err,conn) => {
        conn.query('SELECT * FROM automobiles', (err,automobiles) =>{
            if(err)
            {
                res.json(err);
            }
            res.render('automobiles',{
                data:automobiles
            })
        });
    });
};

//opccion para administrar y ver la lista de coches
controller.adminCars = (req,res) => {
    req.getConnection((err,conn) => {
        conn.query('SELECT * FROM automobiles', (err,automobiles) =>{
            if(err)
            {
                res.json(err);
            }
            //console.log(automobiles);
            res.render('admincars',{
                data:automobiles
            })
        });
    });
};

controller.addCar = (req,res) =>{
    res.render('addcar');
}

//Agregar un auto nuevo
controller.saveCar = (req,res) =>{
    const data = req.body;
    console.log(data)
    req.getConnection((err,conn) => {
        conn.query('INSERT INTO automobiles set ?',[data], (err,automoviles)=>{
            console.log(automoviles);
            res.redirect('/cars/admincars');
        });
    })
};

//eliminacion de un auto 
controller.deleteCar = (req,res) =>{
    
    const id = req.params.id;
    req.getConnection((err,conn) => {
        conn.query('DELETE FROM automobiles WHERE id = ?',[id], (err, rows) =>{
            res.redirect('/cars/adminCars');
        });
    })
};

module.exports = controller