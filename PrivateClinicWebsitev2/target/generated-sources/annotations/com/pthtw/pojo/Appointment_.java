package com.pthtw.pojo;

import com.pthtw.pojo.Doctor;
import com.pthtw.pojo.Prescription;
import com.pthtw.pojo.Receipt;
import com.pthtw.pojo.User;
import java.util.Date;
import javax.annotation.processing.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2024-06-21T12:53:18", comments="EclipseLink-2.7.12.v20230209-rNA")
@StaticMetamodel(Appointment.class)
public class Appointment_ { 

    public static volatile SingularAttribute<Appointment, String> reason;
    public static volatile SetAttribute<Appointment, Receipt> receiptSet;
    public static volatile SetAttribute<Appointment, Prescription> prescriptionSet;
    public static volatile SingularAttribute<Appointment, Date> appointmentTime;
    public static volatile SingularAttribute<Appointment, Doctor> doctorId;
    public static volatile SingularAttribute<Appointment, User> patientId;
    public static volatile SingularAttribute<Appointment, Short> emailSent;
    public static volatile SingularAttribute<Appointment, Date> confirmTime;
    public static volatile SingularAttribute<Appointment, Integer> id;
    public static volatile SingularAttribute<Appointment, String> status;

}