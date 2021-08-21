var middlewareObj = {};

middlewareObj.isLoggedIn = (req,res,next)=>{
    if(req.session.authType){
        return next();
    }
    res.redirect('/login')
}

module.exports = middlewareObj;