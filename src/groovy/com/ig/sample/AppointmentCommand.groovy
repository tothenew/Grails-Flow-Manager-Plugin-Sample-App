package com.ig.sample


class AppointmentCommand {
    Long id
    String appointmentType
    String student
    String adviser
    String location

    Appointment getAppointmentObject() {
        Appointment appointment = id ? Appointment.get(id) : new Appointment()
        appointment.adviser = adviser
        appointment.student = student
        appointment.appointmentType = appointmentType
        appointment.location = location
        appointment
    }

    AppointmentCommand(Appointment appointment) {
        id = appointment?.id
        adviser = appointment.adviser
        student = appointment.student
        appointmentType = appointment.appointmentType
        location = appointment.location
    }

    AppointmentCommand(){}
}
