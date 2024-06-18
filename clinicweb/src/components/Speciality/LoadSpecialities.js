import APIs, { endpoints } from "../../configs/APIs";

const loadSpecs = async () => {
    try {
        let res = await APIs.get(endpoints['specialities']);
        
    } catch (ex) {
        console.error(ex);
    }
}