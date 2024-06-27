import { useEffect, useState } from "react";
import APIs, { endpoints } from "../../configs/APIs";
import { Button, Card, Col, Row } from "react-bootstrap";
import MySpinner from "../Commons/MySpinner";

const Doctor = () => {
    const [doctors, setDoctors] = useState(null);

    const loadDoctors = async () => {
        try {
            let res = await APIs.get(endpoints['doctors']);
            setDoctors(res.data);
        } catch (ex) {
            console.error(ex);
        }
    }

    useEffect(() => {
        loadDoctors();
    }, [])
    return (
        <>
            <h1 className="my-3 text-primary text-center">ĐỘI NGŨ BÁC SĨ</h1>
            {doctors === null ? <MySpinner /> :
                <Row>
                    {doctors.map(d =>
                    <Col>
                        <Card className="mb-3">
                            <Card.Img variant="top" src={d.avatar} />
                            <Card.Body className="text-center">
                                <Card.Title>Bác sĩ {d.name}</Card.Title>
                                <Card.Text>
                                    Chuyên khoa {d.specialityId.name}
                                </Card.Text>
                                <Button variant="primary">Đặt lịch khám</Button>
                            </Card.Body>
                        </Card>
                        </Col>
                    )}
                </Row>
            }
        </>
    )
}

export default Doctor;