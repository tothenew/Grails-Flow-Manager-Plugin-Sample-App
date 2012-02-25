package sampleapp

import com.ig.sample.AppointmentCommand
import org.grails.plugins.flowManager.FlowInfo
import com.ig.sample.AppointmentFlowDecider

class AppointmentController {

    def flowManagerService

    AppointmentCommand getAppointmentCo() {
        if (!flowInfo.flowData) {
            flowInfo.flowData = new AppointmentCommand()
        }
        flowInfo.flowData
    }

    FlowInfo getFlowInfo() {
        flowManagerService.flowInfo
    }

    def index = {
        redirect(action: 'init')
    }

    def init ={
        flowManagerService.setFlowType('adminBookingAppointment')
        flowManagerService.flowDecider = new AppointmentFlowDecider()
        flowInfo.flowData = new AppointmentCommand()
        flowInfo.currentSF = null
    }

    def selectAppointmentType = {
        [co: appointmentCo]
    }
    def saveSelectAppointmentType = {
        appointmentCo.appointmentType = params.appointmentType

    }

    def selectStudent = {
        [co: appointmentCo]
    }
    def saveSelectStudent = {
        appointmentCo.student = params.student

    }

    def selectAdviser = {
        [co: appointmentCo]
    }
    def saveSelectAdviser = {
        appointmentCo.adviser = params.adviser

    }

    def selectLocation = {
        [co: appointmentCo]
    }
    def saveSelectLocation = {
        appointmentCo.location = params.location

    }

    def summary = {
        [co: appointmentCo]
    }
    def saveSummary = {
        if (!appointmentCo.appointmentObject.save()) {
            flowInfo.errorMessage = "Failed to save the Appointment"
        }
        flowInfo.successMessage = "Appointment saved successfully"
    }

    def success = {

    }

    def failure = {

    }

    def cancel = {

    }
}
