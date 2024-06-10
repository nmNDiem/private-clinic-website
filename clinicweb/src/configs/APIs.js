import axios from "axios";

const BASE_URL = 'http://localhost:8080/PrivateClinicWebsite/';

export const endpoints = {
    'specialities': '/api/specialities/',
    'doctors': '/api/doctors/',
    'appointments': '/api/appointments/'
}

export default axios.create({
    baseURL: BASE_URL
});