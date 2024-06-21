import axios from "axios";

const BASE_URL = 'http://localhost:8080/PrivateClinicWebsite/';

export const endpoints = {
    'specialities': '/api/specialities/',
    'speciality-details': (specialityId) => `/api/specialities/${specialityId}/`,
    'doctors': '/api/doctors/',
    'appointments': '/api/appointments/',
    'register': '/api/users/',
}

export default axios.create({
    baseURL: BASE_URL
});