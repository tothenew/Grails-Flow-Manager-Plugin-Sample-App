package com.ig.sample

import org.grails.plugins.flowManager.FlowDecider

class AppointmentFlowDecider implements FlowDecider {

    List getSequenceAsPerFlowType(def flowType) {
        List sequence
        switch (flowType) {
            case 'adviserBookingAppointment':
                sequence = ['selectAppointmentType', 'selectStudent', 'selectLocation', 'summary', 'success']
                break;

            case 'adviserEditingAppointment':
                sequence = ['selectAppointmentType', 'selectLocation', 'summary', 'success']
                break;

            case 'studentBookingAppointment':
                sequence = ['selectAppointmentType', 'selectAdviser', 'summary', 'success']
                break;

            case 'studentEditingAppointment':
                sequence = ['selectAppointmentType', 'summary', 'success']
                break;

            case 'adminBookingAppointment':
                sequence = ['selectAppointmentType', 'selectStudent', 'selectAdviser', 'selectLocation', 'summary', 'success']
                break;

            case 'adminEditingAppointment':
                sequence = ['selectAppointmentType', 'selectLocation', 'summary', 'success']
                break;
        }
        return sequence
    }
}

