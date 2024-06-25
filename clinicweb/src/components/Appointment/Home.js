import { useEffect, useState } from "react";
import { Button, Card, Col, Form, Row, Spinner } from "react-bootstrap";
import APIs, { endpoints } from "../../configs/APIs";

const Home = () => {
    const [selectedDate, setSelectedDate] = useState(null);
    const [specialities, setSpecialities] = useState(null);
    const [doctors, setDoctors] = useState(null);

    const loadSpecs = async () => {
        try {
            let res = await APIs.get(endpoints['specialities']);
            setSpecialities(res.data);
        } catch (ex) {
            console.error(ex);
        }
    }

    const loadDoctors = async () => {
        try {
            let res = await APIs.get(endpoints['doctors']);
            setDoctors(res.data);
        } catch (ex) {
            console.error(ex);
        }
    }

    useEffect(() => {
        loadSpecs();
    }, [])

    useEffect(() => {
        loadDoctors();
    }, [])

    return (
        <Row>
            <Col>
                <Row>
                    {specialities === null ? <Spinner animation="border" variant="secondary" /> : <>
                        {specialities.map(s => <Col key={s.id} md={3} xs={12}>
                            <Card className="my-3">
                                <Card.Img variant="top" src={s.image} />
                                <Card.Body>
                                    <Card.Title>Chuyên khoa {s.name}</Card.Title>
                                    <Button variant="primary" className="d-block mx-auto">Xem chi tiết</Button>
                                </Card.Body>
                            </Card>
                        </Col>
                        )}
                    </>}
                </Row>
            </Col>
            <Col md={4} xs={12}>
                <Form className="my-3">
                    <Card>
                        <Card.Header as="h5" className="bg-primary text-light text-center">Đặt lịch khám</Card.Header>
                        <Card.Body className="bg-info shadow border-0">
                            <Form.Group className="mb-2">
                                <Form.Label>Chọn chuyên khoa</Form.Label>
                                <Form.Select>
                                    <option>Chọn chuyên khoa</option>
                                    {specialities === null ? <Spinner animation="border" variant="secondary" /> : <>
                                        {specialities.map(s => <option key={s.id} value={s.id}>{s.name}</option>)}
                                    </>}
                                </Form.Select>
                            </Form.Group>

                            <Form.Group className="mb-2">
                                <Form.Label>Chọn bác sĩ</Form.Label>
                                <Form.Select>
                                    <option>Chọn bác sĩ</option>
                                    {doctors === null ? <Spinner animation="border" variant="secondary" /> : <>
                                        {doctors.map(d => <option key={d.id} value={d.id}>{d.name}</option>)}
                                    </>}
                                </Form.Select>
                            </Form.Group>

                            <Form.Group className="mb-2" controlId="formGridDate">
                                <Form.Label>Chọn ngày khám</Form.Label>
                                <Form.Control
                                    type="date"
                                    value={selectedDate}
                                />
                            </Form.Group>

                            <Form.Group className="mb-2">
                                <Form.Label>Chọn ca khám</Form.Label>
                                <Form.Select>
                                    <option>Chọn ca khám</option>
                                    <option value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </Form.Select>
                            </Form.Group>

                            <Form.Group className="mb-2" controlId="formGridReason">
                                <Form.Label>Lý do khám</Form.Label>
                                <Form.Control as="textarea" rows={3} placeholder="Tôi cảm thấy..." />
                            </Form.Group>

                            <Button variant="primary" type="submit" className="d-block mx-auto">
                                Đặt lịch
                            </Button>
                        </Card.Body>
                    </Card>
                </Form>
            </Col>
        </Row>
    );
}

export default Home;