import { BrowserRouter, Route, Routes } from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.min.css';
import Header from "./components/Commons/Header";
import Footer from "./components/Commons/Footer";
import Home from "./components/Appointment/Home";
import { Container } from "react-bootstrap";
import Register from "./components/User/Register";
import Login from "./components/User/Login";
import Doctor from "./components/Doctor/Doctor";
import SpecialityDetails from "./components/Speciality/SpecialityDetails";
import Appointment from "./components/Appointment/Appointment";

const App = () => {
  return (
    <BrowserRouter>
      <Header />
      <Container>
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/specialities/:specialityId" element={<SpecialityDetails />} />
          <Route path="/appointments" element={<Appointment />} />
          <Route path="/doctors" element={<Doctor />} />
          <Route path="/register" element={<Register />} />
          <Route path="/login" element={<Login />} />
        </Routes>
      </Container>
      <Footer />
    </BrowserRouter>
  );
}

export default App;