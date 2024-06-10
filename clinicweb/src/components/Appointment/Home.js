import { useState } from "react";
import { Button, Form } from "react-bootstrap";

const Home = () => {
    const [selectedDate, setSelectedDate] = useState(null);

    return (
        <Form className="w-50 my-3">
            <Form.Group className="mb-3">
                <Form.Label>Chọn chuyên khoa</Form.Label>
                <Form.Select>
                    <option>Chọn chuyên khoa</option>
                    <option value="1">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                </Form.Select>
            </Form.Group>

            <Form.Group className="mb-3">
                <Form.Label>Chọn bác sĩ</Form.Label>
                <Form.Select>
                    <option>Chọn bác sĩ</option>
                    <option value="1">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                </Form.Select>
            </Form.Group>

            <Form.Group className="mb-3" controlId="formGridDate">
                <Form.Label>Chọn ngày khám</Form.Label>
                <Form.Control
                    type="date"
                    value={selectedDate}
                />
            </Form.Group>

            <Form.Group className="mb-3">
                <Form.Label>Chọn ca khám</Form.Label>
                <Form.Select>
                    <option>Chọn ca khám</option>
                    <option value="1">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                </Form.Select>
            </Form.Group>

            <Form.Group className="mb-3" controlId="formGridReason">
                <Form.Label>Lý do khám</Form.Label>
                <Form.Control as="textarea" rows={3} placeholder="Tôi cảm thấy..." />
            </Form.Group>

            <Button variant="primary" type="submit">
                Đặt lịch
            </Button>
        </Form>
    );
}

export default Home;