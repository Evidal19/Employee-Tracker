const inquirer = require("inquirer");
const db = require("./db/connections");
const consoleTable = require("console.table");

const info = [];
const jobInfo = (sql) => {
  db.query(sql, (err, data) => {
    if (err) {
      res.status(500).json({ error: err.message });

      const outcome = consoleTable.getTable(data);
      console.log(outcome);
      return prompt();
    }
  });
};

db.connect(err => {
  if (err) throw err;
  console.log('Database connected.');
  app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
  });
});

const department = () =>{
    db.query('SELECT*FROM department', (err,data) =>{
      for (let i=0; i< data.length; i++){
       info= data[i].title;
      }
  
    });
  };

  inquirer
    .prompt({
      name: "action",
      type: "list",
      message: "Hello, Welcome to the database",
      choices: [
        "view all departments",
        "view all roles",
        "view all employees",
        "add department",
        "add a role",
        "add employee",
        "update employee role",
        "exit",
      ],
    })
    .then((select) => {
      let sql = "";
      if (select.index === "select department") {
        sql = "SELECT*FROM department";
        jobInfo(sql);
      }
    });







