import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import APIs, { endpoints } from "../../configs/APIs";
import { Card, Container, Row, Col, ListGroup, Button, Modal, Form, Spinner } from "react-bootstrap";
import BookingForm from "../Appointment/BookingForm";
import MySpinner from "../Commons/MySpinner";

const SpecialityDetails = () => {
    const [speciality, setSpeciality] = useState(null);
    const [doctors, setDoctors] = useState([]);
    const [showBookingModal, setShowBookingModal] = useState(false);
    const [selectedDoctor, setSelectedDoctor] = useState(null);
    const { specialityId } = useParams();

    const loadSpec = async () => {
        try {
            let res = await APIs.get(endpoints['speciality-details'](specialityId));
            setSpeciality(res.data);
        } catch (ex) {
            console.error(ex);
        }
    };

    const loadDoctors = async () => {
        try {
            let res = await APIs.get(endpoints['doctors-in-speciality'](specialityId));
            setDoctors(res.data);
        } catch (ex) {
            console.error(ex);
        }
    };

    useEffect(() => {
        loadSpec();
        loadDoctors();
    }, [specialityId]);

    return (
        <Container>
            {speciality === null ? <MySpinner /> :
                <>
                    <h1 className="my-4 text-center">CHUYÊN KHOA {speciality.name.toUpperCase()}</h1>
                    <Card className="mb-4">
                        <Row noGutters>
                            <Col md={4}>
                                <Card.Img variant="top" src={speciality.image} alt={speciality.name} />
                            </Col>
                            <Col md={8}>
                                <Card.Body>
                                    <Card.Title>Giới thiệu</Card.Title>
                                    <Card.Text>{speciality.description}</Card.Text>
                                </Card.Body>
                            </Col>
                        </Row>
                    </Card>
                </>
            }
            {doctors.length === 0 ? <></> :
                <>
                    <h2 className="my-4">Gồm các bác sĩ</h2>
                    <ListGroup>
                        {doctors.map(doctor => (
                            <ListGroup.Item key={doctor.id}>
                                <Row className="align-items-center">
                                    <Col md={8}>
                                        <h5>{doctor.name}</h5>
                                        <p>{doctor.speciality}</p>
                                    </Col>
                                    <Col md={4} className="text-right">
                                        <Button
                                            variant="primary"
                                            onClick={() => {
                                                setSelectedDoctor(doctor.id);
                                                setShowBookingModal(true);
                                            }}
                                        >
                                            Đặt lịch khám
                                        </Button>
                                    </Col>
                                </Row>
                            </ListGroup.Item>
                        ))}
                    </ListGroup>
                </>
            }

            <Modal show={showBookingModal} onHide={() => setShowBookingModal(false)}>
                <Modal.Header closeButton>
                </Modal.Header>
                <Modal.Body>
                    <BookingForm />
                </Modal.Body>
            </Modal>
        </Container>
    );
};

export default SpecialityDetails;
