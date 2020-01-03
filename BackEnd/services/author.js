const query = require('./querydb')

class AuthorService {
  constructor(req, res) {
    this.req = req
    this.res = res
  }

  async getAll() {
    try {
      const data = await query("select * from Author")

      return this.res.json({
        msg: 'ok',
        data
      })
    } catch(err) {
      console.log(err)
      return this.res.status(503).json({
        msg: err
      })
    }
  }
}

module.exports = AuthorService;
