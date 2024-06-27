import { useState } from "react";
import { Button, Card, Col, Form, Row } from "react-bootstrap";
import { useNavigate } from "react-router-dom";
import APIs, { endpoints } from "../../configs/APIs";
import cookie from "react-cookies"
import MySpinner from "../Commons/MySpinner";

const Login = () => {
    const fields = [
        {
            field: "username",
            label: "Tên đăng nhập",
            type: "text"
        },
        {
            field: "password",
            label: "Mật khẩu",
            type: "password"
        }
    ];

    const [user, setUser] = useState({});
    const nav = useNavigate();
    const [loading, setLoading] = useState(false);

    const change = (e, field) => {
        setUser(current => {
            return { ...current, [field]: e.target.value }
        })
    }

    const login = async (e) => {
        e.preventDefault();

        setLoading(true);

        try {
            let res = await APIs.post(endpoints['login'], { ...user });
            console.info(res.data);
            cookie.save("token", res.data);
            nav('/');
        } catch (ex) {
            console.error(ex);
            alert("Tên đăng nhập hoặc mật khẩu không đúng!");
        } finally {
            setLoading(false);
        }
    }

    return (
        <>
            <Row className="justify-content-md-center mt-4">
                <Col md={5} xs={12}>
                    <Form onSubmit={login}>
                        <Card className="mb-4 shadow border-0">
                            <Card.Header as="h5" className="bg-dark text-light text-center">ĐĂNG NHẬP</Card.Header>
                            <Card.Body>
                                {fields.map(f => (
                                    <Form.Group key={f.field} className="mb-2" controlId={f.field}>
                                        <Form.Label>{f.label}</Form.Label>
                                        <Form.Control type={f.type} placeholder={f.label} />
                                    </Form.Group>
                                ))}
                                <Button variant="primary" type="submit" className="mt-3 d-block mx-auto">
                                    {loading ? <MySpinner /> : "Đăng nhập"}
                                </Button>
                            </Card.Body>
                        </Card>
                    </Form>
                </Col>
            </Row>
        </>
    )
}

export default Login;