import { BrowserRouter, Route, Routes } from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.min.css';
import Header from "./components/Commons/Header";
import Footer from "./components/Commons/Footer";
import Home from "./components/Appointment/Home";
import { Container } from "react-bootstrap";

const App = () => {
  return (
    <BrowserRouter>
      <Header />
      <Container>
        <Routes>
          <Route path="/" element={<Home />} />
        </Routes>
      </Container>
      <Footer />
    </BrowserRouter>
  );
}

export default App;