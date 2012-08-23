package es.osoco.android.gcm

class DeviceController {

    def subscribe = {
		println "${new Date()}: $params"
		if (params.deviceToken && params.projectId && !Device.findByToken(params.deviceToken)) {
			new Device(token:params.deviceToken, projectId:params.projectId).save(failOnError:true)
		}
		render ""
	}
}
