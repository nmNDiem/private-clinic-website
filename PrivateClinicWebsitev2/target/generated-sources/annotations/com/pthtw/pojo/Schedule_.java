package com.pthtw.pojo;

import com.pthtw.pojo.User;
import java.util.Date;
import javax.annotation.processing.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2024-06-21T12:53:18", comments="EclipseLink-2.7.12.v20230209-rNA")
@StaticMetamodel(Schedule.class)
public class Schedule_ { 

    public static volatile SingularAttribute<Schedule, String> note;
    public static volatile SingularAttribute<Schedule, Date> workDate;
    public static volatile SingularAttribute<Schedule, String> shift;
    public static volatile SingularAttribute<Schedule, Integer> id;
    public static volatile SingularAttribute<Schedule, User> userId;

}