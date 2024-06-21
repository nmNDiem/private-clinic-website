import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import APIs, { endpoints } from "../../configs/APIs";

const SpecialityDetails = () => {
    const [speciality, setSpeciality] = useState(null);
    const { specialityId } = useParams();

    const loadSpec = async () => {
        try {
            let res = await APIs.get(endpoints['speciality-details'](specialityId));
            setSpeciality(res.data);
        } catch (ex) {
            console.error(ex);
        }
    }

    useEffect(() => {
        loadSpec();
    }, [specialityId]);

    return (
        <>
            <h1>CHI TIẾT CHUYÊN KHOA</h1>
            {speciality === null ? <div>Null rồi</div> : <h3>{speciality.name}</h3>}
        </>
    )
}

export default SpecialityDetails;