import { useEffect, useState } from "react";
import APIs, { endpoints } from "../../configs/APIs";

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
            {doctors === null ? <h2>null</h2> : <>{doctors.map(d => <h2 key={d.id}>{d.name}</h2>)}</>}
        </>
    )
}

export default Doctor;