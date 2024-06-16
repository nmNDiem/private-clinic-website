import { useEffect, useState } from "react";
import { Button, Container, Form, Nav, NavDropdown, Navbar, Spinner } from "react-bootstrap";
import APIs, { endpoints } from "../../configs/APIs";

const Header = () => {
    const [specialities, setSpecialities] = useState(null);

    const loadSpecs = async () => {
        try {
            let res = await APIs.get(endpoints['specialities']);
            setSpecialities(res.data);
        } catch (ex) {
            console.error(ex);
        }
    }

    useEffect(() => {
        loadSpecs();
    }, [])

    return (
        <Navbar expand="lg" className="bg-body-tertiary">
            <Container fluid>
                <Navbar.Brand href="#">Phòng mạch tư</Navbar.Brand>
                <Navbar.Toggle aria-controls="navbarScroll" />
                <Navbar.Collapse id="navbarScroll">
                    <Nav
                        className="me-auto my-2 my-lg-0"
                        style={{ maxHeight: '100px' }}
                        navbarScroll
                    >
                        <Nav.Link href="#action1">Trang chủ</Nav.Link>

                        <NavDropdown title="Chuyên khoa" id="navbarScrollingDropdown">
                            {specialities === null ? <Spinner animation="border" variant="secondary" /> : <>
                                {specialities.map(s => <NavDropdown.Item key={s.id} href="#">{s.name}</NavDropdown.Item>)}
                            </>}
                        </NavDropdown>

                        <Nav.Link href="#">
                            Đội ngũ bác sĩ
                        </Nav.Link>

                        <Nav.Link href="#">
                            &#128197; Lịch khám
                        </Nav.Link>
                    </Nav>

                    <Form className="d-flex me-auto">
                        <Form.Control
                            type="search"
                            placeholder="Tìm kiếm"
                            className="me-2"
                            aria-label="Search"
                        />
                        <Button variant="info">Tìm</Button>
                    </Form>

                    <Button className="me-2" variant="outline-success">Đăng ký</Button>
                    <Button className="me-2" variant="outline-primary">Đăng nhập</Button>
                </Navbar.Collapse>
            </Container>
        </Navbar>
    );
}

export default Header;