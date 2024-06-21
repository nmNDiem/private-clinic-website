package com.pthtw.pojo;

import com.pthtw.pojo.User;
import javax.annotation.processing.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2024-06-21T12:53:18", comments="EclipseLink-2.7.12.v20230209-rNA")
@StaticMetamodel(Patient.class)
public class Patient_ { 

    public static volatile SingularAttribute<Patient, String> birthday;
    public static volatile SingularAttribute<Patient, String> phoneNumber;
    public static volatile SingularAttribute<Patient, String> gender;
    public static volatile SingularAttribute<Patient, String> name;
    public static volatile SingularAttribute<Patient, Integer> id;
    public static volatile SingularAttribute<Patient, User> userId;
    public static volatile SingularAttribute<Patient, String> email;

}