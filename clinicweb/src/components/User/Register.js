import { Button, Form, Container, Row, Col, Card } from "react-bootstrap";

const Register = () => {
    const accountFields = [
        {
            field: "username",
            label: "Tên đăng nhập",
            type: "text",
            placeholder: "VD: thanhan123"
        },
        {
            field: "password",
            label: "Mật khẩu",
            type: "password",
            placeholder: "Mật khẩu"
        },
        {
            field: "confirm",
            label: "Xác nhận mật khẩu",
            type: "password",
            placeholder: "Xác nhận mật khẩu"
        }
    ];

    const profileFields = [
        {
            field: "avatar",
            label: "Ảnh đại diện",
            type: "file",
            placeholder: null
        },
        {
            field: "name",
            label: "Tên người dùng",
            type: "text",
            placeholder: "VD: Nguyễn Thanh An"
        },
        {
            field: "gender",
            label: "Giới tính",
            type: "select",
            placeholder: null
        },
        {
            field: "birthday",
            label: "Ngày sinh",
            type: "date",
            placeholder: null
        },
        {
            field: "phoneNumber",
            label: "Số điện thoại",
            type: "phone",
            placeholder: "VD: 0987654321"
        },
        {
            field: "email",
            label: "Email",
            type: "email",
            placeholder: "VD: thanhan@gmail.com"
        }
    ];

    return (
        <Container>
            <Row className="justify-content-md-center">
                <Col md={6} xs={12}>
                    <h2 className="my-4 text-center text-primary">ĐĂNG KÝ TÀI KHOẢN</h2>
                    <Form>
                        <Card className="mb-4 shadow border-0">
                            <Card.Header as="h5" className="bg-dark text-light text-center">Tạo tài khoản</Card.Header>
                            <Card.Body>
                                {accountFields.map(f => (
                                    <Form.Group key={f.field} className="mb-2" controlId={f.field}>
                                        <Form.Label>{f.label}</Form.Label>
                                        <Form.Control type={f.type} placeholder={f.placeholder}/>
                                    </Form.Group>
                                ))}
                            </Card.Body>
                        </Card>

                        <Card className="mb-4 shadow border-0">
                            <Card.Header as="h5" className="bg-dark text-light text-center">Thông tin tài khoản</Card.Header>
                            <Card.Body>
                                {profileFields.map(f => (
                                    <Form.Group key={f.field} className="mb-2" controlId={f.field}>
                                        <Form.Label>{f.label}</Form.Label>
                                        {f.type === "select" ? (
                                            <Form.Select>
                                                <option>Chọn giới tính</option>
                                                <option value="male">Nam</option>
                                                <option value="female">Nữ</option>
                                                <option value="other">Khác</option>
                                            </Form.Select>
                                        ) : (
                                            <Form.Control type={f.type} placeholder={f.placeholder}/>
                                        )}
                                    </Form.Group>
                                ))}
                            </Card.Body>
                        </Card>

                        <Button variant="primary" type="submit" className="mb-3 d-block mx-auto">Đăng ký</Button>
                    </Form>
                </Col>
            </Row>
        </Container>
    );
}

export default Register;
