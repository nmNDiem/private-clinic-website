import { Button, Container, Form, Nav, NavDropdown, Navbar } from "react-bootstrap";

const Header = () => {
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
                            <NavDropdown.Item href="#action3">Action</NavDropdown.Item>
                            <NavDropdown.Item href="#action4">
                                Another action
                            </NavDropdown.Item>
                            <NavDropdown.Divider />
                            <NavDropdown.Item href="#action5">
                                Something else here
                            </NavDropdown.Item>
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