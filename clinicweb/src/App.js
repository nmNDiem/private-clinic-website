import { BrowserRouter, Route, Routes } from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.min.css';
import Header from "./components/Commons/Header";
import Footer from "./components/Commons/Footer";
import Home from "./components/Appointment/Home";

const App = () => {
  return (
      <BrowserRouter>
        <Header />

        <Routes>
          <Route path="/" element={<Home/>} />
        </Routes>

        <Footer />
      </BrowserRouter>
  );
}

export default App;