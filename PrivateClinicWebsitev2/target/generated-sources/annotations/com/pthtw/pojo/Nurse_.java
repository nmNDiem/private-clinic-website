package com.pthtw.pojo;

import com.pthtw.pojo.User;
import javax.annotation.processing.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2024-06-21T12:53:18", comments="EclipseLink-2.7.12.v20230209-rNA")
@StaticMetamodel(Nurse.class)
public class Nurse_ { 

    public static volatile SingularAttribute<Nurse, String> birthday;
    public static volatile SingularAttribute<Nurse, String> phoneNumber;
    public static volatile SingularAttribute<Nurse, String> gender;
    public static volatile SingularAttribute<Nurse, String> name;
    public static volatile SingularAttribute<Nurse, Integer> id;
    public static volatile SingularAttribute<Nurse, User> userId;
    public static volatile SingularAttribute<Nurse, String> email;

}