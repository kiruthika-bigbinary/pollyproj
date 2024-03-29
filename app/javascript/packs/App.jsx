import React, { useEffect } from "react";
import { Route, Switch, BrowserRouter as Router } from "react-router-dom";
import initializeLogger from "../src/common/logger";
const App = () => {
  useEffect(() => {
    /*eslint no-undef: "off"*/
    initializeLogger();
    logger.info("Log from js-logger");
  }, []);

  return (
    <Router>
      <Switch>
        <Route
          exact
          path="/"
          render={() => <div className="text-6xl bg-blue-200">Home</div>}
        />
        <Route exact path="/about" render={() => <div>About</div>} />
      </Switch>
    </Router>
  );
};

export default App;